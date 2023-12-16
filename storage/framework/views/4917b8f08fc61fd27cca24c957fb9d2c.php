<?php $__env->startSection('pageTitle',$pageTitle); ?>
<?php $__env->startSection('innerTitle',$pageTitle); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('student.dashboard')=>__lang('dashboard'),
            '#'=>$pageTitle
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row">
        <?php $__currentLoopData = $paginator; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php  if($row->type=='c'): ?>
            <?php  $type='course';  ?>
            <?php  else: ?>
            <?php  $type='session';  ?>
            <?php  endif;  ?>
            <?php
                $course = \App\Course::find($row->course_id);
            ?>

            <?php
             if(date('d-m-Y') == date('d-m-Y', strtotime($row->start_date)))
             {
                $url  =  route('student.'.$type.'-details',['id'=>$row->course_id,'slug'=>safeUrl($row->name)]);
                $urlClass =  route('student.'.$type.'-details',['id'=>$row->id,'slug'=>safeUrl($row->name)]);
             }
             else {
                $url = 'javaScript::void(0)';
                $urlClass = 'javaScript::void(0)';
             }
            ?>
            <div class="col-12 col-md-4 col-lg-4">
                <article class="article article-style-c">
                    <div class="article-header">
                        <a href=<?php echo e($url); ?>>
                        <?php if(!empty($row->picture)): ?>
                            <div class="article-image" data-background="<?php echo e(resizeImage($row->picture,671,480,basePath())); ?>">
                                <img src="<?php echo e(resizeImage($row->picture,671,480,basePath())); ?>">
                               
                            </div>
                        <?php else: ?>
                            <div class="article-image" data-background="<?php echo e(asset('img/course.png')); ?>" >
                                <img src="<?php echo e(asset('img/course.png')); ?>">
                            </div>
                        <?php endif; ?>
                        </a>
                    </div>
                    <div class="article-details">
                        <div class="article-category"><a href=<?php echo e($url); ?>><?php echo e(courseType($row->type)); ?>

                            </a> <div class="bullet"></div>
                            <a href="<?php echo e($urlClass); ?>"><?php echo e($course->lessons()->count()); ?> <?php echo e(__lang('classes')); ?></a>
                        </div>
                        <div class="article-title">
                            <h2><a href=<?php echo e($url); ?>><?php echo e($row->name); ?></a></h2>
                        </div>
                        <div class="article-details"><?php echo e(limitLength($course->short_description,300)); ?></div>

                        <div class="row pl-2">
                            <?php $__currentLoopData = $course->admins()->limit(4)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $admin): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                <div class="article-user col-md-6">
                                    <img alt="image" src="<?php echo e(profilePictureUrl($admin->user->picture)); ?>">
                                    <div class="article-user-details">
                                        <div class="user-detail-name">
                                            <a href="#" data-toggle="modal" data-target="#adminModal-<?php echo e($admin->id); ?>"><?php echo e(limitLength(adminName($admin->id),20)); ?></a>
                                        </div>
                                        <div class="text-job"><?php echo e($admin->user->role->name); ?></div>
                                    </div>
                                </div>

                                <?php $__env->startSection('footer'); ?>
                                    <?php echo \Illuminate\View\Factory::parentPlaceholder('footer'); ?>
                                            <div class="modal fade" tabindex="-1" role="dialog" id="adminModal-<?php echo e($admin->id); ?>">
                                                      <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                          <div class="modal-header">
                                                            <h5 class="modal-title"><?php echo e($admin->user->name); ?> <?php echo e($admin->user->last_name); ?></h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                              <span aria-hidden="true">&times;</span>
                                                            </button>
                                                          </div>
                                                          <div class="modal-body">
                                                              <div class="row">
                                                                  <div class="col-md-3">
                                                                      <figure class="avatar mr-2 avatar-xl text-center">
                                                                          <img src="<?php echo e(profilePictureUrl($admin->user->picture)); ?>"  >
                                                                      </figure>
                                                                  </div>
                                                                  <div class="col-md-p"><p><?php echo clean($admin->about); ?></p></div>
                                                              </div>

                                                          </div>
                                                          <div class="modal-footer bg-whitesmoke br">
                                                            <button type="button" class="btn btn-primary" data-dismiss="modal"><?php echo e(__lang('close')); ?></button>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                <?php $__env->stopSection(); ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>



                        <div class="article-footer">

                            <div class="row">
                                <div class="col-md-12">
                                <?php
                                    $date1 = date_create($row->start_date); 
                                    $date2 = date_create(date('Y-m-d'));
                                    $startDate = date_create($row->start_date);
                                    $endDate = date_create($row->end_date);
                                    $startdiff = date_diff($date2, $startDate);
                                    $enddiff = date_diff($date2, $endDate);
                                    $currentDiff = date_diff($startDate, $date2);
                                    $currentEndDiff = date_diff($date2, $endDate);
                                    $diffDays = $enddiff->format("%R%a");
                                    $currentDiff  = $currentDiff ->format("%R%a");
                                    $startDays = $startdiff->format("%R%a");
                                    $currentEndDiff = $currentEndDiff->format("%R%a");
                                 ?>
                                 <?php if($diffDays >= 0 && $currentEndDiff >= 0 && $currentDiff >=0): ?>
                                     <a class="btn btn-primary btn-block" href="<?php echo e(route('student.'.$type.'-details',['id'=>$row->course_id,'slug'=>safeUrl($row->name)])); ?>"><i class="fa fa-info-circle"></i> <?php echo e(__lang('start course')); ?></a>
                                    <?php endif; ?>
                                    <?php if($date2 < $date1): ?>
                                        <span class="text-info">This Course Link Will Open On <?php echo e(date('d-m-Y', strtotime($row->start_date))); ?></span>
                                        <a class="btn btn-primary btn-block disabled" href="<?php echo e(route('student.'.$type.'-details',['id'=>$row->course_id,'slug'=>safeUrl($row->name)])); ?>"><i class="fa fa-info-circle"></i> <?php echo e(__('Closed')); ?></a>
                                    <?php endif; ?>
                                    <?php if($diffDays < 0): ?>
                                        <span class="text-danger">This Course link Has Been Expired !</span>
                                        <a class="btn btn-danger btn-block disabled" href="<?php echo e(route('student.'.$type.'-details',['id'=>$row->course_id,'slug'=>safeUrl($row->name)])); ?>"><i class="fa fa-info-circle"></i> <?php echo e(__('Closed')); ?></a>
                                    <?php endif; ?>
                                </div>
                            </div>

                        </div>
                    </div>

                </article>
            </div>


        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    </div>
    <div class="justify-content-center">
        <?php
            // add at the end of the file after the table
                echo paginationControl(
                // the paginator object
                    $paginator,
                    // the scrolling style
                    'sliding',
                    // the partial to use to render the control
                    null,
                    // the route to link to when a user clicks a control link
                    route('student.student.mysessions')
                );

        ?>
    </div>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('header'); ?>
    <style>
        .pagination {
            display: flex;
            justify-content: center;
        }

        .pagination li {
            display: block;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.student', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp\www\lms\Resources\views/student/student/mysessions.blade.php ENDPATH**/ ?>
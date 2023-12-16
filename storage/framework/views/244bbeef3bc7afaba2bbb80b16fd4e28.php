<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('admin.dashboard')=>__('default.dashboard'),
            '#'=>__lang('courses-sessions')
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('search-form'); ?>
    <form class="form-inline mr-auto" method="get" action="<?php echo e(route('admin.student.sessions')); ?>">
        <ul class="navbar-nav mr-3">
            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
        </ul>
        <div class="search-element">
            <input value="<?php echo e(request()->get('filter')); ?>"   name="filter" class="form-control" type="search" placeholder="<?php echo e(__lang('search')); ?>" aria-label="<?php echo e(__lang('search')); ?>" data-width="250">
            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
        </div>
    </form>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <section class="section">
        
        
        <br> <br>
        <div class="collapse" id="collapseFilter">
            <div class="card card-body">
                <form id="filterform"   role="form"  method="get" action="<?php echo e(route('admin.student.sessions')); ?>">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="sr-only" for="filter"><?php echo e(__lang('filter')); ?></label>
                                <?php echo e(formElement($text)); ?>

                            </div>
                        </div>
                        
                        
                        
                    </div>
                    <div class="row">
                        
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> <?php echo e(__lang('filter')); ?></button>
                            <button type="button" onclick="$('#filterform input, #filterform select').val(''); $('#filterform').submit();" class="btn btn-success"><i class="fa fa-redo"></i> <?php echo e(__lang('clear')); ?></button>

                        </div>

                    </div>
                </form>
            </div>
        </div>
    <div class="row">
        <?php $__currentLoopData = $paginator; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
            $course = \App\Course::find($row->id);
             ?>
        <div class="col-12 col-md-4 col-lg-4">
            <article class="article article-style-c">
                <div class="article-header">
                    <?php if(!empty($row->picture)): ?>
                   
                    
                        
                            <div class="article-image" data-background="<?php echo e(asset('img/course.png')); ?>" >
                    </div>
                    <?php else: ?>
                        <div class="article-image" data-background="<?php echo e(asset('img/course.png')); ?>" >
                        </div>
                    <?php endif; ?>

                </div>
                <div class="article-details">
                    <div class="article-category"><a href="#"><?php echo e(courseType($row->type)); ?>

                        </a> <div class="bullet"></div> <a href="#" onclick="openModal('<?php echo e(__lang('students-for')); ?> <?php echo e($row->name); ?>','<?php echo e(route('admin.student.sessionenrollees',['id'=>$row->id])); ?>')"><?php echo e($studentSessionTable->getTotalForSession($row->id)); ?> <?php echo e(__('Trainee')); ?></a></div>
                    <div class="article-title">
                       <h4 class="text-primary"><?php echo e($row->name); ?></h4>
                    </div>
                    <?php if(\App\Admin::find($row->admin_id)): ?>
                    <div class="article-user">
                        <img alt="image" src="<?php echo e(profilePictureUrl(\App\Admin::find($row->admin_id)->user->picture)); ?>">
                        <div class="article-user-details">
                            <div class="user-detail-name">
                                <div class="text-job"><?php echo e(adminName($row->admin_id)); ?></div>
                            </div>
                            <div class="text-job"><?php echo e(__('Designation ')); ?> - (<?php echo e(\App\Admin::find($row->admin_id)->user->role->name); ?>)</div>
                        </div>
                    </div>
                        <?php endif; ?>

                    <div class="article-footer">
                        <div class="row">
                           
                            <div class="col-md-12">
                                <div class="btn-group dropup hundred-percent">
                                    <button data-toggle="modal" data-target="#infoModal-<?php echo e($row->id); ?>" class="btn btn-block btn-primary"><i class="fa fa-info-circle"></i> <?php echo e(__lang('info')); ?></button>
                                    <div class="dropdown-menu wider-btn">
                                        <a class="dropdown-item has-icon" href="<?php echo e(route('admin.student.export',['id'=>$row->id])); ?>"><i class="fa fa-users"></i>  <?php echo e(__('Export-Trainee')); ?></a>
                                        <a class="dropdown-item has-icon" href="<?php echo e(route('admin.student.exportbulkattendance',['id'=>$row->id])); ?>"   ><i class="fa fa-users"></i> <?php echo e(__('Export-Trainee')); ?> - <?php echo e(__lang('attendance-import')); ?></a>
                                        <?php if($row->type != 'c'): ?>
                                            <a class="dropdown-item has-icon" target="_blank" href="<?php echo e(route('admin.student.exportattendance',['id'=>$row->id])); ?>"><i class="fa fa-table"></i> <?php echo e(__lang('attendance-sheet')); ?></a>
                                        <?php endif; ?>
                                        <a class="dropdown-item has-icon" href="<?php echo e(route('admin.student.exporttel',['id'=>$row->id])); ?>"   ><i class="fa fa-phone"></i> <?php echo e(__lang('telephone-numbers')); ?></a>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="btn-group dropup hundred-percent">
                                    <button class="btn btn-block btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-cogs"></i> <?php echo e(__lang('actions')); ?>

                                    </button>
                                    <div class="dropdown-menu wider-btn">
                                        <?php if($row->type != 'c'): ?>
                                            <a class="dropdown-item has-icon" href="<?php echo e(route('admin.student.editsession',['id'=>$row->id])); ?>"><i class="fa fa-edit"></i> <?php echo e(__lang('edit')); ?></a>
                                            <a class="dropdown-item has-icon" href="<?php echo e(route('admin.session.sessionclasses',['id'=>$row->id])); ?>"><i class="fa fa-desktop"></i> <?php echo e(__lang('manage-classes')); ?></a>
                                        <?php else: ?>
                                            <a class="dropdown-item has-icon" href="<?php echo e(route('admin.session.editcourse',['id'=>$row->id])); ?>"><i class="fa fa-edit"></i> <?php echo e(__lang('edit')); ?></a>
                                            <a class="dropdown-item has-icon" href="<?php echo e(route('admin.session.courseclasses',['id'=>$row->id])); ?>"><i class="fa fa-desktop"></i> <?php echo e(__lang('manage-classes')); ?></a>
                                            
                                        <?php endif; ?>
                                        <a class="dropdown-item has-icon" href="<?php echo e(route('admin.student.sessionstudents',['id'=>$row->id])); ?>"><i class="fa fa-users"></i> <?php echo e(__lang('view-enrolled')); ?></a>

                                        <?php if($row->type != 'c'): ?>
                                            
                                        <?php endif; ?>
                                        
                                        
                                        <?php if($row->type != 'c'): ?>
                                            
                                        <?php endif; ?>
                                        <a class="dropdown-item has-icon" href="<?php echo e(route('admin.session.tests',['id'=>$row->id])); ?>"><i class="fa fa-check"></i> <?php echo e(__lang('manage-tests')); ?></a>
                                        <a class="dropdown-item has-icon" onclick="return confirm('<?php echo e(__lang('delete-confirm')); ?>')" href="<?php echo e(route('admin.student.deletesession',['id'=>$row->id])); ?>"   ><i class="fa fa-trash-alt"></i> <?php echo e(__lang('delete')); ?></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </article>
        </div>
            <?php $__env->startSection('footer'); ?>
                <?php echo \Illuminate\View\Factory::parentPlaceholder('footer'); ?>
            <div class="modal fade" tabindex="-1" role="dialog" id="infoModal-<?php echo e($row->id); ?>">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"><?php echo e($row->name); ?></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <ul class="nav nav-pills" id="myTab3-<?php echo e($row->id); ?>" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab3-<?php echo e($row->id); ?>" data-toggle="tab" href="#home3-<?php echo e($row->id); ?>" role="tab" aria-controls="home" aria-selected="true"><?php echo e(__lang('general')); ?></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab3-<?php echo e($row->id); ?>" data-toggle="tab" href="#profile3-<?php echo e($row->id); ?>" role="tab" aria-controls="profile" aria-selected="false"><?php echo e(__lang('totals')); ?></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="contact-tab3-<?php echo e($row->id); ?>" data-toggle="tab" href="#contact3-<?php echo e($row->id); ?>" role="tab" aria-controls="contact" aria-selected="false"><?php echo e(__lang('classes')); ?></a>
                                </li>
                                
                            </ul>
                            <div class="tab-content" id="myTabContent2-<?php echo e($row->id); ?>">
                                <div class="tab-pane fade show active" id="home3-<?php echo e($row->id); ?>" role="tabpanel" aria-labelledby="home-tab3-<?php echo e($row->id); ?>">


                                    <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.name'); ?></div>
                                    <blockquote class="plain">
                                        <?php echo e($row->name); ?>

                                    </blockquote>
                                    <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.short-description'); ?></div>
                                    <blockquote class="plain">
                                        <?php echo e($row->short_description); ?>

                                    </blockquote>
                                    <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.description'); ?></div>
                                    <blockquote class="plain">
                                        <?php echo clean($row->description); ?>

                                    </blockquote>
                                    <?php if(!empty($row->introduction)): ?>
                                    <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.introduction'); ?></div>
                                    <blockquote class="plain">
                                        <?php echo clean($row->introduction); ?>

                                    </blockquote>
                                    <?php endif; ?>

                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.created-by'); ?></div>
                                            <blockquote class="plain">
                                                <?php echo e(adminName($row->admin_id)); ?>

                                            </blockquote>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="section-title mt-0 tab-list-title"><?php echo app('translator')->get('default.status'); ?></div>
                                            <blockquote class="plain">
                                                <?php echo e(empty($row->enabled)? __lang('disabled'):__lang('enabled')); ?>

                                            </blockquote>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="section-title mt-0 tab-list-title"><?php echo e(__lang('start-date')); ?></div>
                                            <blockquote class="plain">
                                                <?php echo e(showDate('d/M/Y',$row->start_date)); ?>

                                            </blockquote>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="section-title mt-0 tab-list-title"><?php echo e(__lang('end-date')); ?></div>
                                            <blockquote class="plain">
                                                <?php echo e(showDate('d/M/Y',$row->end_date)); ?>

                                            </blockquote>
                                        </div>
                                        
                                        <div class="col-md-6">
                                            
                                        </div>
                                    <?php if(!empty($row->capacity)): ?>
                                        
                                    <?php endif; ?>
                                        
                                        <?php if(!empty($row->venue)): ?>
                                        <div class="col-md-6">

                                                <div class="section-title mt-0 tab-list-title"><?php echo e(__lang('venue')); ?></div>
                                                <blockquote class="plain">
                                                    <?php echo e($row->venue); ?>

                                                </blockquote>

                                        </div>
                                        <?php endif; ?>
                                        
                                        

                                        <?php if(!empty($row->effort)): ?>
                                        <div class="col-md-6">

                                                
                                                </div> 
                                        <?php endif; ?>
                                        <?php if(!empty($row->length)): ?>
                                        <div class="col-md-6">
                                              
                                                </div>  
                                        <?php endif; ?>
                                        <div class="col-md-6">
                                            
                                           </div>  
                                        </div>

                                </div>
                                <div class="tab-pane fade" id="profile3-<?php echo e($row->id); ?>" role="tabpanel" aria-labelledby="profile-tab3-<?php echo e($row->id); ?>">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td><?php echo e(__lang('enrolled-students')); ?></td>
                                            <td><?php echo e($studentSessionTable->getTotalForSession($row->id)); ?></td>
                                        </tr>
                                        <tr>
                                            <td><?php echo e(__lang('total-attended')); ?></td>
                                            <td><?php echo e($attendanceTable->getTotalStudentsForSession($row->id)); ?></td>
                                        </tr>
                                        <tr>
                                            <td><?php echo e(__lang('classes')); ?></td>
                                            <td><?php echo e($course->lessons()->count()); ?></td>
                                        </tr>
                                        
                                        <tr>
                                            <td><?php echo e(__lang('tests')); ?></td>
                                            <td><?php echo e($course->tests()->count()); ?></td>
                                        </tr>
                                        
                                       

                                    </table>

                                </div>
                                <div class="tab-pane fade" id="contact3-<?php echo e($row->id); ?>" role="tabpanel" aria-labelledby="contact-tab3-<?php echo e($row->id); ?>">
                                    <table class="table tab-bordered">
                                        <thead>
                                            <tr>
                                                <th><?php echo e(__lang('class')); ?></th>
                                                <th><?php echo e(__lang('type')); ?></th>
                                                
                                                <?php if($course->type!='c'): ?>
                                                
                                                <?php endif; ?>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $__currentLoopData = $course->lessons()->orderBy('sort_order')->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lesson): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <th><?php echo e($lesson->name); ?></th>
                                                    <th><?php echo e(lessonType($lesson->type)); ?></th>
                                                    
                                                    <?php if($course->type!='c'): ?>
                                                        
                                                    <?php endif; ?>
                                                </tr>

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="contact4-<?php echo e($row->id); ?>" role="tabpanel" aria-labelledby="contact-tab4-<?php echo e($row->id); ?>">
                                  <table class="table table-stripped">
                                      <thead>
                                      <tr>
                                        <th></th>
                                        <th><?php echo e(__lang('name')); ?></th>
                                        <th><?php echo e(__lang('email')); ?></th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                        <?php $__currentLoopData = $course->admins; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $admin): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td>
                                                    <figure class="avatar mr-2 avatar-xl">
                                                        <img src="<?php echo e(profilePictureUrl($admin->user->picture)); ?>" >
                                                    </figure>

                                                </td>
                                                <td><?php echo e($admin->user->name); ?></td>
                                                <td><a href="mailto:<?php echo e($admin->user->email); ?>"><?php echo e($admin->user->email); ?></a></td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      </tbody>
                                  </table>



                                </div>
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

        <?php echo e(paginationControl(
                // the paginator object
                    $paginator,
                    // the scrolling style
                    'sliding',
                    // the partial to use to render the control
                    null,
                    // the route to link to when a user clicks a control link
                    array(
                        'route' => 'admin/default',
                        'controller'=>'student',
                        'action'=>'sessions'
                    )
                )); ?>

</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp\www\lms\Resources\views/admin/student/sessions.blade.php ENDPATH**/ ?>
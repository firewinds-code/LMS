<?php $__env->startSection('innerTitle', $pageTitle); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb', [
        'crumbs' => [
            url('/') => __lang('home'),
            '#' => __lang('dashboard'),
        ],
    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="row">
        <div class="col-md-<?php echo e(setting('menu_show_certificates') == 1 || setting('menu_show_tests') == 1 ? '5' : '10'); ?>">

            <?php if($homeworkPresent): ?>
                
            <?php endif; ?>


            <div class="card card-primary">
                <div class="card-header">
                    <h4><i class="fa fa-book"></i> <?php echo e(setting('label_sessions_courses', __lang('courses-sessions'))); ?></h4>
                    <div class="card-header-action">
                        <a href="<?php echo e(route('student.student.mysessions')); ?>"
                            class="btn btn-primary"><?php echo e(__lang('view-all')); ?></a>

                    </div>
                </div>
                <div class="card-body">
                    <div class="summary">
                        <div class="summary-item">
                            <h6><?php echo e(__lang('enrolled-courses')); ?> <span class="text-muted">(<?php echo e($mysessions['total']); ?>

                                    <?php echo e(__lang('Items')); ?>)</span></h6>
                            <ul class="list-unstyled list-unstyled-border">
                               

                                <?php $__currentLoopData = $mysessions['paginator']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        
                                    ?>
                                    <li class="media disabled">
                                        <?php
                                            if ($row->type == 'c') {
                                                $url = route('student.course-details', ['id' => $row->course_id, 'slug' => safeUrl($row->name)]);
                                            } else {
                                                $url = route('student.session-details', ['id' => $row->course_id, 'slug' => safeUrl($row->name)]);
                                            }
                                        ?>

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

                                        <?php
                                            if ($diffDays < 0 || $currentDiff < 0) {
                                                $url = 'javaScript::void(0)';
                                            }
                                        ?>
                                        <a href="<?php echo e($url); ?>">
                                            <?php if(!empty($row->picture)): ?>
                                                
                                                    <img class="mr-3 rounded" src="<?php echo e(asset('img/course.png')); ?>"
                                                    alt="product" width="50">
                                            <?php else: ?>
                                                <img class="mr-3 rounded" src="<?php echo e(asset('img/course.png')); ?>"
                                                    alt="product" width="50">
                                            <?php endif; ?>
                                        </a>
                                        <div class="media-body">
                                          
                                            <?php if($diffDays >= 0 && $currentEndDiff >= 0 && $currentDiff >=0): ?>
                                                <div class="media-right"><a class="btn btn-primary btn-sm"
                                                        href="<?php echo e($url); ?>"><i class="fa fa-play-circle"></i>
                                                        <?php echo e(__lang('start course')); ?></a></div>
                                            <?php endif; ?>
                                            <?php if($diffDays < 0): ?>
                                                <span class="text-danger"></span>
                                                          <div class="media-right"><a class="btn btn-danger btn-sm disabled"
                                                            href="<?php echo e($url); ?>"><i class="fa fa-cross-circle"></i>
                                                            <?php echo e(__('Link Has Been Expired On')); ?>

                                                               <?php echo e(date('d-m-Y', strtotime($row->end_date))); ?></a></div>
                                            <?php endif; ?>
                                            <?php if($date2 < $date1): ?>
                                                <span class="text-primary">link will open on
                                                    <?php echo e(date('d-m-Y', strtotime($row->start_date))); ?> date</span>
                                                <div class="media-right"><a class="btn btn-primary btn-sm disabled"
                                                        href="<?php echo e($url); ?>"><i class="fa fa-play-circle"></i>
                                                        <?php echo e(__lang('start course')); ?></a></div>
                                            <?php endif; ?>

                                            <div class="media-title"><a
                                                    href="<?php echo e($url); ?>"><?php echo e(limitLength($row->name, 100)); ?></a>
                                                <div style="width: 70%">
                                                    <div class="progress" data-height="3">
                                                        <div class="progress-bar" role="progressbar"
                                                            data-width="<?php echo e($controller->getStudentProgress($row->course_id)); ?>%"
                                                            aria-valuenow="<?php echo e($controller->getStudentProgress($row->course_id)); ?>"
                                                            aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="text-muted text-small"><a
                                                    href="<?php echo e($url); ?>"><?php echo e(\App\Course::find($row->course_id)->lessons()->count()); ?>

                                                    <?php echo e(__lang('classes')); ?></a>
                                                <div class="bullet"></div> <?php echo e(courseType($row->type)); ?>

                                            </div>
                                        </div>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>







        </div>
        <?php if(setting('menu_show_certificates') == 1 || setting('menu_show_tests') == 1): ?>
            <div class="col-md-5">

                <?php if(setting('menu_show_certificates') == 1): ?>
                    
                <?php endif; ?>

                <?php if(setting('menu_show_tests') == 1): ?>
                    <div class="card card-info">
                        <div class="card-header">
                            <h4><i class="fas fa-check-circle"></i> <?php echo e(__lang('tests')); ?></h4>
                            <div class="card-header-action"><a class="btn btn-primary"
                                    href="<?php echo e(route('student.test.statement')); ?>"><?php echo e(__lang('view-all')); ?></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="summary">
                                <div class="summary-item">
                                    <h6><?php echo e(__lang('your-recent-performance')); ?></h6>
                                    <ul class="list-unstyled list-unstyled-border">
                                        <?php $__currentLoopData = $student->studentTests()->orderBy('id', 'desc')->limit(5)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $testResult): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li class="media">

                                                <div class="media-body">
                                                    <div class="media-right"><?php echo e(round($testResult->score)); ?>%</div>
                                                    <div class="media-title"><a
                                                            href="<?php echo e(route('student.test.taketest', ['id' => $testResult->test_id])); ?>"><?php echo e($testResult->test->name); ?></a>
                                                    </div>
                                                    <div class="text-muted text-small"><?php echo e(__lang('taken-on')); ?>

                                                        <?php echo e(\Illuminate\Support\Carbon::parse($testResult->created_at)->format('d m Y')); ?>

                                                    </div>
                                                </div>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>


            </div>
        <?php endif; ?>
        
    </div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.student', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp64\www\lms\Resources\views/student/index/index.blade.php ENDPATH**/ ?>
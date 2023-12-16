<?php $__env->startSection('pageTitle',$row->name); ?>
<?php $__env->startSection('innerTitle',$row->name); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('student.dashboard')=>__lang('dashboard'),
            route('student.student.mysessions')=>__lang('my-courses'),
            '#'=>$pageTitle
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

    <div class="row mb-4">
        <div class="col-md-4  mb-2">
            <?php if(!empty($row->picture)): ?>
                
                <img class="rounded img-responsive"  src="<?php echo e(asset('img/course.png')); ?>" >
            <?php else: ?>
                <img class="rounded img-responsive"  src="<?php echo e(asset('img/course.png')); ?>" >
            <?php endif; ?>
        </div>
        <div class="col-md-8">
            <div class="card course-info profile-widget mt-0">
                <div class="profile-widget-header">
                    <div class="profile-widget-items">
                       
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label"><?php echo e(__lang('classes')); ?></div>
                            <div class="profile-widget-item-value"><?php echo e($totalClasses); ?></div>
                        </div>
                        <div class="profile-widget-item">
                            <div class="profile-widget-item-label"><?php echo e(__lang('type')); ?></div>
                            <div class="profile-widget-item-value">
                                <?php
                                    switch($row->type){
                                        case 'b':
                                            echo __lang('training-online');
                                            break;
                                        case 's':
                                            echo __lang('training-session');
                                            break;
                                        case 'c':
                                            echo __lang('online-course');
                                            break;
                                    }
                                ?>
                            </div>
                        </div>

                            <?php if($studentCourse): ?>
                            <div class="profile-widget-item">
                                <div class="profile-widget-item-label"><?php echo e(__lang('enrollment-code')); ?></div>
                                <div class="profile-widget-item-value"><?php echo e($studentCourse->reg_code); ?></div>
                            </div>
                            <?php endif; ?>
                    </div>
                </div>
                <div class="profile-widget-description"> <?php echo clean($row->short_description); ?>

                </div>
                <div class="card-footer text-center">
                    <?php if($row->type=='b'): ?> <?php endif; ?>
                   
                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <ul class="nav nav-pills" id="myTab3" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#home3" role="tab" aria-controls="home" aria-selected="true"><i class="fa fa-info-circle"></i> <?php echo e(__lang('details')); ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab3" onclick="classAck('<?php echo e(Request::segment(3)); ?>','<?php echo e(Request::segment(4)); ?>');  return false" data-toggle="tab" href="#profile3" role="tab" aria-controls="profile" aria-selected="false"><i class="fa fa-table"></i> <?php echo e(__('Classes')); ?></a>
                </li>
                
                
                <li class="nav-item">
                    <a class="nav-link" id="test-tab3" onclick="classAck('<?php echo e(Request::segment(3)); ?>','<?php echo e(Request::segment(4)); ?>');  return false"    data-toggle="tab" href="#test3" role="tab" aria-controls="test" aria-selected="false"><i class="fa fa-check"></i> <?php echo e(__lang('tests')); ?></a>
                </li>
            </ul>

            <div class="tab-content" id="myTabContent2">
                <div class="tab-pane fade show active" id="home3" role="tabpanel" aria-labelledby="home-tab3">
                    <div class="card">
                        <div class="card-body">
                            <span class="text-warning">!! Please Read Carefully This Content And Proper Understand Your Monthly Test Based On This !</span>

                            <?php echo $row->description; ?>

                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile3" role="tabpanel" aria-labelledby="profile-tab3">

                    <?php  $sessionVenue = $row->venue;  ?>
                    <div class="table-responsive" id="htmltable">
                        
                    </div>
                 </div>

                <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                    <?php $__currentLoopData = $instructors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $instructor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="card author-box card-primary">
                            <div class="card-body">
                                <div class="author-box-left">
                                    <img alt="image" src="<?php echo e(profilePictureUrl($instructor->user_picture)); ?>" class="rounded-circle author-box-picture">
                                    <div class="clearfix"></div>
                                    <a href="#" class="btn btn-primary mt-3"  data-toggle="modal" data-target="#contactModal<?php echo e($instructor->admin_id); ?>" ><i class="fa fa-envelope"></i> <?php echo e(__lang('contact')); ?></a>
                                    <?php $__env->startSection('footer'); ?>
                                    <?php echo \Illuminate\View\Factory::parentPlaceholder('footer'); ?>
                                    <!-- Modal -->
                                        <div class="modal fade" id="contactModal<?php echo e($instructor->admin_id); ?>" tabindex="-1" role="dialog" aria-labelledby="contactModalLabel<?php echo e($instructor->admin_id); ?>">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <form class="form" method="post" action="<?php echo e(route('student.student.adddiscussion')); ?>">
                                                        <?php echo csrf_field(); ?>
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" id="contactModalLabel"><?php echo e(__lang('contact')); ?> <?php echo e($instructor->name.' '.$instructor->last_name); ?></h4>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                         </div>
                                                        <div class="modal-body">
                                                           <input type="hidden" name="admin_id[]" value="<?php echo e($instructor->admin_id); ?>"/>
                                                           <div class="form-group">
                                                                <?php echo e(formLabel($form->get('subject'))); ?>

                                                                <?php echo e(formElement($form->get('subject'))); ?>   <p class="help-block"><?php echo e(formElementErrors($form->get('subject'))); ?></p>

                                                            </div>
                                                            <div class="form-group">
                                                                <?php echo e(formLabel($form->get('question'))); ?>

                                                                <?php echo e(formElement($form->get('question'))); ?>   <p class="help-block"><?php echo e(formElementErrors($form->get('question'))); ?></p>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__lang('close')); ?></button>
                                                            <button type="submit" class="btn btn-primary"><?php echo e(__lang('send-message')); ?></button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    <?php $__env->stopSection(); ?>
                                </div>
                                <div class="author-box-details">
                                    <div class="author-box-name">
                                        <a href="#"><?php echo e($instructor->name.' '.$instructor->last_name); ?></a>
                                    </div>
                                    <div class="author-box-job"><?php echo e(\App\Admin::find($instructor->admin_id)->adminRole->name); ?></div>
                                    <div class="author-box-description">
                                        <p><?php echo clean($instructor->about); ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>

                


                <div class="tab-pane fade" id="test3" role="tabpanel" aria-labelledby="test-tab3">
                    <div class="table-responsive" id="testClassAckId">
                              
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-4">
            <table id="course-specs" class="table table-striped">
                <?php  if(!empty($row->session_date)): ?>
                <tr>
                    <td ><?php echo e(__lang('starts')); ?></td>
                    <td  ><?php echo e(showDate('d/M/Y',$row->session_date)); ?></td>
                </tr>
                <?php  endif;  ?>

                <?php  if(!empty($row->session_end_date)): ?>
                <tr>
                    <td ><?php echo e(__lang('ends')); ?></td>
                    <td><?php echo e(showDate('d/M/Y',$row->session_end_date)); ?></td>
                </tr>
                <?php  endif;  ?>
                <?php  if(!empty($row->enrollment_closes)): ?>
                <tr>
                    <td ><?php echo e(__lang('enrollment-closes')); ?></td>
                    <td><?php echo e(showDate('d/M/Y',$row->enrollment_closes)); ?></td>
                </tr>
                <?php  endif;  ?>

                

            </table>

            <?php if($row->type=='b'): ?>
            <div class="text-center">
                <a class="btn btn-primary mb-2 btn-block  btn-lg" href="<?php echo e($resumeLink); ?>"><i class="fa fa-play-circle"></i> <?php echo e($resumeText); ?>  <?php echo e(__lang('Online Classes')); ?></a> &nbsp;&nbsp;
        </div>
            <?php endif; ?>

       </div>

    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
    <script type="text/javascript" src="<?php echo e(asset('client/vendor/readmore/readmore.min.js')); ?>"></script>
    <script>
        $(function(){
            $('article.readmore').readmore({
                collapsedHeight : 90
            });
        });

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            console.log('clicked');
            $('#timetable article.readmore').readmore({
                collapsedHeight : 90
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('header'); ?>
    <style>
        #course-specs tr:first-child > td{
            border-top: none
        }
    </style>
<?php $__env->stopSection(); ?>



<?php if(false): ?>
<?php $__env->startSection('content'); ?>

<div class="container" style="min-height: 100px;   padding-bottom:50px; margin-bottom: 10px;   " >

<div class="row" style="border-bottom: solid 1px #CCCCCC; min-height: 100px; margin-bottom: 20px ">

    <div class="col-md-8">
        <div class="row">

    <?php  if(!empty($row->picture)): ?>
    <div class="col-md-5">
        <a href="#" class="thumbnail">
            <img src="<?php echo e(resizeImage($row->picture,400,300,url('/'))); ?>" >
        </a>
    </div>
    <?php  endif;  ?>
            <div class="col-md-7">
                <h3><?php echo e($row->name); ?></h3>
                <p>
                    <article class="readmore">
                    <?php echo e($row->short_description); ?>

                    </article>
                </p>
            </div>


        </div>

    </div>
    <?php  if(!$studentSessionTable->enrolled($studentId,$id) && $row->enrollment_closes > time()):  ?>
    <div class="col-md-3 col-md-offset-1" style="margin-bottom: 20px">
        <br/><br/>
        <a class="btn btn-primary btn-block btn-lg" href="<?php echo e($this->url('set-session',array('id'=>$row->session_id))); ?>"><?php echo e(__lang('Enroll Now')); ?></a>
    </div>
    <?php  elseif($row->session_type=='b'):  ?>
        <div class="col-md-3 col-md-offset-1" style="margin-bottom: 20px">
            <br/><br/>
            <a class="btn btn-primary btn-block btn-lg" href="<?php echo e($resumeLink); ?>"><?php echo e($resumeText); ?> <?php echo e(__lang('Online Classes')); ?></a>

        </div>

    <?php  endif;  ?>




</div>
    <div class="row">
        <div class="col-md-8">
            <div class="tabbable tabs-primary">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#details" aria-controls="details" role="tab" data-toggle="tab"> <i class="fa fa-info"></i> <?php echo e(__lang('Details')); ?></a></li>
                    <li role="presentation"><a href="#timetable" aria-controls="timetable" role="tab" data-toggle="tab"><i class="fa fa-table"></i> <?php echo e(__lang('Time Table')); ?></a></li>
                    <li role="presentation"><a href="#instructors" aria-controls="instructors" role="tab" data-toggle="tab"><i class="fa fa-users"></i> <?php echo e(__lang('Instructors')); ?></a></li>
                    <li role="presentation"><a href="#resources" aria-controls="instructors" role="tab" data-toggle="tab"><i class="fa fa-download"></i> <?php echo e(__lang('Resources')); ?></a></li>
                    <?php  if($enrolled):  ?>
                    <li role="presentation"><a href="#tests" aria-controls="tests" role="tab" data-toggle="tab"><i class="fa fa-check"></i> <?php echo e(__lang('Tests')); ?></a></li>
                    <?php  endif;  ?>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="details">
                        <p><?php echo e($row->description); ?></p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="timetable">
                        <?php  $sessionVenue= $row->venue;  ?>
                        <div class="table-responsive">
                            <table class="table table-stripped">
                                <thead>
                                <tr>
                                    <th><?php echo e(__lang('Class')); ?></th>
                                    <th><?php echo e(__lang('Date')); ?></th>
                                    <th><?php echo e(__lang('Starts')); ?></th>
                                    <th><?php echo e(__lang('Ends')); ?></th>
                                    <th><?php echo e(__lang('Instructors')); ?></th>
                                    <th><?php echo e(__lang('Venue')); ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php  foreach($rowset as $row2):  ?>
                                    <tr>
                                        <td><a data-toggle="modal" data-target="#classModal<?php echo e($row2->id); ?>" href="javaScript::voida(0)" style="text-decoration: underline"><?php echo e($row2->name); ?></a>
                                             <!-- Modal -->
                                            <div class="modal fade" id="classModal<?php echo e($row2->id); ?>" tabindex="-1" role="dialog" aria-labelledby="classModal<?php echo e($row2->id); ?>Label">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="classModal<?php echo e($row2->id); ?>Label"><?php echo e($row2->name); ?></h4>
                                                        </div>
                                                        <div class="modal-body">

                                                            <div class="row">
                                                                <?php  if(!empty($row2->picture)):  ?>
                                                                    <div class="col-md-3">
                                                                        <a href="#" >
                                                                            <img class="img-responsive" src="<?php echo e(resizeImage($row2->picture,300,300,url('/'))); ?>" >
                                                                        </a>
                                                                    </div>
                                                                <?php  endif;  ?>

                                                                <div class="col-md-<?php echo e((empty($row2->picture)? '12':'9')); ?>">
                                                                    <article ><?php echo e($row2->content); ?></article>
                                                                </div>
                                                            </div>
                                                         </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-primary" data-dismiss="modal"><?php echo e(__lang('Close')); ?></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </td>
                                        <td><?php echo e(showDate('d/m/Y',$row2->lesson_date)); ?></td>
                                        <td><?php echo e((!empty($row2->lesson_start)? $row2->lesson_start : '')); ?></td>
                                        <td><?php echo e((!empty(@$row2->lesson_end)? @$row2->lessong_end : '')); ?></td>
                                        <th>
                                            <div class="btn-group dropup btn-group-xs">
                                                <button type="button" class="btn btn-inverse dropdown-toggle btn-xs" data-toggle="dropdown">
                                                    <?php  $total = $table->getTotalInstructors($row2->lesson_id,$id); echo empty($total)?'N/A':$total;  ?> <?php  if(!empty($total)): ?><i class="fa fa-caret-up"></i><?php  endif;  ?>
                                                </button>
                                                <?php  if(!empty($total)): ?>
                                                    <ul class="dropdown-menu float-right animation-slide" role="menu" style="text-align: left;">
                                                        <?php  foreach($table->getInstructors($row2->lesson_id,$id) as $row22): ?>
                                                            <li><a href="#"><?php echo e($row22->name); ?> <?php echo e($row22->last_name); ?></a></li>
                                                        <?php  endforeach;  ?>

                                                    </ul>
                                                <?php  endif;  ?>
                                            </div>
                                        </th>
                                        <td>
                                            <?php  if($row2->type=='c'):  ?>
                                                <?php echo e(__lang('Online')); ?>

                                                <?php  if( (empty($row2->lesson_date) || $row2->lesson_date < time()) && $studentSessionTable->enrolled($studentId,$id) ): ?>
                                                <a class="btn btn-primary float-right" href="<?php echo e($this->url('view-class',['sessionId'=>$row->session_id,'classId'=>$row2->lesson_id])); ?>"><i class="fa fa-play"></i> <?php echo e(__lang('Start Class')); ?></a>
                                                 <?php  endif;  ?>
                                            <?php  else:  ?>
                                            <?php echo e(empty($row2->lesson_venue)? $sessionVenue: $row2->lesson_venue); ?>

                                            <?php  endif;  ?>

                                        </td>

                                    </tr>
                                <?php  endforeach;  ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                
                    <div role="tabpanel" class="tab-pane" id="instructors">
                    
                        <?php  foreach($instructors as $instructor): ?>
                            <div class="row">
                                <?php  if(!empty($instructor->picture)):  ?>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="<?php echo e(resizeImage($instructor->picture,300,300,url('/'))); ?>" >
                                        </a>
                                    </div>
                                <?php  endif;  ?>

                                <div class="col-md-<?php echo e((empty($instructor->picture)? '12':'9')); ?>">
                                    <h4><?php echo e($instructor->name.' '.$instructor->last_name); ?></h4>
                                    <article class="readmore"><?php echo e($instructor->account_description); ?></article>
                                    <?php  if($studentSessionTable->enrolled($studentId,$id)):  ?>

                                    <p style="margin-top: 10px">
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#contactModal<?php echo e($instructor->session_instructor_id); ?>">
                                            <i class="fa fa-envelope"></i> <?php echo e(__lang('Contact')); ?>

                                        </button>
                                    </p>
                                    <?php  endif;  ?>

                                    <!-- Modal -->
                                    <div class="modal fade" id="contactModal<?php echo e($instructor->session_instructor_id); ?>" tabindex="-1" role="dialog" aria-labelledby="contactModalLabel<?php echo e($instructor->session_instructor_id); ?>">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <form class="form" method="post" action="<?php echo e($this->url('application/default',['controller'=>'student','action'=>'adddiscussion'])); ?>">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="contactModalLabel"><?php echo e(__lang('Contact')); ?> <?php echo e($instructor->name.' '.$instructor->last_name); ?></h4>
                                                </div>
                                                <div class="modal-body">

                                                        <?php echo e(formElement($form->get('security'))); ?>


                                                    <input type="hidden" name="account_id[][]" value="<?php echo e($instructor->account_id); ?>"/>

                                                        <div class="form-group">
                                                            <?php echo e(formLabel($form->get('subject'))); ?>

                                                            <?php echo e(formElement($form->get('subject'))); ?>   <p class="help-block"><?php echo e(formElementErrors($form->get('subject'))); ?></p>

                                                        </div>

                                                        <div class="form-group">
                                                            <?php echo e(formLabel($form->get('question'))); ?>

                                                            <?php echo e(formElement($form->get('question'))); ?>   <p class="help-block"><?php echo e(formElementErrors($form->get('question'))); ?></p>

                                                        </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(__lang('Close')); ?></button>
                                                    <button type="submit" class="btn btn-primary"><?php echo e(__lang('Send Message')); ?></button>
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php  endforeach;  ?>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="resources">
                        <?php  if($studentSessionTable->enrolled($studentId,$id)):  ?>
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th><?php echo e(__lang('id')); ?></th>
                                <th><?php echo e(__lang('Name')); ?></th>
                                <th><?php echo e(__lang('Files')); ?></th>
                                <th ></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php  foreach($downloads as $download):  ?>
                        <td><span class="label label-success"><?php echo e($download->download_id); ?></span></td>
                        <td><?php echo e($download->download_name); ?></td>
                        <td><?php echo e($fileTable->getTotalForDownload($download->download_id)); ?></td>

                        <td class="text-right">
                        <?php  if ($fileTable->getTotalForDownload($download->download_id)> 0):  ?>
                                <a href="<?php echo e($this->url('application/download-list',array('id'=>$download->download_id))); ?>" class="btn btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="View Files"><i class="fa fa-eye"></i> <?php echo e(__lang('View files')); ?></a>
                                <a href="<?php echo e($this->url('application/download-all',array('id'=>$download->download_id))); ?>" class="btn btn-primary" data-toggle="tooltip" data-placement="top" data-original-title="Download All Files"><i class="fa fa-download"></i> <?php echo e(__lang('Download All')); ?></a>
                            <?php  else: ?>
                                <strong><?php echo e(__lang('no-files-available')); ?></strong>
                            <?php  endif;  ?>
                        </td>
                    </tr>

            <?php  endforeach;  ?>

                            </tbody>
                        </table>
                        <?php  else:  ?>
                            <p><?php echo e(__lang('resource-warning-text')); ?></p>
                        <?php  endif;  ?>
                    </div>
                    <?php  if($enrolled):  ?>
                    <div role="tabpanel" class="tab-pane" id="tests">
                        <div class="table-responsive" id="classTest">
                             
                            </div>
                    </div>
                    <?php  endif;  ?>
                </div>

            </div>
        </div>
        <div class="col-md-4" style="border: solid 1px #CCCCCC; padding: 10px; font-size: 14px; ">
            <table class="table table-striped">
                <tr>
                    <td style="border-top: none"><?php echo e(__lang('Start Date')); ?></td>
                    <td  style="border-top: none"><?php echo e(showDate('d/M/Y',$row->session_date)); ?></td>
                </tr>
                <tr>
                    <td ><?php echo e(__lang('Enrollment Closes')); ?></td>
                    <td><?php echo e(showDate('d/M/Y',$row->enrollment_closes)); ?></td>
                </tr>
                <tr>
                    <td ><?php echo e(__lang('End Date')); ?></td>
                    <td><?php echo e(showDate('d/M/Y',$row->session_end_date)); ?></td>
                </tr>
                <?php  if(setting('general_show_fee')==1): ?>
                <tr>
                    <td><?php echo e(__lang('Fee')); ?></td>
                    <td><?php  if(empty($row->payment_required)): ?>
                            <?php echo e(__lang('Free')); ?>

                        <?php  else:  ?>
                            <?php echo e(price($row->fee)); ?>

                        <?php  endif;  ?></td>
                </tr>
                <?php  endif;  ?>

                <?php  if(!empty($row->venue)): ?>
                <tr>
                    <?php  $sessionVenue= $row->venue;  ?>
                    <td><?php echo e(__lang('Venue')); ?></td>
                    <td><?php echo e($sessionVenue); ?></td>
                </tr>
                <?php  endif;  ?>
            </table>
            <?php  if(!$studentSessionTable->enrolled($studentId,$id) && $row->enrollment_closes > time()):  ?>
            <a class="btn btn-primary btn-block btn-lg" href="<?php echo e($this->url('set-session',array('id'=>$row->session_id))); ?>"><?php echo e(__lang('Enroll Now')); ?></a>
            <?php  endif;  ?>
        </div>
    </div>
</div>

<?php  $this->headScript()->prependFile(url('/') . '/client/vendor/readmore/readmore.min.js')
 ?>
<script>
    $(function(){
      
        $('article.readmore').readmore({
            collapsedHeight : 90
        });
    });

</script>
<?php $__env->stopSection(); ?>
<?php endif; ?>
<script src="<?php echo e(asset('js/jquery.min.js')); ?>"></script>
<link rel='stylesheet' href="<?php echo e(asset('css/sweetalert2.min.css')); ?>">
<script src="<?php echo e(asset('js/sweetalert2.all.min.js')); ?>"></script>
<script>
function hideAndShow(value)
{
    crt_value = `#question${value}`;
    inc_value = `#question${value+1}`;
    $(crt_value).addClass('disabled');
    $(inc_value).removeClass('disabled');
 }

 function classAck(id, slug)
 {
    var courseId = id;
    var courseName = slug;
    $.ajax("<?php echo e(url('student/class-ack-and-test')); ?>", {
        type: 'GET',  // http method
        data: { id:courseId,slug:courseName },  // data to submit
        success: function (response) 
        {
            $('#htmltable').html(response.htmlclass);
            $('#testClassAckId').html(response.htmltest);
        },
        error: function (response) 
        {
            Swal.fire('Oops!','Something Went Wrong !','error');
        }
    });
 }

 
 function acknowledge(classId, course_id)
 {
    $.ajax({
          url:"<?php echo e(url('student/ackclass')); ?>",
          type:"get",
          data:{id:classId,course_id:course_id},
         success:function(response)
         {
            if(response.success)
            {   $("#htmltable").html(response.html);
                $("#testClassAckId").html(response.testhtml);
                Swal.fire('Good Luck!',response.message,'success');
                $("#profile-tab3").addClass('active show');        
            }
            if(response.error)
            {
                Swal.fire('Oops!',response.message,'error');
            }
         }
         
    });
 }
</script>

<?php echo $__env->make('layouts.student', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp64\www\lms\Resources\views/student/student/timetable.blade.php ENDPATH**/ ?>
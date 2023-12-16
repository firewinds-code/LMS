<?php $__env->startSection('page-title',''); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('admin.dashboard')=>__('default.dashboard'),
            '#'=>isset($pageTitle)?$pageTitle:''
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('search-form'); ?>
    <form class="form-inline mr-auto" method="get" action="<?php echo e(adminUrl(array('controller'=>'video','action'=>'index'))); ?>">
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

    <a class="btn btn-primary" href="<?php echo e(adminUrl(array('controller'=>'lecturevideo','action'=>'add'))); ?>"><i class="fa fa-plus"></i> <?php echo e(__lang('add-video')); ?></a>
    <button class="btn btn-success"  data-toggle="collapse" href="#collapseFilter" role="button" aria-expanded="false" aria-controls="collapseFilter"><i class="fa fa-filter"></i> <?php echo e(__lang('filter')); ?></button>

    <div class="collapse" id="collapseFilter">
        <div class="card card-body">
            <form id="filterform"   role="form"  method="get" action="<?php echo e(route('admin.lecturevideo.index')); ?>">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="sr-only" for="filter"><?php echo e(__lang('filter')); ?></label>
                            <?php echo e(formElement($text)); ?>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="sr-only" for="group"><?php echo e(__lang('sort')); ?></label>
                            <?php echo e(formElement($sortSelect)); ?>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> <?php echo e(__lang('filter')); ?></button>
                        <button type="button" onclick="$('#filterform input, #filterform select').val(''); $('#filterform').submit();" class="btn btn-success"><i class="fa fa-redo"></i> <?php echo e(__lang('clear')); ?></button>

                    </div>
                </div>
            </form>
        </div>
    </div>


    <br><br>

    <div>
        <div>
            <div class="box">

                <div class="box-body">
                    <table class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th><?php echo e(__lang('id')); ?></th>
                            <th><?php echo e(__lang('thumbnail')); ?></th>
                            <th><?php echo e(__lang('Name')); ?></th>
                            <th><?php echo e(__lang('video_driver')); ?></th>

                            <?php  if(GLOBAL_ACCESS): ?>
                            <th><?php echo e(__lang('Created By')); ?></th>
                            <?php  endif;  ?>
                            <th><?php echo e(__lang('Actions')); ?></th>
                        </tr>
                        </thead>
                        <tbody>

                            <?php foreach ($paginator as $row): ?>
                                <tr>
                                    <td><span class="label label-success"><?php echo e($row->id); ?></span></td>
                                    <td class="pt-1">
                                        <?php  
                                            $thumb = 'uservideo/'.$row->id.'/'.fileName($row->file_name).'.jpg'; 
                                            $video = 'uservideo/'.$row->id.'/'.$row->file_name; 
                                        ?>

                                        <video width="150" height="100" controls>
                                            <?php if($row->mime_type == 'video/mp4'): ?>
                                                <source src="<?php echo e(basePath()); ?>/<?php echo e($video); ?>" type="video/mp4">
                                            <?php endif; ?>
                                            <?php if($row->mime_type == 'video/ogg'): ?>
                                                <source src="<?php echo e(basePath()); ?>/<?php echo e($video); ?>" type="video/ogg">
                                            <?php endif; ?>
                                            <?php if($row->mime_type == 'video/webm'): ?>
                                                <source src="<?php echo e(basePath()); ?>/<?php echo e($video); ?>" type="video/webm">
                                            <?php endif; ?>
                                        </video>
                                        
                                        
                                    </td>
                                    <td class="pt-2 pb-2"><strong><?php echo e($row->name); ?></strong>

                                        <small>
                                        <div class="row mb-1">
                                            
                                            <div class="col-md-6"><strong><?php echo e(__lang('size')); ?></strong><br>              <?php  if (!empty($row->file_size)):  ?>
                                                <?php echo e(formatSizeUnits($row->file_size)); ?>

                                                <?php  endif;  ?></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6"><strong><?php echo e(__lang('type')); ?></strong><br> <?php echo e(strtoupper(@pathinfo($row->file_name)['extension'])); ?></div>
                                            <div class="col-md-6"><strong><?php echo e(__lang('Added On')); ?></strong><br> <?php echo e(showDate('d/m/Y',$row->created_at)); ?></div>
                                        </div>





                                        </small>
                                    </td>

                                    <td>
                                        <?php echo e($row->location=='r'?'S3':__lang('local')); ?>

                                    </td>

                                    <?php  if(GLOBAL_ACCESS): ?>
                                    <td><?php echo e(adminName($row->admin_id)); ?></td>
                                    <?php  endif;  ?>

                                    <td>

                                        <div class="btn-group dropleft">
                                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <?php echo e(__lang('actions')); ?>

                                            </button>
                                            <div class="dropdown-menu wide-btn">

                                                

                                                
                                                <a class="dropdown-item" onclick="return confirm('<?php echo e(addslashes(__lang('delete-confirm'))); ?>')" href="<?php echo e(adminUrl(array('controller'=>'lecturevideo','action'=>'delete','id'=>$row->id))); ?>"><i class="fa fa-trash"></i> <?php echo e(__lang('Delete')); ?></a>

                                            </div>
                                        </div>



                                    </td>
                                </tr>
                            <?php endforeach; ?>


                        </tbody>
                    </table>

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
                        array(
                            'route' => 'admin/default',
                            'controller'=>'video',
                            'action'=>'index',
                            'filter'=>$filter,
                            'sort'=>$sort
                        )
                    );
                     ?>
                </div><!--end .box-body -->
            </div><!--end .box -->
        </div><!--end .col-lg-12 -->
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp\www\lms\Resources\views/admin/video/index.blade.php ENDPATH**/ ?>
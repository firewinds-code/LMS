<?php $__env->startSection('page-title',''); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('admin.dashboard')=>__('default.dashboard'),
            '#'=>isset($pageTitle)?$pageTitle:''
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div   id="video-library" >
    <div >
        <div class="card_">
            <div class="card-header_">

                <form id="filterform"   role="form"  method="get" action="<?php echo e(adminUrl(array('controller'=>'lecture','action'=>'library','id'=>$lectureId))); ?>">

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="sr-only" for="filter"><?php echo e(__lang('filter')); ?></label>
                                <?php echo e(formElement($text)); ?>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="sr-only" for="group"><?php echo e(__lang('sort')); ?></label>
                                <?php echo e(formElement($sortSelect)); ?>

                            </div>
                        </div>
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-primary"><?php echo e(__lang('filter')); ?></button>
                            <button type="button" onclick="$('#filterform input, #filterform select').val(''); $('#filterform').submit();" class="btn  btn-danger"><?php echo e(__lang('clear')); ?></button>

                        </div>
                        <div class="col-md-2">
                            <a target="_blank" onclick="$('#generalLargeModal').modal('hide')" class="btn btn-primary float-right" href="<?php echo e(adminUrl(array('controller'=>'lecturevideo','action'=>'add'))); ?>"><i class="fa fa-plus"></i> <?php echo e(__lang('add-videos')); ?></a>

                        </div>
                    </div>





                </form>

            </div>
            <div class="card-body_ pt-2">

                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><?php echo e(__lang('id')); ?></th>
                        <th><?php echo e(__lang('thumbnail')); ?></th>
                        <th><?php echo e(__lang('name')); ?></th>
                        
                        <?php if(!saas()): ?>
                        <th><?php echo e(__lang('size')); ?></th>
                        <?php endif; ?>
                        <th><?php echo e(__lang('added-on')); ?></th>
                        <?php if(GLOBAL_ACCESS): ?>
                            <th><?php echo e(__lang('created-by')); ?></th>
                        <?php endif; ?>
                        <th class="text-right1" ><?php echo e(__lang('actions')); ?></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach($paginator as $row):  ?>
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
                                  </video>

                            


                            </td>
                            <td><?php echo e($row->name); ?></td>
                            
                            <?php if(!saas()): ?>
                            <td>
                                <?php if(!empty($row->file_size)): ?>
                                <?php echo e(formatSizeUnits($row->file_size)); ?>

                                <?php endif; ?>
                            </td>
                            <?php endif; ?>
                            <td>
                                <?php echo e(showDate('d/m/Y',$row->created_at)); ?>

                            </td>

                            <?php if(GLOBAL_ACCESS): ?>
                                <td><?php echo e(adminName($row->admin_id)); ?></td>
                            <?php endif; ?>

                            <td class="text-right1">

                                    

                                <a class="btn btn-primary"  href="<?php echo e(adminUrl(array('controller'=>'lecture','action'=>'addvideolibrary','id'=>$row->id))); ?>?lecture=<?php echo e($lectureId); ?>"    ><i class="fa fa-plus"></i> <?php echo e(__lang('select')); ?></a>
                            </td>
                        </tr>
                    <?php endforeach;  ?>

                    </tbody>
                </table>
<div id="pagerlinks">
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
            'controller'=>'lecture',
            'action'=>'library',
            'id'=>$lectureId,
            'filter'=>$filter,
            'sort'=>$sort
        )
    );
    ?>
</div>

            </div><!--end .box-body -->
        </div><!--end .box -->
    </div><!--end .col-lg-12 -->
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make(adminLayout(), \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp\www\lms\Resources\views/admin/lecture/library.blade.php ENDPATH**/ ?>
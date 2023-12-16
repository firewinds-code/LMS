
<div class="row_">
    <div >
        <div class="box_">

                    <form id="filterform"  role="form"  method="get" action="<?php echo e(adminUrl(array('controller'=>'session','action'=>'browseclasses','id'=>$sessionId))); ?>?type=<?php echo e(@$_GET['type']); ?>">

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="sr-only" for="filter"><?php echo e(__lang('filter')); ?></label>
                                    <?php echo e(formElement($text)); ?>

                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><?php echo e(__lang('filter')); ?></button>
                                <button type="button" onclick="$('#filterform input, #filterform select').val(''); $('#filterform').submit();" class="btn  btn-danger"><?php echo e(__lang('Clear')); ?></button>

                            </div>
                        </div>




                    </form>


            <div class="box-body_">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><?php echo e(__lang('id')); ?></th>
                        <th><?php echo e(__lang('name')); ?></th>
                        <th><?php echo e(__lang('class-type')); ?></th>
                        <?php if(GLOBAL_ACCESS): ?>
                            <th><?php echo e(__lang('created-by')); ?></th>
                        <?php endif;  ?>
                        <th class="text-right1" ><?php echo e(__lang('actions')); ?></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $type = checkClassOnline($sessionId); foreach($paginator as $row):  ?>
                           <?php if($type == $row->type): ?>

                        <tr>
                            <td><span class="label label-success"><?php echo e($row->id); ?></span></td>
                            <td><?php echo e($row->name); ?> <?php if($row->type=='c'): ?>(<a target="_blank" style="text-decoration: underline" href="<?php echo e(adminUrl(array('controller'=>'lecture','action'=>'index','id'=>$row->id))); ?>"><?php echo e($lectureTable->getTotalLectures($row->id)); ?> <?php echo e(__lang('lectures')); ?></a>)  <?php endif;  ?></td>


                            <td><?php echo e(($row->type=='c')?__lang('online'):__lang('physical-location')); ?></td>
                            <?php if(GLOBAL_ACCESS): ?>
                                <td><?php echo e(adminName($row->admin_id)); ?></td>
                            <?php endif;  ?>

                            <td class="text-right1">
                               <?php $condition = classSelected($sessionId, $row->id)  ?>
                               <?php if(!$condition): ?>
                                <a class="btn btn-primary" href="<?php echo e(adminUrl(['controller'=>'session','action'=>'setclass','id'=>$row->id])); ?>?sessionId=<?php echo e($sessionId); ?>"><i class="fa fa-plus"></i> <?php echo e(__lang('select')); ?></a>
                                <?php else: ?>
                                <a class="btn btn-primary disabled" href="<?php echo e(adminUrl(['controller'=>'session','action'=>'setclass','id'=>$row->id])); ?>?sessionId=<?php echo e($sessionId); ?>"><i class="fa fa-check"></i> <?php echo e(__('Selected')); ?></a>
                                <?php endif; ?>





                            </td>
                        </tr>
                        <?php else: ?>

                        <?php endif; ?>
                    <?php endforeach;  ?>

                    </tbody>
                </table>
<div id="pagerlinks">
<?php echo e($paginator->links()); ?>


</div>
            </div><!--end .box-body -->
        </div><!--end .box -->
    </div><!--end .col-lg-12 -->
</div>


<!-- START SIMPLE MODAL MARKUP --><!-- /.modal -->
<!-- END SIMPLE MODAL MARKUP -->
<?php /**PATH D:\wamp\www\lms\Resources\views/admin/session/browseclasses.blade.php ENDPATH**/ ?>
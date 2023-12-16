<table class="table table-stripped">
    <thead>
    <tr>
        <th><?php echo e(__lang('Class')); ?></th>
        
        <th><?php echo e(__('Acknowledge')); ?></th>
        
    </tr>
    </thead>
    <tbody>
    <?php $sum = []; $flag = 0 ?>
    <?php $i=0; foreach($rowset as $row2):  ?>
    <?php   $sum[$i++] = $i;   ?>
    <tr>
        
        <td>
            <?php if($row2->is_acknowledge == 1): ?>
            <a onclick="hideAndShow(<?php echo e($i); ?>)" data-toggle="modal" class="btn btn-primary accept" id="question<?php echo e($i); ?>" data-target="#classModal<?php echo e($row2->id); ?>" href="javaScript::void()" ><?php echo e($row2->name); ?></a>
            <?php else: ?>
            <?php if($flag == 0): $flag = 1; ?>
           <a onclick="hideAndShow(<?php echo e($i); ?>)" data-toggle="modal" class="btn btn-primary accept" id="question<?php echo e($i); ?>" data-target="#classModal<?php echo e($row2->id); ?>" href="javaScript::void()" ><?php echo e($row2->name); ?></a>
            <?php else: ?>
            <a onclick="hideAndShow(<?php echo e($i); ?>)" data-toggle="modal" class="btn btn-primary disabled" id="question<?php echo e($i); ?>" data-target="#classModal<?php echo e($row2->id); ?>" href="javaScript::void()" ><?php echo e($row2->name); ?></a>
            <?php endif; ?> 
           <?php endif; ?>
           <!-- Modal -->
            <div class="modal fade" id="classModal<?php echo e($row2->id); ?>" tabindex="-1" role="dialog" aria-labelledby="classModal<?php echo e($row2->id); ?>Label">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="classModal<?php echo e($row2->id); ?>Label"><?php echo e($row2->name); ?></h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <?php  if(!empty($row2->picture)):  ?>
                                <div class="col-md-3">
                                    <a href="#">
                                        <img class="img-responsive" src="<?php echo e(resizeImage($row2->picture,300,300,url('/'))); ?>" >
                                    </a>
                                </div>
                                <?php  endif;  ?>
                                <div class="col-md-<?php echo e((empty($row2->picture)? '12':'9')); ?>">
                                    <article><?php echo $row2->description; ?></article>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <?php if($row2->is_acknowledge == 0): ?>
                            <button type="button" class="btn btn-info questionAck<?php echo e($i); ?>" onclick="acknowledge(<?php echo e($row2->lesson_id); ?>,<?php echo e($row2->course_id); ?>)" data-dismiss="modal"><?php echo e(__('I Acknowledge')); ?></button>
                             <?php else: ?>
                             <button type="button" class="btn btn-success"><i class="fa fa-check" aria-hidden="true"><?php echo e(__('Acknowledged')); ?></i></button>
                             <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </td>
        
        <th>
            <div class="btn-group dropup btn-group-xs">
                <?php if($row2->is_acknowledge == 1): ?>
                    <button type="button" class="btn btn-success">
                        <?php echo e(__("Acknowledged")); ?>

                    </button>
                    <?php else: ?>
                    <button type="button" class="btn btn-danger">
                    <?php echo e(__("Pending")); ?>

                    </button>
                <?php endif; ?>
            </div>
         </th>
        
    </tr>
    <?php endforeach; ?>
    </tbody>
</table> 




<?php /**PATH D:\wamp64\www\lms\Resources\views/student/ajax/testclasses.blade.php ENDPATH**/ ?>
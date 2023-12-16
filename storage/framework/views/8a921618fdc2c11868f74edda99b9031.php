<table class="table table-hover">
    <thead>
    <tr>
        <th style="min-width: 100px"><?php echo e(__lang('test')); ?></th>
        <th><?php echo e(__lang('questions')); ?></th>
        <th><?php echo e(__lang('opens')); ?></th>
        <th><?php echo e(__lang('closes')); ?></th>
        <th><?php echo e(__lang('minutes-allowed')); ?></th>
        <th><?php echo e(__lang('multiple-attempts-allowed')); ?></th>
        <th><?php echo e(__lang('passmark')); ?></th>
        <th ><?php echo e(__lang('actions')); ?></th>
    </tr>
    </thead>
    <tbody>
    <?php  foreach($tests as $testRow):  ?>
    <?php  if($testRow->test_status == 1): ?>
    <tr>
        <td><?php echo e($testRow->name); ?></td>
        <td><?php echo e($questionTable->getTotalQuestions($testRow->test_id)); ?></td>
        <td><?php  if(!empty($testRow->opening_date)) echo showDate('d/M/Y',$testRow->opening_date);  ?></td>
        <td><?php  if(!empty($testRow->closing_date))  echo showDate('d/M/Y',$testRow->closing_date);  ?></td>
        <td><?php echo e(empty($testRow->minutes)?__lang('unlimited'):$testRow->minutes); ?></td>
        <td><?php echo e(boolToString($testRow->allow_multiple)); ?></td>
        <td><?php echo e(($testRow->passmark > 0)? $testRow->passmark.'%':__lang('ungraded')); ?></td>
        <td>
            <?php
              $days  = (strtotime($testRow->opening_date) - strtotime(date('d-m-Y'))) / (60 * 60 * 24);
              $closingDate = (strtotime($testRow->closing_date) - strtotime(date('d-m-Y'))) / (60 * 60 * 24);
              $isAck = classAckTestOpen($studentCourse->course_id);
              $attempted = $studentTest->hasTest($testRow->test_id, $studentId);
              $allow = $testRow->allow_multiple;
              if((($days == 0) || !($closingDate < 0)) && (($closingDate == 0) || !($closingDate < 0)) && (($allow == 0 && $attempted != 1) || ($allow == 1))) :
            ?>
            <?php if($isAck == 0): ?>
            <a  target="_blank" href="<?php echo e(route('student.test.taketest',array('id'=> $testRow->test_id))); ?>" class="btn btn-primary " ><?php echo e(__lang('take-test')); ?></a>
            <?php else: ?>
            <button class="btn btn-primary">Please Acknowledge All Classes</button>
            <?php endif; ?>
            <?php  endif;  ?>
            <?php if($days >= 1 ) : ?>
            <button class="btn btn-primary">test will open on <?php echo e(date('d-m-Y',strtotime($testRow->opening_date))); ?></button>
            <?php endif; ?>
            <?php if(($days < 0) && ($closingDate < 0) && ($attempted != 1)) : ?>
            <button class="btn btn-danger disabled">Link Expired</button>
            <?php endif; ?>

            <?php if($allow == 0 && $attempted == 1): ?>
            <button class="btn btn-danger disabled">Already Attempted</button>
            <?php endif; ?>
        </td>
    </tr>
    <?php  endif;  ?>
    <?php  endforeach;  ?>
   </tbody>
</table>


<?php /**PATH D:\wamp64\www\lms\Resources\views/student/ajax/classtestack.blade.php ENDPATH**/ ?>
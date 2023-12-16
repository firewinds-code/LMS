<style>
  .grey_color{
    color: green;
    background-color: grey;
  }
</style>

<form class="form" method="post" action="<?php echo e(adminUrl(array('controller'=>'student','action'=>'enroll','id'=>$id))); ?>">
  <?php echo csrf_field(); ?>
    <h5><?php echo e(__lang('Enroll')); ?> <?php echo e($student->name.' '.$student->last_name); ?></h5>
    
    
    <div style="padding-bottom: 10px">
      <select class="form-control" name="course_id" required>
        <option value="">--Select a Session/Course -- </option>
        <?php $__currentLoopData = $rowset; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($row->id); ?>" <?php if(App\Lib\Helpers::isEnroll($id, $row->id)): ?> disabled class="grey_color"  <?php endif; ?>><?php echo e($row->name); ?>(<?php echo e(courseType($row->type)); ?>) <?php if(App\Lib\Helpers::isEnroll($id, $row->id)): ?> -- <?php echo e(__('Trainee Already Enrolled ')); ?>  <?php endif; ?></option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </select>

  </div>

    
    
    <button class="btn btn-primary" type="submit"><?php echo e(__lang('enroll')); ?></button>
</form>

<?php /**PATH D:\wamp\www\lms\Resources\views/admin/student/enroll.blade.php ENDPATH**/ ?>
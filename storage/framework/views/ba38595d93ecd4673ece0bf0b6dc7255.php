<div class="form-group <?php echo e($errors->has('name') ? 'has-error' : ''); ?>">
    <label for="name" class="control-label"><?php echo app('translator')->get('default.name'); ?></label>
    <input class="form-control" name="name" type="text" id="name"
        value="<?php echo e(old('name', isset($role->name) ? $role->name : '')); ?>">
    <?php echo clean($errors->first('name', '<p class="help-block">:message</p>')); ?>

</div>

<h3><?php echo app('translator')->get('default.permissions'); ?></h3>
<div class="" id="accordionExample">

    <?php
        $hidePermisssiongroup = ['settings', 'certificates', 'discussions', 'resource'];
        $hidePermission = ['add_class_group', 'edit_class_group', 'delete_class_group', 'view_class_groups', 'view_attendance_sheet', 'view_transactions', 'view_payments', 'view_instructors', 'set_instructors', 'view_course_categories', 'add_course_category', 'edit_course_category', 'delete_course_category', 'export_student_attendance', 'message_students', 'view_forum_topics', 'add_forum_topic', 'view_forum_topic', 'reply_forum_topic', 'manage_class_downloads', 'manage_lecture_downloads'];
    ?>

    <?php $__currentLoopData = \App\PermissionGroup::orderBy('sort_order')->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if(in_array($group->name, $hidePermisssiongroup)): ?>
            <?php continue; ?>
        <?php endif; ?>
        <div class="accordion">
            <div class="accordion-header" id="headingThree<?php echo e($group->id); ?>" data-toggle="collapse"
                data-target="#collapseThree<?php echo e($group->id); ?>" aria-expanded="false"
                aria-controls="collapseThree<?php echo e($group->id); ?>">
                <h4 class="mb-0">
                    
                    <?php if($group->name == 'student'): ?>
                        <?php echo e(__('trainee')); ?>

                    <?php else: ?>
                        <?php echo app('translator')->get('default.' . $group->name); ?>
                    <?php endif; ?>



                </h4>
            </div>
            <div id="collapseThree<?php echo e($group->id); ?>" class="collapse"
                aria-labelledby="headingThree<?php echo e($group->id); ?>" data-parent="#accordionExample">
                <div class="accordion-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th><?php echo app('translator')->get('default.permission'); ?></th>
                                <th><?php echo app('translator')->get('default.enabled'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $group->permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $permission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(in_array($permission->name, $hidePermission)): ?>
                                    <?php continue; ?>
                                <?php endif; ?>
                                <tr>
                                    <td>
                                        <?php if($permission->name == 'view_students'): ?>
                                            <?php echo e(__('view_trainee')); ?>

                                        <?php elseif($permission->name == 'add_student'): ?>
                                            <?php echo e(__('add_trainee')); ?>

                                        <?php elseif($permission->name == 'edit_student'): ?>
                                            <?php echo e(__('edit_trainee')); ?>

                                        <?php elseif($permission->name == 'delete_student'): ?>
                                            <?php echo e(__('delete_trainee')); ?>

                                        <?php elseif($permission->name == 'view_student'): ?>
                                            <?php echo e(__('view_trainees')); ?>

                                        <?php else: ?>
                                            <?php echo e($permission->name); ?>

                                        <?php endif; ?>

                                    </td>




                                    <td>
                                        <input type="checkbox" name="<?php echo e($permission->id); ?>"
                                            value="<?php echo e($permission->id); ?>"
                                            <?php if(isset($role) && $role->permissions()->find($permission->id)): ?> checked <?php endif; ?> />
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

</div>
<br />
<div class="form-group">
    <input class="btn btn-primary" type="submit"
        value="<?php echo e($formMode === 'edit' ? __('default.update') : __('default.create')); ?>">
</div>
<?php /**PATH D:\wamp64\www\lms\Resources\views/admin/roles/form.blade.php ENDPATH**/ ?>
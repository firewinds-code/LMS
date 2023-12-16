<?php $__env->startSection('pageTitle', __('default.role') . ': ' . $role->name); ?>
<?php $__env->startSection('innerTitle', __('default.role') . ': ' . $role->name); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb', [
        'crumbs' => [
            route('admin.dashboard') => __('default.dashboard'),
            route('admin.roles.index') => __lang('roles'),
            '#' => __lang('show'),
        ],
    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <div>

                        <?php
                            $hidePermisssiongroup = ['settings', 'certificates', 'discussions', 'resource'];
                            $hidePermission = ['add_class_group', 'edit_class_group', 'delete_class_group', 'view_class_groups', 'view_attendance_sheet', 'view_transactions', 'view_payments', 'view_instructors', 'set_instructors', 'view_course_categories', 'add_course_category', 'edit_course_category', 'delete_course_category', 'export_student_attendance', 'message_students', 'view_forum_topics', 'add_forum_topic', 'view_forum_topic', 'reply_forum_topic', 'manage_class_downloads', 'manage_lecture_downloads'];
                        ?>
                        <form method="POST" action="<?php echo e(url('admin/roles' . '/' . $role->id)); ?>" accept-charset="UTF-8"
                            class="int_inlinedisp">

                            <a href="<?php echo e(url('/admin/roles')); ?>" title="<?php echo app('translator')->get('default.back'); ?>"><button type="button"
                                    class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i>
                                    <?php echo app('translator')->get('default.back'); ?></button></a>
                            <a href="<?php echo e(url('/admin/roles/' . $role->id . '/edit')); ?>"><button type="button"
                                    class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    <?php echo app('translator')->get('default.edit'); ?></button></a>

                            <?php echo e(method_field('DELETE')); ?>

                            <?php echo e(csrf_field()); ?>

                            <button type="submit" class="btn btn-danger btn-sm" title="<?php echo app('translator')->get('default.delete'); ?>"
                                onclick="return confirm(&quot;<?php echo app('translator')->get('default.confirm-delete'); ?>?&quot;)"><i class="fa fa-trash-o"
                                    aria-hidden="true"></i> <?php echo app('translator')->get('default.delete'); ?></button>
                        </form>
                        <br />
                        <br />

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th> <?php echo app('translator')->get('default.name'); ?> </th>
                                        <td> <?php echo e($role->name); ?> </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <h1><?php echo app('translator')->get('default.permissions'); ?></h1>

                        <?php $__currentLoopData = \App\PermissionGroup::orderBy('sort_order')->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($role->permissions()->where('permission_group_id', $group->id)->count() > 0): ?>
                                <div class="card">
                                    <div class="card-header">
                                        
                                        <?php if($group->name == 'student'): ?>
                                            <?php echo e(__('trainee')); ?>

                                        <?php else: ?>
                                            <?php echo app('translator')->get('default.' . $group->name); ?>
                                        <?php endif; ?>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            <?php $__currentLoopData = $group->permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $permission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(in_array($permission->name, $hidePermission)): ?>
                                                    <?php continue; ?>
                                                <?php endif; ?>
                                                <?php if($role->permissions()->find($permission->id)): ?>
                                                    <?php if($permission->name == 'view_students'): ?>
                                                        <li class="list-group-item"> <?php echo e(__('view_trainee')); ?> </li>
                                                    <?php elseif($permission->name == 'add_student'): ?>
                                                        <li class="list-group-item"> <?php echo e(__('add_trainee')); ?> </li>
                                                    <?php elseif($permission->name == 'edit_student'): ?>
                                                        <li class="list-group-item"> <?php echo e(__('edit_trainee')); ?> </li>
                                                    <?php elseif($permission->name == 'delete_student'): ?>
                                                        <li class="list-group-item"> <?php echo e(__('delete_trainee')); ?> </li>
                                                    <?php elseif($permission->name == 'view_student'): ?>
                                                        <li class="list-group-item"> <?php echo e(__('view_trainees')); ?> </li>
                                                    <?php else: ?>
                                                        <li class="list-group-item"><?php echo app('translator')->get('perm.' . $permission->name); ?></li>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>

                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>



                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp64\www\lms\Resources\views/admin/roles/show.blade.php ENDPATH**/ ?>
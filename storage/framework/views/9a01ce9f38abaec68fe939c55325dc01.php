<div class="form-group <?php echo e($errors->has('name') ? 'has-error' : ''); ?>">
    <label for="name" class="control-label"><?php echo app('translator')->get('default.first-name'); ?></label>
    <input class="form-control" name="name" type="text" id="name"
        value="<?php echo e(old('name', isset($admin->name) ? $admin->name : '')); ?>">
    <?php echo clean($errors->first('name', '<p class="help-block">:message</p>')); ?>

</div>
<div class="form-group <?php echo e($errors->has('last_name') ? 'has-error' : ''); ?>">
    <label for="last_name" class="control-label"><?php echo app('translator')->get('default.last-name'); ?></label>
    <input class="form-control" name="last_name" type="text" id="name"
        value="<?php echo e(old('last_name', isset($admin->last_name) ? $admin->last_name : '')); ?>">
    <?php echo clean($errors->first('last_name', '<p class="help-block">:message</p>')); ?>

</div>
<div class="form-group <?php echo e($errors->has('email') ? 'has-error' : ''); ?>">
    <label for="email" class="control-label"><?php echo app('translator')->get('default.email'); ?></label>
    <input class="form-control" name="email" type="text" id="email"
        value="<?php echo e(old('email', isset($admin->email) ? $admin->email : '')); ?>">
    <?php echo clean($errors->first('email', '<p class="help-block">:message</p>')); ?>

</div>
<div class="form-group <?php echo e($errors->has('password') ? 'has-error' : ''); ?>">
    <label for="password" class="control-label">
        <?php if($formMode == 'edit'): ?>
            <?php echo app('translator')->get('default.change'); ?>
        <?php endif; ?> <?php echo app('translator')->get('default.password'); ?>
    </label>
    <input class="form-control" name="password" type="password" id="password" value="<?php echo e(old('password')); ?>">
    <?php echo clean($errors->first('password', '<p class="help-block">:message</p>')); ?>

</div>

<div class="form-group">
    <label for="roles"><?php echo app('translator')->get('default.role'); ?></label>
    <?php if($formMode === 'edit'): ?>
        <select required name="role" id="roles" class="form-control select2">
            <option></option>
            <?php $__currentLoopData = \App\AdminRole::get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($role->name == 'Super Administrator' || $role->name == 'Administrator'): ?>
                    <?php continue; ?>
                <?php endif; ?>
                <option <?php if(old('role', $admin->admin->admin_role_id) == $role->id): ?> selected <?php endif; ?> value="<?php echo e($role->id); ?>">
                    <?php echo e($role->name); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    <?php else: ?>
        <select required name="role" id="roles" class="form-control select2">
            <option></option>
            <?php $__currentLoopData = \App\AdminRole::get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($role->name == 'Super Administrator' || $role->name == 'Administrator'): ?>
                    <?php continue; ?>
                <?php endif; ?>
                <option <?php if(old('role') == $role->id): ?> selected <?php endif; ?> value="<?php echo e($role->id); ?>">
                    <?php echo e($role->name); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    <?php endif; ?>
</div>

<div class="form-group <?php echo e($errors->has('status') ? 'has-error' : ''); ?>">
    <label for="status" class="control-label"><?php echo app('translator')->get('default.enabled'); ?></label>
    <select name="status" class="form-control" id="status">
        <?php $__currentLoopData = json_decode('{"1":"' . __('default.yes') . '","0":"' . __('default.no') . '"}', true); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $optionKey => $optionValue): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($optionKey); ?>"
                <?php echo e(null !== old('status', @$admin->status) && old('admin', @$admin->status) == $optionKey ? 'selected' : ''); ?>>
                <?php echo e($optionValue); ?></option>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </select>
    <?php echo clean($errors->first('status', '<p class="help-block">:message</p>')); ?>

</div>

<div class="form-group <?php echo e($errors->has('about') ? 'has-error' : ''); ?>">
    <label for="about" class="control-label"><?php echo app('translator')->get('default.about'); ?></label>

    <textarea name="about" id="about" class="form-control"><?php echo e(old('about', isset($admin->admin->about) ? $admin->admin->about : '')); ?></textarea>
    <?php echo clean($errors->first('about', '<p class="help-block">:message</p>')); ?>

</div>







</div>

<div class="form-group">
    <input class="btn btn-primary" type="submit"
        value="<?php echo e($formMode === 'edit' ? __('default.update') : __('default.create')); ?>">
</div>


<!--container ends-->
<script type="text/javascript">
    <!--
    function image_upload(field, thumb) {
        $('#dialog').remove();

        $('#content').prepend(
            '<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="<?php echo e(basePath()); ?>/admin/filemanager?&token=true&field=' +
            encodeURIComponent(field) +
            '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>'
        );

        $('#dialog').dialog({
            title: '<?php echo e(addslashes(__lang('Image Manager'))); ?>',
            close: function(event, ui) {
                if ($('#' + field).attr('value')) {
                    $.ajax({
                        url: '<?php echo e(basePath()); ?>/admin/filemanager/image?&image=' +
                            encodeURIComponent($('#' + field).val()),
                        dataType: 'text',
                        success: function(data) {
                            $('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' +
                                thumb + '" />');
                        }
                    });
                }
            },
            bgiframe: false,
            width: 800,
            height: 570,
            resizable: true,
            modal: false,
            position: "center"
        });
    };

    //
    -->
</script>
<?php /**PATH D:\wamp64\www\lms\Resources\views/admin/admins/form.blade.php ENDPATH**/ ?>
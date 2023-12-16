<?php $__env->startSection('page-title',''); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <?php echo $__env->make('admin.partials.crumb',[
    'crumbs'=>[
            route('admin.dashboard')=>__('default.dashboard'),
                 adminUrl(['controller'=>'student','action'=>'sessions'])=>__lang('Courses'),
            adminUrl(['controller'=>'session','action'=>'tests','id'=>$id])=>__lang('Tests'),
            '#'=>$crumbLabel
        ]], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <div class="card">
    <div class="card-body">
        <form class="form" action="<?php echo e(selfURL()); ?>" method="post">
            <?php echo csrf_field(); ?>
            <div class="form-group">
                <?php echo e(formLabel($form->get('test_id'))); ?>

                <?php echo e(formElement($form->get('test_id'))); ?>

                <p class="help-block"><?php echo e(formElementErrors($form->get('test_id'))); ?></p>
            </div>


            <div class="form-group">
                <?php echo e(formLabel($form->get('opening_date'))); ?>

                <div id="datepicker1" class="input-group date" > 
                    <input class="form-control" type="text" id="opening_date" name="opening_date" value="<?php if(isset($opening_date)): ?> <?php echo e($opening_date); ?><?php endif; ?>" readonly/> 
                    <span class="input-group-addon"> 
                        <i class="glyphicon glyphicon-calendar"></i> 
                    </span> 
                </div>
                
            </div>



            <div class="form-group">
                <?php echo e(formLabel($form->get('closing_date'))); ?>

                <div id="datepicker2" class="input-group date" > 
                    <input class="form-control" type="text" id="closing_date" name="closing_date" value="<?php if(isset($closing_date)): ?> <?php echo e($closing_date); ?><?php endif; ?>" readonly/> 
                    <span class="input-group-addon"> 
                        <i class="glyphicon glyphicon-calendar"></i> 
                    </span> 
                </div>
                
            </div>




            <div class="form-footer">
                <button type="submit" class="btn btn-block btn-lg btn-primary"><?php echo e(__lang('save')); ?></button>
            </div>
        </form>

    </div>
    </div>


  




<?php $__env->stopSection(); ?>

<?php $__env->startSection('header'); ?>
    <link rel="stylesheet" href="<?php echo e(basePath().'/client/vendor/pickadate/themes/default.date.css'); ?>">
    <link rel="stylesheet" href="<?php echo e(basePath().'/client/vendor/pickadate/themes/default.time.css'); ?>">
    <link rel="stylesheet" href="<?php echo e(basePath().'/client/vendor/pickadate/themes/default.css'); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>
    <script type="text/javascript" src="<?php echo e(basePath()); ?>/client/vendor/pickadate/picker.js"></script>
    <script type="text/javascript" src="<?php echo e(basePath()); ?>/client/vendor/pickadate/picker.date.js"></script>
    <script type="text/javascript" src="<?php echo e(basePath()); ?>/client/vendor/pickadate/picker.time.js"></script>
    <script type="text/javascript" src="<?php echo e(basePath()); ?>/client/vendor/pickadate/legacy.js"></script>
    <script>
        /*$(function(){
            $('.date').pickadate({
                format: 'yyyy-mm-dd'
            });
        });  */
    </script>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> 
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script> 
     <script> 
     $(function () { 
 
            $("#datepicker1").datepicker({  
                 startDate: new Date(),
                 format: 'yyyy-mm-dd'
             });
             
             $("#datepicker2").datepicker({  
                 startDate: new Date(),
                 format: 'yyyy-mm-dd'
             });
             
     }); 
     </script> 





<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wamp64\www\lms\Resources\views/admin/session/addtest.blade.php ENDPATH**/ ?>
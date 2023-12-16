<!DOCTYPE html>
<html <?php echo langMeta(); ?>  >
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title><?php echo $__env->yieldContent('pageTitle',isset($pageTitle)? $pageTitle:__('default.admin')); ?> - <?php echo e(env('APP_NAME')); ?></title>

    <?php if(!empty(setting('image_icon'))): ?>
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo e(asset(setting('image_icon'))); ?>">
    <?php endif; ?>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/bootstrap/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/fontawesome/css/all.min.css')); ?>">

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/jqvmap/dist/jqvmap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/weather-icon/css/weather-icons.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/weather-icon/css/weather-icons-wind.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/modules/summernote/summernote-bs4.css')); ?>">
    <link type="text/css" rel="stylesheet" href="<?php echo e(asset('client/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.css')); ?>" />

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/css/style.css')); ?>">

    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/css/components.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/themes/admin/assets/css/custom.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('client/css/admin.css')); ?>">
    <script src="<?php echo e(asset('client/themes/admin/assets/modules/jquery.min.js')); ?>"></script>
    <script src="<?php echo e(asset('client/vendor/jquery-ui-1.11.4/jquery-ui.min.js')); ?>"></script>
    <link href="<?php echo e(asset('client/vendor/select2/css/select2.min.css')); ?>" rel="stylesheet" />
    <script src="<?php echo e(asset('client/vendor/select2/js/select2.min.js')); ?>"></script>

    <script src="<?php echo e(asset('client/app/lib.js')); ?>"></script>

    <?php if(!empty(setting('dashboard_color'))): ?>
        <?php echo $__env->make('partials.dashboard-css',['color'=>setting('dashboard_color')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <?php echo $__env->yieldContent('header'); ?>

</head>

<body class="sidebar-mini">
<div id="app">
    <div class="main-wrapper main-wrapper-1" id="content">
        <div class="navbar-bg"></div>
        <nav class="navbar navbar-expand-lg main-navbar">
            <?php if (! empty(trim($__env->yieldContent('search-form')))): ?>
                <?php echo $__env->yieldContent('search-form'); ?>
            <?php else: ?>
                <form class="form-inline mr-auto">
                    <ul class="navbar-nav mr-3">
                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                    </ul>
                </form>
            <?php endif; ?>



            <ul class="navbar-nav navbar-right">

                <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                        <?php if(!empty(Auth::user()->picture) && file_exists(Auth::user()->picture)): ?>
                        <img alt="image" src="<?php echo e(asset(Auth::user()->picture)); ?>" class="rounded-circle mr-1">
                        <?php else: ?>
                            <img alt="image" src="<?php echo e(asset('client/themes/admin/assets/img/avatar/avatar-1.png')); ?>" class="rounded-circle mr-1">
                        <?php endif; ?>
                        <div class="d-sm-none d-lg-inline-block"><?php echo app('translator')->get('default.hi'); ?>, <?php echo e(Auth()->user()->name); ?></div></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-title"><?php echo app('translator')->get('default.account'); ?></div>
                        <a href="<?php echo route('admin.account.profile'); ?>" class="dropdown-item has-icon">
                            <i class="far fa-user"></i> <?php echo app('translator')->get('default.profile'); ?>
                        </a>
                        <a href="<?php echo route('admin.account.email'); ?>" class="dropdown-item has-icon">
                            <i class="fas fa-envelope"></i> <?php echo app('translator')->get('default.change-email'); ?>
                        </a>
                        <a href="<?php echo route('admin.account.password'); ?>" class="dropdown-item has-icon">
                            <i class="fas fa-unlock"></i> <?php echo app('translator')->get('default.change-password'); ?>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a onclick="event.preventDefault(); document.getElementById('logout-form').submit();" href="#" class="dropdown-item has-icon text-danger">
                            <i class="fas fa-sign-out-alt"></i> <?php echo app('translator')->get('default.logout'); ?>
                        </a>
                        <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                            <?php echo csrf_field(); ?>
                        </form>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="main-sidebar sidebar-style-2">
            <aside id="sidebar-wrapper">
                <div class="sidebar-brand">
                    <a href="<?php echo e(url('/')); ?>">
                        <?php echo e(env('APP_NAME')); ?>

                    </a>
                </div>
                <div class="sidebar-brand sidebar-brand-sm">
                    <a href="<?php echo e(url('/')); ?>">

                            <?php echo e(substr(env('APP_NAME'),0,2)); ?>


                    </a>
                </div>
                <ul class="sidebar-menu">
                    <li class="menu-header"><?php echo app('translator')->get('default.menu'); ?></li>
                    <li><a href="<?php echo route('admin.dashboard'); ?>" class="nav-link"><i class="fas fa-fire"></i><span><?php echo app('translator')->get('default.dashboard'); ?></span></a></li>

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','course')): ?>
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown"><i class="fas fa-book"></i><span><?php echo e(__lang('courses-sessions')); ?></span></a>
                        <ul class="dropdown-menu">

                            <li class="dropdown">
                                <a href="#" class="nav-link has-dropdown"><span><?php echo e(__lang('add-new')); ?></span></a>
                                <ul class="dropdown-menu">
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','add_course')): ?>
                                    <li><a class="nav-link" href="<?php echo route('admin.session.addcourse'); ?>"><?php echo e(__lang('online-course')); ?></a></li>
                                    <?php endif; ?>
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','add_session')): ?>
                                    
                                    
                                    <?php endif; ?>
                                </ul>
                            </li>

                            <li ><a class="nav-link" href="<?php echo e(route('admin.student.sessions')); ?>"><?php echo e(__lang('all-courses-session')); ?> </a></li>
                            
                              

                        </ul>
                    </li>
                    <?php endif; ?>

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','student')): ?>
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown"><i class="fas fa-users"></i><span><?= __('Trainee') ?></span></a>
                        <ul class="dropdown-menu">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','add_student')): ?><li ><a class="nav-link" href="<?php echo route('admin.student.add'); ?>"><?php echo e(__('Add-Trainee')); ?></a></li><?php endif; ?>
                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_students')): ?><li ><a class="nav-link" href="<?php echo route('admin.student.index'); ?>"><?php echo e(__('All-Trainee')); ?></a></li><?php endif; ?>
                                
                        </ul>
                    </li>
                    <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','classes')): ?>
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown"><i class="fas fa-chalkboard-teacher "></i><span><?php echo e(__lang('classes')); ?></span></a>
                        <ul class="dropdown-menu">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','add_class')): ?><li ><a class="nav-link" href="<?php echo route('admin.lesson.add'); ?>"><?php echo e(__lang('add-class')); ?></a></li><?php endif; ?>
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_classes')): ?><li ><a class="nav-link" href="<?php echo route('admin.lesson.index'); ?>"><?php echo e(__lang('all-classes')); ?></a></li><?php endif; ?>
                            
                        </ul>
                    </li>
                    <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','video')): ?>
                    
                    <?php endif; ?>

                   <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','attendance')): ?>
                   
                    <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','homework')): ?>
                    
                    <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','revision_notes')): ?>
                   
                    <?php endif; ?>
                    
                   <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','discussions')): ?>
                    
                        <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','tests')): ?>
                    <li class="dropdown">
                        <a href="#" class="nav-link has-dropdown"><i class="fas fa-check-circle"></i><span><?php echo e(__lang('tests')); ?></span></a>
                        <ul class="dropdown-menu">
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_tests')): ?><li ><a class="nav-link" href="<?php echo route('admin.test.add'); ?>"><?php echo e(__lang('add-test')); ?></a></li><?php endif; ?>
                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','add_test')): ?><li ><a class="nav-link" href="<?php echo route('admin.test.index'); ?>"><?php echo e(__lang('all-tests')); ?></a></li><?php endif; ?>
                        </ul>
                    </li>
                        <?php endif; ?>

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','survey')): ?>
                   
                        <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','certificates')): ?>
                     
                      <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','reports')): ?>
                    
                            <?php endif; ?>
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','blog')): ?>
                    
                    <?php endif; ?>

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','files')): ?>
                        
                    <?php endif; ?>

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','articles')): ?>
                        
                    <?php endif; ?>
                    

                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access-group','settings')): ?>
                        <li class="dropdown">
                            <a href="#" class="nav-link has-dropdown"><i class="fas fa-cogs"></i><span><?php echo e(__lang('settings')); ?></span></a>
                            <ul class="dropdown-menu">
                                <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','edit_site_settings')): ?><li ><a class="nav-link" href="<?php echo route('admin.setting.index'); ?>"><?php echo e(__lang('site-settings')); ?></a></li><?php endif; ?>
                                
                                    
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','configure_sms_gateways')): ?>
                                    
                                        <?php endif; ?>

                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_roles')): ?><li ><a class="nav-link" href="<?php echo route('admin.roles.index'); ?>"><?php echo e(__lang('roles')); ?></a></li><?php endif; ?>
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_admins')): ?><li ><a class="nav-link" href="<?php echo route('admin.admins.index'); ?>"><?php echo e(__('Administrators/Trainer')); ?></a></li><?php endif; ?>
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','view_test_grades')): ?><li ><a class="nav-link" href="<?php echo route('admin.setting.testgrades'); ?>"><?php echo e(__lang('grades')); ?></a></li><?php endif; ?>
                                   
                                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('access','edit_site_settings')): ?>
                                    <li>
                                        
                                    </li>
                                        <li>
                                            
                                        </li>
                                    <?php endif; ?>
                                    <li class="dropdown">
                                        
                                        <ul class="dropdown-menu">

                                                

                                        </ul>
                                    </li>

                                   
                                    <?php if(!saas()): ?>
                                    
                                    <?php endif; ?>

                            </ul>
                        </li>
                    <?php endif; ?>



                </ul>

                <?php if(config('app.credits')==true): ?>
                    <?php if(saas()): ?>
                        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
                            
                        </div>
                    <?php else: ?>
                <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
                    
                </div>
                    <?php endif; ?>
                <?php endif; ?>


            </aside>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <section class="section">
                <div class="section-header">
                    <?php if(isset($pageTitle)): ?>
                        <h1><?php echo e($pageTitle); ?></h1>
                        <?php endif; ?>

                    <?php if (! empty(trim($__env->yieldContent('innerTitle')))): ?>
                        <h1><?php echo $__env->yieldContent('innerTitle'); ?></h1>
                    <?php endif; ?>
                    <?php if (! empty(trim($__env->yieldContent('breadcrumb')))): ?>
                        <div class="section-header-breadcrumb">

                            <?php echo $__env->yieldContent('breadcrumb'); ?>


                        </div>
                    <?php endif; ?>


                </div>

                <div class="section-body" id="layout_content">


                    <?php if(count($errors) > 0): ?>
                        <div class="alert alert-danger alert-dismissible show fade">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                    <span>&times;</span>
                                </button>
                                <ul>
                                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <li><?php echo e($error); ?></li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul>
                            </div>
                        </div>
                    <?php endif; ?>


                    <?php $__currentLoopData = ['danger', 'warning', 'success', 'info']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $msg): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if(Session::has('alert-' . $msg)): ?>
                           <div class="alert alert-<?php echo e($msg); ?> alert-dismissible show fade">
                                <div class="alert-body">
                                    <button class="close" data-dismiss="alert">
                                        <span>&times;</span>
                                    </button>
                                    <?php echo clean(Session::get('alert-' . $msg)); ?>

                                </div>
                            </div>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php if(Session::has('flash_message')): ?>
                        <div class="alert alert-success alert-dismissible show fade">
                            <div class="alert-body">
                                <button class="close" data-dismiss="alert">
                                    <span>&times;</span>
                                </button>
                                <?php echo clean(Session::get('flash_message')); ?>

                            </div>
                        </div>
                    <?php endif; ?>

                        <?php if(isset($flash_message)): ?>
                            <div class="alert alert-success alert-dismissible show fade">
                                <div class="alert-body">
                                    <button class="close" data-dismiss="alert">
                                        <span>&times;</span>
                                    </button>
                                    <?php echo clean($flash_message); ?>

                                </div>
                            </div>
                        <?php endif; ?>


                    <?php echo $__env->yieldContent('content'); ?>
                </div>
            </section>

        </div>
        <footer class="main-footer">
            <div class="footer-left">
                <?php echo e(__lang('copyright')); ?> &copy; <?php echo e(date('Y')); ?>    <a href="<?php echo e(config('app.author_url')); ?>"><?php echo e(config('app.app_author')); ?></a>
            </div>
            <div class="footer-right">

            </div>
        </footer>
    </div>
</div>

<!-- General JS Scripts -->

<script src="<?php echo e(asset('client/themes/admin/assets/modules/popper.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/tooltip.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/bootstrap/js/bootstrap.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/nicescroll/jquery.nicescroll.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/moment.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/js/stisla.js')); ?>"></script>

<!-- JS Libraies -->
<script src="<?php echo e(asset('client/themes/admin/assets/modules/simple-weather/jquery.simpleWeather.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/chart.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/jqvmap/dist/jquery.vmap.min.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/jqvmap/dist/maps/jquery.vmap.world.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/summernote/summernote-bs4.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/modules/chocolat/dist/js/jquery.chocolat.min.js')); ?>"></script>



<!-- Template JS File -->
<script src="<?php echo e(asset('client/themes/admin/assets/js/scripts.js')); ?>"></script>
<script src="<?php echo e(asset('client/themes/admin/assets/js/custom.js')); ?>"></script>

<div class="modal fade" id="generalModal" tabindex="-1" role="dialog"  >
          <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="generalModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body"  id="genmodalinfo">
              </div>

            </div>
          </div>
</div>

<div class="modal fade" id="generalLargeModal" tabindex="-1" role="dialog"  >
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="generalLargeModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body"  id="genLargemodalinfo">
            </div>

        </div>
    </div>
</div>

<!-- END SIMPLE MODAL MARKUP -->
<script>
    function openModal(title,url){
        $('#genmodalinfo').html(' <img  src="<?php echo e(asset('img/ajax-loader.gif')); ?>');
        $('#generalModalLabel').text(title);
        $('#genmodalinfo').load(url);
        $('#generalModal').modal();
    }
    function openLargeModal(title,url){
       
        $('#genLargemodalinfo').html(' <img  src="<?php echo e(asset('img/ajax-loader.gif')); ?>');
        $('#generalLargeModalLabel').text(title);
        $('#genLargemodalinfo').load(url);
        $('#generalLargeModal').modal();
    }
    function openPopup(url){
        window.open(url, "_blank", "toolbar=no,scrollbars=yes,resizable=yes,top=500,left=500,width=400,height=400");
        return false;
    }
</script>

<?php echo $__env->yieldContent('footer'); ?>

</body>
</html>
<?php /**PATH D:\wamp64\www\lms\Resources\views/layouts/admin.blade.php ENDPATH**/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?php echo e(__lang('Video')); ?>: <?php echo e($video->name); ?></title>
    <link href="<?php echo e(basePath()); ?>/client/vendor/bootstrap4/bootstrap.min.css" rel="stylesheet"><!-- https://getbootstrap.com -->
    <link href="<?php echo e(basePath()); ?>/client/vendor/videojs/video-js.css" rel="stylesheet"><!-- https://videojs.com -->

    <style type="text/css">
        .video-js {
            font-size: 1rem;
        }
    </style>
</head>
<body class="bg-light">
<div class="container">
    <div class="card" style="margin: 30px; margin-top: 10px;" >
        <div class="embed-responsive embed-responsive-16by9">
            <video id="video" <?php  if (!empty($poster)):  ?> poster="<?php echo e($poster); ?>?rand=<?php echo e(time()); ?>"  <?php  endif;  ?> class="embed-responsive-item video-js vjs-default-skin" width="640" height="360"  controls>
            </video>
        </div>
        <div class="card-body">
            <h5 class="card-title"><?php echo e($video->name); ?></h5>
            <p class="card-text"><?php echo e($video->description); ?></p>
            <?php  if(isset($_SERVER['HTTP_REFERER'])): ?>
            <a href="<?php echo e($_SERVER['HTTP_REFERER']); ?>" class="btn btn-primary"><?php echo e(__lang('Go Back')); ?></a>
            <?php  endif;  ?>
        </div>
    </div>


</div>


<script src="<?php echo e(asset('client/themes/cpanel/vendors/jquery/dist/jquery.min.js')); ?>"></script>


<script src="<?php echo e(asset('client/vendor/videojs/video.js')); ?>"></script>
<script>

    var player = videojs('video');

    player.src({
        src: "<?php echo $videoUrl; ?>",
        type: '<?php echo e($type); ?>'
    });


    jQuery('.video-js').bind('contextmenu',function() { return false; });
</script>

</body>
</html>

<?php /**PATH D:\wamp\www\lms\Resources\views/admin/video/play.blade.php ENDPATH**/ ?>
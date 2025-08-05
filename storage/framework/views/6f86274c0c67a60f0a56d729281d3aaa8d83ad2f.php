<?php $__env->startSection('content'); ?>
<div class="container post-bd mt-5">
    <div class="row pt-5">
        <div class="col-lg-2 text-center">
            <img class="photo-bd-post rounded-circle w-75" src="/img/img.png"/>
        </div>
        <div class="col-lg-6">
            <h1 class="username-bd-post"><?php echo e($request->user->name); ?></h1>
            <h4 class="ville-bd-post"><strong>Ville - </strong><?php echo e($request->city); ?></h4>
        </div>
        <div class="col-lg-4">
            <h1 class="float-right pr-5 bloodt-bd-post">
                <i class="drop-bd fas fa-tint"></i>
                <span class="bloodl-bd" id="bloodtype"><?php echo e($request->bloodType); ?></span>
            </h1>
        </div>
    </div>
    <div class="row pt-4">
        <div class="col-lg-10 ml-4">
            <div class="speech-bubble-bd p-3">
                <p class="card-address"><b>Address : </b><?php echo e($request->address); ?></p>
                <p class="h-50"><?php echo e($request->description); ?> .</p>
                <p class="date-bd float-right deadline"><?php echo e($request->deadline); ?></p>
            </div>
        </div>

    </div>
    <form action="/messagerie/<?php echo e($request->id); ?>" method="post">
        <?php echo csrf_field(); ?>
        <div class="row pt-4 pb-4">
                <div class="col-lg-8 pl-5">
                    <input type="text" class="replay-bd-post form-control" name="message" placeholder="Répondre a Cette Demande ...">
                </div>
                <div class="col-lg-2">
                    <input type="submit" class="form-control ajouter-bd-post" value="Envoyer">
                </div>
            <div class="col-lg-2 btn">
                <a href="#" id="shareDropdown" class="dropdown d-flex justify-content-end" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    <i class="fas fa-share-alt share-bd-post float-right pr-3"></i>
                </a>
                <!------share------>
                <div class="dropdown-menu dropdown-menu-right pl-1 pr-1" aria-labelledby="shareDropdown">
                    <small class="text-secondary">Partager :</small>
                    <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                        <a class="a2a_button_facebook" data-href="/bloodrequest/<?php echo e($request->id); ?>"  data-href="/bloodrequest/<?php echo e($request->id); ?>" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" ></a>
                        <a class="a2a_button_twitter" href="/bloodrequest/<?php echo e($request->id); ?>"></a>
                        <a class="a2a_button_whatsapp"></a>
                        <a class="a2a_button_reddit" data-href="/bloodrequest/<?php echo e($request->id); ?>"  href="https://www.reddit.com/submit?url=/bloodrequest/<?php echo e($request->id); ?>"></a>
                    </div>
                </div>
        </div>
            </div>
        </div>
    </form>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\dell\Desktop\BloodDonation-master\resources\views/request/request.blade.php ENDPATH**/ ?>
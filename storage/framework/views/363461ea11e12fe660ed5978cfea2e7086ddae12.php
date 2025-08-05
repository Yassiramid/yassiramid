<?php $__env->startSection('content'); ?>
<div class="container">
    <link rel="stylesheet" href="css/loginStyle.css">
    <div class="container mt-4 mb-5 contBack">
        <div class="row justify-content-center">
            <h1 class="inscTitle mb-4 ml-4 mr-4">Connexion</h1>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 bodyreg text-center order-sm-2 order-lg-2">
                <img src="img/loginImg.png" alt="" class="img-fluid inscImg mb-4 mt-4">
                <div class="conMsg">
                    <span class="deja ">Créer un Compte?</span><br> <a href="<?php echo e(route('register')); ?>"
                        class="connecter">S'inscrire</a>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-6 bodyreg justify-content-center text-center order-sm-1 order-lg-1 mt-lg-5">
                    <form method="POST" action="<?php echo e(route('login')); ?>"  onsubmit="return validat(this);">
                        <?php echo csrf_field(); ?>

                        <div class="form-group row">
                            <div class="col">
                                <input id="email" type="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="email" value="<?php echo e(old('email')); ?>" required autocomplete="email" autofocus placeholder="Address Email">

                                <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="invalid-feedback" role="alert">
                                        <strong><?php echo e($message); ?></strong>
                                    </span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col">
                                <input id="password" type="password" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="password" required autocomplete="current-password" placeholder="Mot De Pass">

                                <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="invalid-feedback" role="alert">
                                        <strong><?php echo e($message); ?></strong>
                                    </span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary creer mt-4">
                                    <?php echo e(__('Connexion')); ?>

                                </button>

                                <?php if(Route::has('password.request')): ?>
                                    <a class="btn btn-link connecter" href="<?php echo e(route('password.request')); ?>">
                                        <?php echo e(__('Mot De Passe Oublié?')); ?>

                                    </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </form>
            </div>
        </div>

    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\dell\Desktop\BloodDonation-master\resources\views/auth/login.blade.php ENDPATH**/ ?>
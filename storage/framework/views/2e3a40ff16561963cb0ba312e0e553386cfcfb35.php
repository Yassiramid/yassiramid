<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
        <meta charset="utf-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- CSRF Token -->
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    
        <title><?php echo e('Drop of Life'); ?></title>
    
        <!-- Scripts -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <link rel="stylesheet" href="/resources/demos/style.css">
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
        <script src="/js/app.js" defer></script>
        <script src="/js/jquery-3.4.1.js" ></script>
        <script src="/js/bootstrap-input-spinner.js"></script>
        <script src="/js/menu-script.js"></script>
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v6.0"></script>
        <!-- Fonts -->
        <link rel="dns-prefetch" href="//fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,700,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Styles -->
        <link href="/css/app.css" rel="stylesheet">
        <link rel="stylesheet" href="/css/card.css">
        <link rel="stylesheet" href="/css/menu.css">
    
        <!-- Styles -->
        <style>
          
            .full-height {
                height: 90vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 100px;
                color:#ff6b95;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <?php if(Route::has('login')): ?>
                <div class="top-right links">
                    <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(url('/home')); ?>">Accueil</a>
                    <?php else: ?>
                        <a href="<?php echo e(route('login')); ?>">Conexion</a>

                        <?php if(Route::has('register')): ?>
                            <a href="<?php echo e(route('register')); ?>">Inscription</a>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
            <?php endif; ?>

            <div class="content col-12" id="main-title">
                <div class="title m-b-md">
                    Drop of Life <img src="https://img.icons8.com/ios-filled/90/ff6b95/drop-of-blood.png"/>
                </div>
            </div>
            <script>
                setInterval(() => {
                    $("#main-title").fadeOut(2000);
                    
                    $(".full-height").animate({
                        height:'10vh'
                    },2000);
                }, 2000);
            </script>
        </div>
        <div class="d-flex justify-content-around col-12 ml-md-5 mr-md-5 mb-md-5">
            <a href="/?demandes" class="btn btn-outline-danger btn-sm demande-btn" role="button" aria-pressed="true">Demandes</a>
            <a href="/?publication" class="btn btn-outline-info btn-sm publics-btn" role="button" aria-pressed="true">Publications</a>
            <a href="/?evenements" class="btn btn-outline-primary btn-sm evenments-btn" role="button" aria-pressed="true">Evenements</a>
        </div>
        <div class="container-fluid row">
        <div class="col-md-8">

            <?php if(count($content)==0): ?>
                <div class="d-flex justify-content-center flex-column">
                    <h1>Aucune publication est valables pour cette recherche</h1>
                    <a name="" id="" class="btn btn-outline-danger" href="/" role="button">Accueil</a>
                </div>
            <?php endif; ?>
            <?php $__currentLoopData = $content; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php switch($item['type']):
                    case ('request'): ?>
                    <div class="card m-2 card-bd-req card-bd">
                        <a class="card-head card-bd-head" href="/bloodrequest/<?php echo e($item['request']->id); ?>">
                            <img src="img/img.png" class="mt-4 m-3 float-left card-img-top rounded-circle" alt="...">
                            <h1 class="d-inline m-3 float-right blood-type"><?php echo e($item['request']->bloodType); ?></h1>
                            <div class="mt-4 card-bd-info d-inline float-left">
                                <h3 class="m-0 card-username"><?php echo e($item['request']->user->name); ?></h3>
                                <h6 class="card-ville"><strong>Ville - </strong><?php echo e($item['request']->city); ?></h6>
                            </div>
                        </a>
                        <div class="card-body card-bd-body float-left d-inline">
                            <p class="card-address"><b>Address : </b><?php echo e($item['request']->address); ?></p>
                            <p><?php echo e($item['request']->description); ?></p>
                            <div class="d-flex justify-content-between">
                                <div class="text-info deadline"><?php echo e($item['request']->deadline); ?></div>
                                <div class="card-link d-flex">
                                    <a href="/bloodrequest/<?php echo e($item['request']->id); ?>"><i class="fas fa-paper-plane p-1"></i></a>
                                        <a href="#" id="notificationDropdown" class="dropdown d-flex justify-content-end" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                            <i class="fas fa-share-alt p-1"></i>
                                        </a>
                                        <!------share------>
                                        <div class="dropdown-menu dropdown-menu-right pl-1 pr-1" aria-labelledby="notificationDropdown">
                                            <small class="text-secondary">Partager :</small>
                                            <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                                                <a class="a2a_button_facebook" data-href="/bloodrequest/<?php echo e($item['request']->id); ?>"  data-href="/bloodrequest/<?php echo e($item['request']->id); ?>" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" ></a>
                                                <a class="a2a_button_twitter" href="/bloodrequest/<?php echo e($item['request']->id); ?>"></a>
                                                <a class="a2a_button_whatsapp"></a>
                                                <a class="a2a_button_reddit" data-href="/bloodrequest/<?php echo e($item['request']->id); ?>"  href="https://www.reddit.com/submit?url=/bloodrequest/<?php echo e($item['request']->id); ?>"></a>
                                            </div>
                                        </div>                                
                                </div>
                            </div>
                        </div>
                    </div>
                        <?php break; ?>
                    <?php case ('event'): ?>
                    <div class="card m-2 card-bd-event card-bd">
                        <div class="card-head card-bd-head">
                            <img src="img/img.png" class="mt-4 m-3 float-left card-img-top rounded-circle" alt="...">
                            <div class="mt-4 card-bd-info d-inline float-left">
                                <h3 class="m-0 card-username"><?php echo e(!$item['event']->caravan ? $item['event']->association->name : 'Caravan De Paix'); ?></h3>
                                <h6 class="card-ville"><strong>Ville - </strong><?php echo e($item['event']->city); ?></h6>
                            </div>
                        </div>
                        <div class="card-body card-bd-body float-left d-inline">
                            <h3><?php echo e($item['event']->title); ?></h3>
                            <p class="card-address"><b>Address : </b><?php echo e($item['event']->address); ?></p>
                            <p><?php echo e($item['event']->description); ?></p>
                            <p><strong>Du :</strong> <?php echo e($item['event']->dateStart); ?> - <strong>Jusqu'a :</strong> <?php echo e($item['event']->dateEnd); ?></p>
                            <p><strong>Horaires :</strong> <?php echo e($item['event']->startsAt); ?> - <?php echo e($item['event']->endsAt); ?></p>
                            <div class="d-flex justify-content-between">
                                <div class="card-link d-flex">
                                    <a href="/bloodrequest/<?php echo e($item['event']->id); ?>"><i class="fas fa-paper-plane p-1"></i></a>
                                        <a href="#" id="notificationDropdown" class="dropdown d-flex justify-content-end" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                            <i class="fas fa-share-alt p-1"></i>
                                        </a>
                                        <!------share------>
                                        <div class="dropdown-menu dropdown-menu-right pl-1 pr-1" aria-labelledby="notificationDropdown">
                                            <small class="text-secondary">Partager :</small>
                                            <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
                                                <a class="a2a_button_facebook" data-href="/bloodrequest/<?php echo e($item['event']->id); ?>"  data-href="/bloodrequest/<?php echo e($item['event']->id); ?>" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" ></a>
                                                <a class="a2a_button_twitter" href="/bloodrequest/<?php echo e($item['event']->id); ?>"></a>
                                                <a class="a2a_button_whatsapp"></a>
                                                <a class="a2a_button_reddit" data-href="/bloodrequest/<?php echo e($item['event']->id); ?>"  href="https://www.reddit.com/submit?url=/bloodrequest/<?php echo e($item['event']->id); ?>"></a>
                                            </div>
                                        </div>                                
                                </div>
                            </div>
                        </div>
                    </div> 
                        <?php break; ?>
                    <?php case ('post'): ?>
                    <div class="card m-2 card-bd-post card-bd">
                        <div class="card-head card-bd-head">
                            <img src="img/img.png" class="mt-4 m-3 float-left card-img-top rounded-circle" alt="...">
                            <div class="mt-4 card-bd-info d-inline float-left">
                                <h3 class="m-0 card-username"><?php echo e(!$item['post']->caravan ? $item['post']->association->name : 'Caravan De Paix'); ?></h3>
                            </div>
                        </div>
                        <div class="card-body card-bd-body float-left d-inline">
                            <h3 class="font-weight-bold"><?php echo e($item['post']->title); ?></h3>
                            <div class="media">
                                <div class="d-flex flex-column justify-content-around" href="#">
                                      <img class="mt-2" width="100%" src="<?php echo e($item['post']->image?? ''); ?>" alt="">
                                      <p class="m-3"><?php echo e($item['post']->description); ?></p>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between">
                                <div class="text-primary"></div>
                                <div style="font-size:20px">
                                    <a href=""><i class="fas fa-paper-plane p-1"></i></a>
                                    <a href=""><i class="fas fa-share-alt p-1"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                        <?php break; ?>
                    <?php default: ?>
                        
                <?php endswitch; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </div>
        <div class="col-md-4">
            <div class="container-fluid profile-section p-3">
                <form action="/" method="get">
                    <div class="form-group">
                        <label for="">Ville</label>
                        <select class="custom-select" name="city" id="city">
                            <option value="NaN"  selected disabled>Choisir une ville</option>
                        </select>
                    </div>
                    <div class="form-group">
                      <label for="">Type de Sang</label>
                      <select class="custom-select" name="bloodtype" id="bloodtype">
                        <option value="NaN" disabled selected>Choisir Votre Type de Sang</option>
                        <option value="A+">A positive (A+)</option>
                        <option value="A-">A negative (A-)</option>
                        <option value="B+">B positive (B+)</option>
                        <option value="B-">B negative (B-)</option>
                        <option value="O+">O positive (O+)</option>
                        <option value="O-">O negative (O-)</option>
                        <option value="AB+">AB positive (AB+)</option>
                        <option value="AB-">AB negative (AB-)</option>
                      </select>
                    </div>
                </form>
             </div>
        </div>
    </div>
    <!-- Footer -->
<footer class="page-footer font-small teal pt-4 bg-light-gray mt-5">
    <hr>
    <!-- Footer Text -->
    <div class="container-fluid text-center text-md-left">
  
      <!-- Grid row -->
      <div class="row">
  
        <!-- Grid column -->
        <div class="col-md-8 mt-md-0 row">
            <div class="d-flex justify-content-around col-12 m-3">
                <a href="#" class="" role="button" aria-pressed="true">Aide</a>
                <a href="#" class="" role="button" aria-pressed="true">Règlement</a>
                <a href="/we-are" class="" role="button" aria-pressed="true">Qui sommes-nous ?</a>
            </div>
          <!-- Content -->
        <div class="col-md-12 ml-2">
          <h5 class="text-uppercase font-weight-bold ml-2 footer-title-bd">Drop Of Life</h5>
          <p class="p-2 pb-4 footer-parag">Drop Of Life est une plateforme où vous pouvez publier des demandes de don du sang et partager vos publication les reseaux sociaux. </p>
        </div>
        </div>
        <!-- Grid column -->
  
        <hr class="clearfix w-100 d-md-none pb-3">
  
        <!-- Grid column -->
        <div class="col-md-4 py-5">
            <h5 class="p-4">Suivez nous sur</h5>
            <div class="mb-5 flex-center">
    
              <!-- Facebook -->
              <a class="ml-5 fb-ic">
                <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
              </a>
              <!-- Twitter -->
              <a class="tw-ic">
                <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
              </a>
              <!-- Google +-->
              <a class="gplus-ic">
                <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
              </a>
            
            </div>
            <div class="mb-5 flex-center">
             <!--Linkedin -->
             <a class="li-ic">
                <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
              </a>
              <!--Instagram-->
              <a class="ins-ic">
                <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
              </a>
              <!--Pinterest-->
              <a class="pin-ic">
                <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
              </a>
              </div>
    
          </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
  
    </div>
    <!-- Footer Text -->
    <hr>
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">&copy; 2021 Copyright - 
      <a href="#">DropOfLife</a>
    </div>
    <!-- Copyright -->
</footer>
  <!-- Footer -->
  <script async src="https://static.addtoany.com/menu/page.js"></script>

    </body>
    <script>
    const villes = ["Casablanca","Fès","Salé","Tanger","Marrakech","Meknès","Rabat","Oujda","Kénitra","Agadir","Tétouan","Témara","Safi","Mohammédia","Khouribga","El Jadida","Béni Mellal","Nador","Taza","Khémisset"]; 
    villes.forEach(value=>{
        $("#city").append(`<option value="${value}">${value}</option>`);
    });
    $('#city').change(function() {
        this.form.submit();
    });
    $('#bloodtype').change(function() {
        this.form.submit();
    });
    const deadlines = document.querySelectorAll(".deadline");
    moment.locale('fr');
    for (let index = 0; index < deadlines.length; index++) {
        const element = deadlines[index];
        let date = $(element).html().replace(" ","T")
        $(element).html(moment(date, "YYYYMMDD").fromNow());
    }


    if (localStorage.getItem("visited")!=null) {
        const visited = JSON.parse(localStorage.getItem("visited"));
        const lastVisit = new Date(visited.lastVisit);
        const now = new Date();
        if (now-lastVisit>1000*60*60) {
            localStorage.removeItem("visited");
        }
        $("#main-title").hide();
        $(".full-height").css('height','10vh');
    }else
        localStorage.setItem("visited",JSON.stringify({lastVisit:new Date()}));


    let search = this.location.search.split("city=");
    let selectedVals = search[1].split("&bloodtype=")

    $("#city").val(selectedVals[0]);
    $("#bloodtype").val(selectedVals[1]?selectedVals[1]:'NaN');


    
    </script>
</html><?php /**PATH C:\Users\dell\Desktop\BloodDonation-master\resources\views/welcome.blade.php ENDPATH**/ ?>
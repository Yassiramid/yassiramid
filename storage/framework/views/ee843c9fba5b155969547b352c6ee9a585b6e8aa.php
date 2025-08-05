<?php $__env->startSection('content'); ?>
    <div class="container chat-bd ">
        <div class="row">
            <div class="col-4 chat-users-bd">
                <h1 class="chat-header pt-3 text-center">
                    Discussions
                </h1>
                <div class="users-liste-bd pt-5">
                    <div class="container user-bd" id="conversationusr">
                        <?php $__currentLoopData = $conversations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $conversation): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <a href="/inbox/<?php echo e($conversation->id); ?>" class="row single-user-bd p-2 my-2" id="conversation<?php echo e($conversation->id); ?>">
                                <div class="col-lg-4 text-right">
                                    <img src="/img/img.png" class="rounded-circle img-fluid w-75" alt="">
                                </div>
                                <div class="col-lg-8">
                                    <h5 class="username-chat-bd">
                                    <?php if($conversation->user == auth()->user()): ?>
                                        
                                    <?php else: ?>                                
                                        <?php echo e($conversation->user->name); ?> 
                                    <?php endif; ?>
                                    
                                    
                                    </h5>
                                    <h6 class="ville-chat-bd is-connected">
                                        <i class="fas fa-record-vinyl"></i> Maintenant à <?php echo e($conversation->user->city); ?>

                                      </h6>
                                </div>
                            </a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    
                    </div>
                </div>
            </div>
            <div class="col-8">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 pt-3 chat-with-bd">
                           <?php if($conversation_curent!=null): ?>
                           <?php if($conversation_curent->user == auth()->user()): ?>
                           <h1 class="text-center chat-with-name-bd"> <span class="chat-ca-bd"> Conversation Avec -
                                
                           <?php else: ?>
                           <h1 class="text-center chat-with-name-bd"> <span class="chat-ca-bd"> Conversation Avec -
                           </span> <?php echo e($conversation_curent->user->name ?? ''); ?></h1>
                           <?php endif; ?>
                           <?php endif; ?>
                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 pt-3 mt-1 chat-section-bd ">
                            <div class="container" id="conversation">
                        <?php if($messages!=null): ?>
                        <?php $__currentLoopData = $messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if($message->user_id==auth()->user()->id): ?>
                            <div class="row my-3 main-user">
                                <div class="col-lg-6"></div>
                                <div class="col-lg-6 pt-2 main-user-bubble">
                                    <span class="message-bd pl-3">
                                        <?php echo e($message->message); ?> 
                                    </span>
                                    <h6 class="text-right massage-time-bd">
                                        <?php echo e($message->created_at); ?> 
                                    </h6>
                                </div>
                              </div>
                            <?php else: ?>       
                                    <div class="row my-3 other-user">
    
                                        <div class="m-1 other-user-img">
                                            <img src="/img/img.png" class="rounded-circle" width="30px" alt="">
                                        </div>
                                        <div class="col pt-2 other-user-bubble">
                                            <span class="message-bd pl-3">
                                                <?php echo e($message->message); ?> 
                                            </span>
                                            <h6 class="text-right massage-time-bd">
                                                <?php echo e($message->created_at); ?> 
                                            </h6>
                                        </div>
                                        <div class="col-lg-5"></div>
                                    </div>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div>

                </div>
                    </div>
                        <div class="row">
                            <div class="col-9 pt-3 mt-1 chat-message-bd">
                                <input type="text" id="message" autocomplete="off" name="message" onkeyup="enter(event)" class="form-control envoi-message-bd" placeholder="Envoyer un message">
                            </div>
                            <div class="col-3 pt-3 mt-1 chat-message-bd">
                                <button type="button"  id="send" onclick="send(<?php echo e($conversation_curent->id ?? null); ?>)" class=" send-icon-bd"><i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
     <script src="https://js.pusher.com/6.0/pusher.min.js"></script>
     <script>
          // $('#conversation').scrollTop($("#conversation").height());
         $("#message").keyup(function (e) { 
        console.log($(this).val());
  
        });
       var pusher = new Pusher('45e85e66fe60a9c29dc9', {
         cluster: 'eu'
       });
   
       var channel = pusher.subscribe('message-channel<?php echo e(auth()->user()->id); ?>');
       channel.bind('Message', function(data) {
        console.log(data);
        let now = new Date().toLocaleTimeString();
    let bubble = ` <div class="row my-3 other-user">
    
    <div class="col-lg-1 pt-2 other-user-img">
        <img src="/img/img.png" class="w-100  rounded-circle" alt="">
    </div>
    <div class="col-lg-6 pt-2 other-user-bubble">
        <span class="message-bd pl-3">
            ${data.message.message} 
        </span>
        <h6 class="text-right massage-time-bd">
            ${now} 
        </h6>
    </div>
    <div class="col-lg-5"></div>
</div>`;
          $('#conversation').append(bubble);
          $('#conversation').scrollTop($('#conversation').height());
       });

       function enter(event) { 
        if (event.keyCode==13) {
            send('<?php echo e($conversation_curent->id ?? null); ?>}');
            var objDiv = document.getElementById("conversation");
            objDiv.scrollTop = objDiv.scrollHeight ;
            }
        }
 
     </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\dell\Desktop\BloodDonation-master\resources\views/messagerie.blade.php ENDPATH**/ ?>
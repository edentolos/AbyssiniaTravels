            <div class="col-md-4">

               


                <!-- Login -->
                <?php

                    if (!isset($_SESSION['s_username'])) {
                        ?>
                            <div class="well">
                                <h4>Login</h4>
                                <form action="includes/login.php" method="post">

                                    
                                        <input name="username" type="text" class="form-control" placeholder="Username">
                                        <input name="password" type="password" class="form-control" placeholder="Password" style="margin-top: 10px;">

                                        <button class="btn btn-primary" name="login" style="margin-left: 130px; margin-top: 10px;">Login</button>
                                    
                                </form>
                                <!-- /.input-group -->
                            </div>
                        
                <?php } ?>

                



            </div>
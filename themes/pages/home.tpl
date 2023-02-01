{% extends 'layout.php' %}
{% block body %}
<section class="home">
    <div class="container">
        <div class="card mx-auto">
            <div class="card__profile">
                <div class="row">
                    <div class="col-md-5">
                        <div class="text-center">
                            <div class="img">
                                <img src="https://images.unsplash.com/photo-1610216705422-caa3fcb6d158?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGZhY2V8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
                            </div>
                            <div>
                                <div class="name mt-4">
                                    <h2><?=getSession('user_name')?></h2>
                                    <h4><?=getSession('email')?></h4>
                                </div>
                                <div class="link__change-password"><i class="fa-solid fa-key me-2"></i>Change Password</div>
                                <div class="logout">
                                    <a href="logout">Log out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="infos">
                            <p class="text">
                                Welcome to Homepage
                            </p>
                            <div class="form-style">
                                <form method="POST" action="update" id="updateProfile">
                                    <div class="form-group pb-3">
                                        <input type="text" placeholder="Name" name="user_name" value="<?=getSession('user_name')?>" class="form-control" required>
                                    </div>
                                    <div class="form-group pb-3">
                                        <input type="date" name="birthday" value="<?=getSession('birthday')?>" class="form-control" required>
                                    </div>
                                    <div class="pb-2">
                                        <button type="submit" name="update" class="btn btn-dark w-100 fw-bold mt-2">Update</button>
                                    </div>
                                </form>
                            </div>         
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-changepass">
                <div class="btn btn-back">➜</div>
                <div class="form-style">
                    <form method="POST" action="changePassword" id="changePassForm">
                        <div class="form-group pb-3">
                            <input type="password" name="password_old" placeholder="Old Password" class="form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="password" name="password_new" placeholder="New Password" class="password_new form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="password" name="password_confirm" placeholder="Confirm Password" class="password_confirm form-control">
                        </div>
                        <div class="pb-2">
                            <button type="submit" name="changePassword" class="btn btn-dark w-100 fw-bold mt-2">Change</button>
                        </div>
                    </form>        
                </div>
            </div>
        </div>
    </div>
</section>
{% endblock %}
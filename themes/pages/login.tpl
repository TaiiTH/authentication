{% extends 'layout.php' %}
{% block body %}
<section class="login">
    <div class="container">
        <div class="row m-5 no-gutters shadow-lg">
            <div class="col-md-6 d-none d-md-block p-0">
                <img src="https://images.unsplash.com/photo-1566888596782-c7f41cc184c5?ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80"
                    class="img-fluid" style="min-height:100%;" />
            </div>
            <div class="col-md-6 bg-white p-5">
                <h3 class="pb-3 text-center">Login Form</h3>
                <?php if(getCookie('error')){ ?>
                    <div class="alert alert-danger" role="alert"><?php echo getCookie('error'); ?></div>
                <?php } ?>  
                <div class="form-style">
                    <form method="POST" action="login" id="loginForm">
                        <div class="form-group pb-3">
                            <input type="email" name="email" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="password" name="password" placeholder="Password" class="password form-control">
                        </div>
                        <div class="d-flex flex-wrap align-items-center justify-content-between pb-2">
                            <div class="d-flex align-items-center"><input name="" type="checkbox" value="" /> <span
                                    class="ps-2 fw-bold">Remember Me</span></div>
                            <div><a href="email-verification">Forget Password?</a></div>
                        </div>
                        <div class="pb-2">
                            <div id="recaptcha"></div>
                        </div>
                        <div class="pb-2">
                            <button type="submit" name="login" class="btn btn-dark w-100 fw-bold mt-2">Submit</button>
                        </div>
                    </form>
                    <div class="sideline">OR</div>
                    <div>
                        <button type="submit" class="btn btn-primary w-100 fw-bold mt-2"><i class="fa-brands fa-facebook"></i> Login With Facebook</button>
                    </div>
                    <div class="pt-4 text-center">
                        Dont' have an account? <a href="signup">Sign Up</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
{% endblock %}
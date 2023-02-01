{% extends 'layout.php' %}
{% block body %}
<section class="signup">
    <div class="container">
        <div class="row m-5 no-gutters shadow-lg">
            <div class="col-md-6 d-none d-md-block p-0">
                <img src="https://images.unsplash.com/photo-1566888596782-c7f41cc184c5?ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80"
                    class="img-fluid" style="min-height:100%;" />
            </div>
            <div class="col-md-6 bg-white p-5">
                <h3 class="pb-3 text-center">Sign Up</h3>
                <?php if(getCookie('error')){ ?>
                    <div class="alert alert-danger" role="alert"><?php echo getCookie('error'); ?></div>
                <?php } ?>                 
                <div class="form-style">
                    <form method="POST" action="signup" id="signupForm">
                        <div class="form-group pb-3">
                            <input type="text" placeholder="Name" name="user_name" class="form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="date" name="birthday" class="form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="email" placeholder="Email" class="form-control" name="email">
                        </div>
                        <div class="form-group pb-3">
                            <input type="password" placeholder="Password" name="password" class="password form-control">
                        </div>
                        <div class="form-group pb-3">
                            <input type="password" placeholder="Confirm Password" name="confirmPassword" class="confirm-password form-control">
                        </div>
                        <div class="p-3 text-center">
                            Already have an account? <a href="login">Log in</a>
                        </div>
                        <div class="pb-2">
                            <button type="submit" name="register" class="btn btn-dark w-100 fw-bold mt-2">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
{% endblock %}
<section class="verification">
    <div class="container">
        <div class="row no-gutters shadow-lg">
            <div class="col-12 bg-white p-5 rounded-3">
                <h3 class="pb-3 text-center">Find Your Account</h3>
                <p>Please enter your email address or mobile number to search for your account.</p>
                <div class="form-style">
                    <form method="POST" action="?action=checkemail">
                        <div class="form-group pb-3">
                            <input type="email" placeholder="Email address" class="form-control px-0" name="email">
                        </div>
                        <div class="pb-2 d-flex justify-content-end align-items-center gap-3">
                            <a href="?page=login" class="btn btn-dark fw-bold mt-2">Cancel</a>
                            <button type="submit" name="checkemail" class="btn btn-primary fw-bold mt-2">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

$(document).ready(function () {
    $.validator.addMethod("validatePassword", function (value, element) {
        return this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,16}$/i.test(value);
    }, "Passwords must be from 6 to 16 characters, including at least a number, an uppercase letter and a lowercase letter");

    $("#loginForm").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                validatePassword: true,
            },
        }
    });
    $("#signupForm").validate({
        rules: {
            user_name: {
                required: true,
            },
            email: {
                required: true,
                email: true
            },
            birthday: {
                required: true,
            },
            password: {
                required: true,
                validatePassword: true,
            },
            confirmPassword: {
                required: true,
                equalTo: ".password"
            }
        }
    })
    $("#updateProfile").validate({
        rules: {
            user_name: {
                required: true,
                minlength: 3,
            },
            birthday: {
                required: true,
            },
        }
    });
    $("#changePassForm").validate({
        rules: {
            password_old: {
                required: true,
                validatePassword: true,
            },
            password_new: {
                required: true,
                validatePassword: true,
            },
            password_confirm: {
                required: true,
                equalTo: ".password_new",
            }
        }
    })

    $(".link__change-password").click(function () {
        $(".card__profile").slideToggle(500);
        $(".form-changepass").slideToggle(500);
    });
    $(".btn-back").click(function () {
        $(".card__profile").slideToggle(500);
        $(".form-changepass").slideToggle(500);
    });

    $('textarea#content').tinymce({
        height: 500,
        menubar: false,
        plugins: [
            'advlist', 'autolink', 'lists', 'link', 'image', 'charmap', 'preview',
            'anchor', 'searchreplace', 'visualblocks', 'fullscreen',
            'insertdatetime', 'media', 'table', 'code', 'help', 'wordcount'
        ],
        toolbar: 'undo redo | blocks | bold italic backcolor | ' +
            'alignleft aligncenter alignright alignjustify | ' +
            'bullist numlist outdent indent | removeformat | help'
    });
})

// var errorPass = [];

// function passwordValidation() {
//     var validPass = "Must contain at least ";
//     for (i = 0; i < errorPass.length; i++) {
//         validPass += errorPass[i];
//         if (i < errorPass.length - 1) {
//             validPass += " and ";
//         }
//     }
//     return validPass;
// }

// var passwordInput = document.querySelector(".password");
// var confirmPasswordSignup = document.querySelector(".confirm-password");

// passwordInput.onkeyup = function () {
//     // Validate lowercase letters
//     if (passwordInput.value.match(/[a-z]/g)) {
//         errorPass.indexOf('one lowercase letter') !== -1 && errorPass.splice(errorPass.indexOf('one lowercase letter'), 1);
//         passwordInput.setAttribute('title', passwordValidation());
//     } else {
//         errorPass.indexOf('one lowercase letter') === -1 && errorPass.push('one lowercase letter');
//         passwordInput.setAttribute('title', passwordValidation());
//     }
//     // Validate capital letters
//     if (passwordInput.value.match(/[A-Z]/g)) {
//         errorPass.indexOf('one uppercase letter') !== -1 && errorPass.splice(errorPass.indexOf('one uppercase letter'), 1);
//         passwordInput.setAttribute('title', passwordValidation());
//     } else {
//         errorPass.indexOf('one uppercase letter') === -1 && errorPass.push('one uppercase letter');
//         passwordInput.setAttribute('title', passwordValidation());
//     }
//     // Validate numbers
//     if (passwordInput.value.match(/[0-9]/g)) {
//         errorPass.indexOf('one number') !== -1 && errorPass.splice(errorPass.indexOf('one number'), 1);
//         passwordInput.setAttribute('title', passwordValidation());
//     } else {
//         errorPass.indexOf('one number') === -1 && errorPass.push('one number');
//         passwordInput.setAttribute('title', passwordValidation());
//     }
//     // Validate length
//     if (passwordInput.value.length >= 6) {
//         errorPass.indexOf('8 or more characters') !== -1 && errorPass.splice(errorPass.indexOf('8 or more characters'), 1);
//         passwordInput.setAttribute('title', passwordValidation());
//     } else {
//         errorPass.indexOf('8 or more characters') === -1 && errorPass.push('8 or more characters');
//         passwordInput.setAttribute('title', passwordValidation());
//     }
// }

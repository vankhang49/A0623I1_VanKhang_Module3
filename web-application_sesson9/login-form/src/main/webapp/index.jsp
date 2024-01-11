<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Login</title>
</head>
<body>

<section>
    <div class="form-box">
        <div class="form-value">
            <form action="/restaurant" method="post">
                <h2>Login</h2>

                <div class="inputbox">
                    <i class="fa-regular fa-envelope icon"></i>
                    <input type="text" name="username" required>
                    <label for="">Username</label>
                </div>

                <div class="inputbox">
                    <i class="fa-solid fa-lock icon"></i>
                    <input type="password" name="password" required>
                    <label for="">Password</label>
                </div>

                <div class="forget">
                    <label for="">
                        <input type="checkbox" name="" id="">
                        Remember Me
                        <a href="#">Forget password</a>
                    </label>
                </div>

                <button type="submit" id="submit">Log in</button>

                <div class="registrer">
                    <p>
                        Don't have a account
                        <a href="">Registrer</a>
                    </p>
                </div>

            </form>
        </div>
    </div>

</section>

<script src="https://kit.fontawesome.com/bec9f83658.js" crossorigin="anonymous"></script>
</body>
</html>
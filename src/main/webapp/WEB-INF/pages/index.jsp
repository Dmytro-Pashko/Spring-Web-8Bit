<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <meta charset="utf-8"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="icon" type="image/png" href="/resources/images/fav_icon.jpg" />

    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

    <style type="text/css">

        @font-face {
            font-family:"Custom_Pixel_Font";
            src:url("/resources/fonts/stan0955.eot") format("eot"),
            url("/resources/fonts/stan0955.woff") format("woff"),
            url("/resources/fonts/stan0955.ttf") format("truetype"),
            url("/resources/fonts/stan0955.svg#Standard0955") format("svg");
            font-weight:normal;
            font-style:normal;
        }

        #wrapper {
            width: 500px;
            margin: 0 auto;
            font-family: helvetica;
            font-size: 1.2em;
        }

        input {
            font-family: "Custom_Pixel_Font";
            width: 300px;
            height: 40px;
            padding: 5px;
            border-radius: 5px;
            font-size: 1.2em;
            border: 1px solid gray;
            margin-bottom: 10px;
        }

        label {
            width: 120px;
            float: left;
            padding-top: 15px;
        }

        #submitButton {
            font-family: "Custom_Pixel_Font";
            height: 50px;
            margin-left: 120px;
            margin-top: 15px;
            width: 100px;
        }

        #error {
            font-family: "Custom_Pixel_Font";
            margin: 20px;
            color: red;
        }

        #signUp{
            font-family: "Custom_Pixel_Font";
            height: 50px;
            margin-left: 95px;
            margin-top: 15px;
            width: 100px;
        }

        #content {
            top: 55%; /* Отступ в процентах от верхнего края окна */
            left: 50%; /* Отступ в процентах от левого края окна */
            width: 450px; /* Ширина блока */
            height: 450px; /* Высота блока */
            position: absolute; /* Абсолютное позиционирование блока */
            margin-top: -225px; /* Отрицательный отступ от верхнего края страницы, должен равняться половине высоты блока со знаком минус */
            margin-left: -225px; /* Отрицательный отступ от левого края страницы, должен равняться половине высоты блока со знаком минус */
        }

        body{
            padding: 0;
            margin: 0;
        }

        #container {
            background-image: url("resources/images/background.gif");
            width: 100%;
            height: 100%;
            background-size: cover;

        }

        #validationForm{

            font-family: "Custom_Pixel_Font";
            font-size: 75%;
            border: 1px solid grey;
            border-radius: 10px;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            color: black;
            padding: 15px;
        }


    </style>

</head>

<body>

<div id="container">

    <div id="content">

        <div class="fixedWidth">


            <div id="wrapper">

                <div id="error">
                ${message}
            </div>
                <form id="validationForm" method="post" action="/login" commandName="Login">

                    <label for="userlogin">Login</label>
                    <input id="userlogin" name="userlogin" type="text" placeholder="Login">

                    <label for="password">Full Name</label>
                    <input id="password" name="password" type="password" placeholder="Password">

                    <input id="submitButton" type="submit" value="Sign in"/>

                    <form>
                        <input id="signUp" type="button" value="Sign up" onClick='location.href="/register"'>
                    </form>

                </form>

            </div>


        </div>

    </div>


</div>
</body>
</html>

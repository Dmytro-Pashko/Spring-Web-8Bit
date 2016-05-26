<%--
  Created by IntelliJ IDEA.
  User: Antilamer
  Date: 24.05.2016
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Antilamer's site</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="images/koza.png" />

    <style type="text/css">

        body{
            margin: 0;
            font-family: Arial, Helmet, Freesans, sans-serif;
            background: linear-gradient(#f4f2f2, #565454);
        }

        h1{
            color: #0f0e0e;
        }

        #topbar{
            background-color: #3a3737;
            width: 100%;
            height: 50px;
            color: #c9c3c3;
            position: fixed;
            z-index: 10;
        }
        #topbar a{
            position: relative;
            left: 45%;
            padding-top: 0px;
            margin-top: 0;
            font-weight: bold;
            font-size: 2.5em;
            font-family: Impact, Charcoal, sans-serif;
            z-index: 5;
            text-decoration: none;
            color: #c9c3c3;
        }
        #topbar a:visited{
            color: #c9c3c3;
            text-decoration: none;
        }
        #emptyBar{
            background-color: black;
            height: 50px;
            width: 100%;
            float: left;
        }

        .fixedWidth{
            width: 1050px;
            margin: 0 auto;
            position: relative;
            z-index: 5;
            background-color: #f4f2f2;
        }

        .break{
            clear: both;
        }

        #downBar{
            background-color: #565454;
            width: 100%;
            height: 80px;
            color: #c9c3c3;
            font-family: "Comic Sans MS", cursive, sans-serif;
            font-weight: bold;
            font-size: 2em;
            margin: 0;
            padding: 0;

        }
        #downBarP{
            padding: 40px 0px 0px 0px;
            margin: 0;
            float: left;
        }
        #downBar img{
            float: left;
            margin-right: 100px;
        }

        #content{
            z-index: 5;
        }
        #content div{
            padding: 7px;
        }
        #content a{
            color: #605a5a;
            text-decoration: none;
            font-size: 2em;
            background-image: url("http://217.199.187.200/antilamer.com/images/koza.png");
            background-repeat: no-repeat;
            background-position: left center;
            background-size: 40px;
            padding-left: 45px;
        }
        #content a:hover{
            color: #3f3d3d;
            font-size: 2.2em;
        }

        #firstImg{
            float: right;
            width: 500px;
        }

        #secondImg{
            float: left;
            width: 500px;
            padding-right: 15px;
        }

        #bigFour{
            width: 250px;
            float: left;
            position: relative;
            left: 140px;
            background-color: #d3d1d1;
            border-radius: 40px;
        }
        #bigFour ul{
            list-style: none;
            position: relative;
            left: -7px;
        }
        #bigFour h1{
            position: relative;
            left: 20px;
        }
        #bigFour a{
            color: #605a5a;
            text-decoration: none;
            font-size: 2em;
            background-image: url("images/list.png");
            background-repeat: no-repeat;
            background-position: left center;
            background-size: 40px;
            padding-left: 45px;
        }
        #bigFour a:hover{
            color: #3f3d3d;
        }

        .bb{
            border-bottom: 1px solid #f4f2f2;
        }

        #video1{

            position: relative;
            top:52px;
            float: right;
        }
        #video2{
            margin-top: 50px;
            float: left;
        }

        #more{
            float: left;
            position: relative;
            background-color: #d3d1d1;
            border-radius: 40px;
            margin-top: 40px;
        }
        #more p{
            position: relative;
            left: -25px
        }
        #more a{
            background-image: none;
        }
        #more a:hover{
            color: black;
            text-decoration: underline;
            font-size: 2em;
        }

        #moreW{
            font-size: 2em;
            padding-left: 150px
        }

        #signature{
            float: right;
            margin: 0;
        }



    </style>

</head>

<body>

<div id="container">

    <div id="emptyBar"></div>

    <div id="topbar">

        <a href="index.html">Rock-music</a>

    </div>


    <div class="break"></div>


    <div id="downBar">

        <div class="fixedWidth">

            <img src="http://217.199.187.200/antilamer.com/images/koza.png">

            <p id="downBarP">Some information about rock music</p>

        </div>

    </div>


    <div id="content">

        <div class="fixedWidth">

            <img id="firstImg" src="http://images.popmatters.com/news_art/s/shutterstock_170792651.jpg">

            <p><strong>Rock music</strong> is a genre of popular music that originated as "rock and roll" in the United States in the 1950s, and developed into a range of different styles in the 1960s and later, particularly in the United Kingdom and the United States. It has its roots in 1940s' and 1950s' rock and roll, itself heavily influenced by blues, rhythm and blues and country music. Rock music also drew strongly on a number of other genres such as electric blues and folk, and incorporated influences from jazz, classical and other musical sources.</p>

            <p>Musically, rock has centered on the electric guitar, usually as part of a rock group with electric bass guitar and drums. Typically, rock is song-based music usually with a 4/4 time signature using a verse-chorus form, but the genre has become extremely diverse. Like pop music, lyrics often stress romantic love but also address a wide variety of other themes that are frequently social or political in emphasis. The dominance of rock by white, male musicians has been seen as one of the key factors shaping the themes explored in rock music. Rock places a higher degree of emphasis on musicianship, live performance, and an ideology of authenticity than pop music.</p>

            <p>By the late 1960s, referred to as the "golden age" or "classic rock" period, a number of distinct rock music subgenres had emerged, including hybrids like blues rock, folk rock, country rock, raga rock, and jazz-rock fusion, many of which contributed to the development of psychedelic rock, which was influenced by the countercultural psychedelic scene. New genres that emerged from this scene included progressive rock, which extended the artistic elements; glam rock, which highlighted showmanship and visual style; and the diverse and enduring subgenre of heavy metal, which emphasized volume, power, and speed. In the second half of the 1970s, punk rock reacted against the perceived overblown, inauthentic and overly mainstream aspects of these genres to produce a stripped-down, energetic form of music valuing raw expression and often lyrically characterised by social and political critiques. Punk was an influence into the 1980s on the subsequent development of other subgenres, including new wave, post-punk and eventually the alternative rock movement. From the 1990s alternative rock began to dominate rock music and break through into the mainstream in the form of grunge, Britpop, and indie rock. Further fusion subgenres have since emerged, including pop punk, rap rock, and rap metal, as well as conscious attempts to revisit rock's history, including the garage rock/post-punk and synthpop revivals at the beginning of the new millennium.</p>

            <img id="secondImg" src="http://ecx.images-amazon.com/images/I/91UyF5dJq%2BL._UL1500_.jpg">

            <p>Rock music has also embodied and served as the vehicle for cultural and social movements, leading to major sub-cultures including mods and rockers in the UK and the hippie counterculture that spread out from San Francisco in the US in the 1960s. Similarly, 1970s punk culture spawned the visually distinctive goth and emo subcultures. Inheriting the folk tradition of the protest song, rock music has been associated with political activism as well as changes in social attitudes to race, sex and drug use, and is often seen as an expression of youth revolt against adult consumerism and conformity.</p>

            <div id="bigFour">

                <h1>The Big Four:</h1>

                <ul>

                    <li class="bb"><a href="metallica">Metallica</a></li>
                    <li class="bb"><a href="megadeth">Megadeth</a></li>
                    <li class="bb"><a href="anthrax">Anthrax</a></li>
                    <li class="bb"><a href="slayer">Slayer</a></li>

                </ul>



            </div>

            <div class="break"></div>

        <iframe id="video1" width="500" height="315" src="https://www.youtube.com/embed/04854XqcfCY" frameborder="0" allowfullscreen></iframe>

        <iframe id="video2" width="500" height="315" src="https://www.youtube.com/embed/n4RjJKxsamQ" frameborder="0" allowfullscreen></iframe>

        <div class="break"></div>

        <div id="more">

            <p><span id="moreW"><strong>More:</strong></span></p>

            <p><a class="ref" href="http://217.199.187.200/antilamer.com/mail.php">Send mail to me</a></p>

            <p><a class="ref" href="http://217.199.187.200/antilamer.com/mysql/index.php">Secret Diary with registration</a></p>

            <p><a class="ref" href="http://217.199.187.200/antilamer.com/php/predictor.php">Weather Predictor</a></p>

            <p><a class="ref" href="http://217.199.187.200/antilamer.com/reaction.html">Test your reactions!</a></p>

            <p><a class="ref" href="http://217.199.187.200/antilamer.com/player.html">Code Player</a></p>


        </div>

        <div class="break"></div>

        <br><hr>

        <h4>Created by Valery Sloboda</h4>


    </div>

</div>


</div>
</body>
</html>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Homagewebsite</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html lang="en">
<style>
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    border: none;
    outline: none;
    scroll-behavior: smooth;
    font-family: 'Poppins', sans-serif;
}

:root {
    --bg-color: #fdfdfd;
    --text-color: #333;
    --main-color: #fad648;
    --white-color: #fdfdfd;
    --shadow-color: rgba(0, 0, 0, .2);
}

*::selection {
    background: var(--main-color);
    color: var(--bg-color);
}

.dark-mode {
    --bg-color: black;
    --text-color: #fdfdfd;
    --shadow-color: #fad648;
}

html {
    font-size: 62.5%;
    overflow-x: hidden;
}

body {
    background: var(--bg-color);
    color: var(--text-color);
}

.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 2rem 7%;
    background: transparent;
    display: flex;
    align-items: center;
    z-index: 100;
    transition: .5s;
}

.header.sticky {
    background: var(--bg-color);
    box-shadow: 0 .1rem 1rem var(--shadow-color);
}

.logo {
    font-size: 2.5rem;
    color: var(--main-color);
    font-weight: 600;
    margin-right: auto;
}

.navbar a {
    position: relative;
    font-size: 1.7rem;
    color: var(--white-color);
    font-weight: 500;
    margin-right: 3.5rem;
}

.header.sticky .navbar a {
    color: var(--text-color);
}

.header.sticky .navbar a.active {
    color: var(--main-color);
}

.navbar a.active::before {
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: .2rem;
    background: var(--white-color);
}

.header.sticky .navbar a::before {
    background: var(--main-color);
    opacity: .7;
}

#darkMode-icon {
    font-size: 2.4rem;
    color: var(--white-color);
    cursor: pointer;
}

.header.sticky #darkMode-icon {
    color: var(--text-color);
    opacity: .9;
}

#menu-icon {
    font-size: 3.6rem;
    color: var(--text-color);
    display: none;
}

section {
    min-height: 100vh;
    padding: 10rem 7% 2rem;
}

.home {
    display: flex;
    align-items: center;
}

.home .home-content {
    max-width: 44rem;
}

.home-content h3 {
    font-size: 3.2rem;
    font-weight: 700;
    line-height: .3;
}

.home-content h1 {
    font-size: 5.6rem;
    font-weight: 700;
    margin-bottom: .3rem;
}

.home-content p {
    font-size: 1.6rem;
}

.home-content .social-media a {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 4rem;
    height: 4rem;
    background: transparent;
    border: .2rem solid var(--main-color);
    border-radius: 50%;
    box-shadow: 0 .2rem .5rem var(--shadow-color);
    font-size: 2rem;
    color: var(--main-color);
    margin: 2.5rem 1.5rem 3rem 0;
    transition: .5s ease;
}

.home-content .social-media a:hover {
    background: var(--main-color);
    color: var(--white-color);
}

.btn {
    display: inline-block;
    padding: 1.2rem 2.8rem;
    background: var(--main-color);
    border-radius: .6rem;
    box-shadow: 0 .2rem .5rem var(--shadow-color);
    font-size: 1.6rem;
    color: var(--white-color);
    letter-spacing: .1rem;
    font-weight: 600;
    border: .2rem solid transparent;
    transition: .5s ease;
}

.btn:hover {
    background: transparent;
    color: var(--main-color);
    border-color: var(--main-color);
}

.home .profession-container {
    position: absolute;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
    width: 100vw;
    height: 100vh;
    overflow: hidden;
    pointer-events: none;
}

.home .profession-container .profession-box {
    position: absolute;
    top: 0;
    right: 0;
    width: 768px;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    animation: professionRotate 13s ease-out infinite;
}

@keyframes professionRotate {

    0%,
    20% {
        transform: rotate(0deg);
    }

    25%,
    45% {
        transform: rotate(-90deg);
    }

    50%,
    70% {
        transform: rotate(-180deg);
    }

    75%,
    95% {
        transform: rotate(-270deg);
    }

    100% {
        transform: rotate(-360deg);
    }
}

.home .profession-box .profession {
    position: absolute;
    left: 0;
    display: flex;
    align-items: center;
    flex-direction: column;
    color: var(--main-color);
    transform: rotate(calc(360deg / 4 * var(--i)));
    transform-origin: 384px;
    background: var(--bg-color);
    padding: 13px 0;
}

.home .profession-box .profession:nth-child(1) i {
    margin-right: 15px;
}

.home .profession-box .profession:nth-child(2),
.home .profession-box .profession:nth-child(4) {
    padding-bottom: 20px;
}

.home .profession i {
    font-size: 3.8rem;
}

.home .profession h3 {
    font-size: 3.2rem;
    line-height: 1;
    font-weight: 600;
}

.home .profession-box .circle {
    width: 560px;
    height: 560px;
    border: 3px solid var(--main-color);
    border-radius: 50%;
    z-index: -1;
}

.home .profession-container .overlay {
    position: absolute;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border-top: 50vh solid var(--main-color);
    border-right: 384px solid var(--main-color);
    border-bottom: 50vh solid var(--main-color);
    border-left: 384px solid transparent;
}

.home-img img {
    position: absolute;
    bottom: 0;
    right: 40px;
    pointer-events: none;
    max-width: 40
px;
    max-height: 100vh;
}

span {
    color: var(--main-color);
}

.about {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 4rem;
}

.about-img img {
    width: 40vw;
}

.heading {
    font-size: 4.5rem;
    text-align: center;
}

.about-content h2 {
    text-align: left;
    line-height: 1.2;
}

.about-content h3 {
    font-size: 2rem;
}

.about-content p {
    font-size: 1.6rem;
    margin: 2rem 0 3rem;
}

.services {
    min-height: auto;
    padding-bottom: 10rem;
}

.services h2 {
    margin-bottom: 5rem;
}

.services .services-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    gap: 2rem;
}

.services-container .services-box {
    flex: 1 1 30rem;
    background: var(--bg-color);
    padding: 3rem 2rem 4rem;
    border-radius: 2rem;
    box-shadow: 0 .1rem .5rem var(--shadow-color);
    text-align: center;
    border-top: .6rem solid var(--main-color);
    border-bottom: .6rem solid var(--main-color);
    transition: .5s ease;
}

.services-container .services-box:hover {
    box-shadow: 0 .1rem 2rem var(--shadow-color);
    transform: scale(1.02);
}

.services-box i {
    font-size: 7rem;
    color: var(--main-color);
}

.services-box h3 {
    font-size: 2.6rem;
    transition: .5s ease;
}

.services-box:hover h3 {
    color: var(--main-color);
}

.services-box p {
    font-size: 1.6rem;
    margin: 1rem 0 3rem;
}

.portfolio {
    min-height: auto;
    padding-bottom: 10rem;
}

.portfolio h2 {
    margin-bottom: 4rem;
}

.portfolio .portfolio-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    align-items: center;
    gap: 2.5rem;
}

.portfolio-container .portfolio-box {
    position: relative;
    display: flex;
    border-radius: 2rem;
    box-shadow: 0 0 1rem rgba(0, 0, 0, .1);
    overflow: hidden;
}

.portfolio-box img {
    width: 100%;
    transition: .5s ease;
}

.portfolio-box:hover img {
    transform: scale(1.1);
}

.portfolio-box .portfolio-layer {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(rgba(0, 0, 0, .1), var(--main-color));
    color: var(--white-color);
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    text-align: center;
    padding: 0 4rem;
    opacity: 0;
    transition: .5s ease;
}

.portfolio-box:hover .portfolio-layer {
    opacity: 1;
}

.portfolio-layer h4 {
    font-size: 3rem;
}

.portfolio-layer p {
    font-size: 1.6rem;
    margin: .3rem 0 1rem;
}

.portfolio-layer a {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 5rem;
    height: 5rem;
    background: var(--white-color);
    border-radius: 50%;
}

.portfolio-layer a i {
    font-size: 2rem;
    color: #333;
}

.testimonial-container {
    display: flex;
    align-items: center;
    flex-direction: column;
    width: 100%;
    padding: 5rem 1rem;
}

.testimonial-container .testimonial-wrapper {
    position: relative;
    max-width: 90rem;
    width: 100%;
    padding: 5rem;
}

.testimonial-wrapper .testimonial-box {
    padding: 1rem;
    border-radius: 2rem;
    overflow: hidden;
}

.testimonial-content .testimonial-slide {
    display: flex;
    align-items: center;
    flex-direction: column;
    background: var(--bg-color);
    border-radius: 2rem;
    box-shadow: 0 .1rem .5rem var(--shadow-color);
    padding: 3rem 5rem;
    border-top: .8rem solid var(--main-color);
    border-bottom: .8rem solid var(--main-color);
}

.testimonial-slide img {
    width: 14rem;
    height: 14rem;
    object-fit: cover;
    border-radius: 50%;
    border: .5rem solid var(--bg-color);
    outline: .5rem solid var(--main-color);
}

.testimonial-slide h3 {
    font-size: 2.5rem;
    margin: 2rem 0;
}

.testimonial-slide p {
    font-size: 1.4rem;
    text-align: center;
}

.testimonial-box .swiper-button-next,
.testimonial-box .swiper-button-prev {
    color: var(--main-color);
}

.testimonial-box .swiper-button-next {
    right: 0;
}

.testimonial-box .swiper-button-prev {
    left: 0;
}

.testimonial-box .swiper-pagination-bullet {
    background: rgba(0, 0, 0, .8);
}

.testimonial-box .swiper-pagination-bullet-active {
    background: var(--main-color);
}

.contact {
    min-height: auto;
    padding-bottom: 7rem;
}

.contact h2 {
    margin-bottom: 3rem;
}

.contact form {
    max-width: 70rem;
    margin: 1rem auto;
    text-align: center;
    margin-bottom: 3rem;
}

.contact form .input-box {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.contact form .input-box input,
.contact form textarea {
    width: 100%;
    padding: 1.5rem;
    font-size: 1.6rem;
    color: var(--text-color);
    background: var(--bg-color);
    border-radius: .8rem;
    margin: .7rem 0;
    box-shadow: 0 .1rem .5rem var(--shadow-color);
}

.contact form .input-box input {
    width: 49%;
}

.contact form textarea {
    resize: none;
}

.contact form .btn {
    margin-top: 2rem;
    cursor: pointer;
}

.footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    padding: 2rem 7%;
    background: var(--main-color);
}

.footer-text p {
    font-size: 1.6rem;
    color: var(--white-color);
}

.footer-iconTop a {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    padding: .8rem;
    background: var(--white-color);
    border-radius: .8rem;
    border: .2rem solid var(--main-color);
    outline: .2rem solid transparent;
    transition: .5s ease;
}

.footer-iconTop a:hover {
    outline-color: var(--white-color);
}

.footer-iconTop a i {
    font-size: 2.4rem;
    color: #333;
}


/* BREAKPOINTS */
@media (max-width: 1200px) {
    html {
        font-size: 55%;
    }

    .home .profession-container .profession-box {
        right: -10%;
    }

    .home .profession-container .overlay {
        right: -6%;
    }

    .home-img img {
        right: 0;
    }
}

@media (max-width: 1100px) {
    .home .profession-container .profession-box {
        right: -15%;
    }

    .home-img img {
        max-width: 420px;
    }
}

@media (max-width: 1024px) {
    .header {
        padding: 2rem 3%;
    }

    section {
        padding: 10rem 3% 2rem;
    }

    .home .profession-container .profession-box {
        right: -20%;
    }

    .home .profession-container .overlay {
        right: -12%;
    }

    .home-img img {
        max-width: 400px;
    }
}

@media (max-width: 991px) {

    .navbar a:nth-child(1) {
        color: var(--main-color);
    }

    .navbar a.active::before {
        background: var(--main-color);
        opacity: .7;
    }

    .home .home-content {
        max-width: 50rem;
    }

    .home .profession-container .profession-box {
        right: -35%;
    }

    .home .profession-container .overlay {
        right: -30%;
    }

    .home-img img {
        display: none;
    }

    .footer {
        padding: 2rem 3%;
    }
}

@media (max-width: 896px) {
    .navbar a:nth-child(2) {
        color: var(--main-color);
    }

    .home .profession-container .profession-box {
        right: -50%;
    }

    .home .profession-container .overlay {
        right: -43%;
    }
}

@media (max-width: 879px) {
    .portfolio .portfolio-container {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 780px) {
    .navbar a:nth-child(2) {
        color: var(--white-color);
    }
}

@media (max-width: 768px) {
    #menu-icon {
        display: block;
    }

    #darkMode-icon {
        position: absolute;
        right: 7rem;
        font-size: 2.6rem;
        color: var(--text-color);
        margin-bottom: .1rem;
    }

    .navbar {
        position: absolute;
        top: 100%;
        left: 0;
        width: 100%;
        padding: 1rem 3%;
        background: var(--bg-color);
        border-top: .1rem solid rgba(0, 0, 0, .2);
        box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
        display: none;
    }

    .navbar.active {
        display: block;
    }

    .navbar a {
        display: block;
        font-size: 2rem;
        margin: 3rem 0;
        color: var(--text-color);
    }

    .navbar a:nth-child(1),
    .navbar a:nth-child(2) {
        color: var(--text-color);
    }

    .navbar a.active {
        color: var(--main-color);
    }

    .navbar a::before {
        display: none;
    }

    .home {
        padding: 0 3% 23rem;
        justify-content: center;
        text-align: center;
    }

    .home-content h3 {
        font-size: 2.6rem;
    }

    .home-content h1 {
        font-size: 5rem;
    }

    .home-content .social-media a {
        margin: 2.5rem .75rem 3rem;
    }

    .home .profession-container {
        left: 0;
        width: 100%;
        height: 100%;
    }

    .home .profession-container .profession-box {
        position: fixed;
        top: 450px;
        left: 0;
        width: 100%;
    }

    .home .profession-box .profession {
        padding: 0 13px;
        left: auto;
        transform-origin: 0;
    }

    .home .profession-box .profession:nth-child(1) {
        transform: rotate(-90deg) translate(-120px, -210px);
    }

    .home .profession-box .profession:nth-child(1) i {
        margin-right: 0;
    }

    .home .profession-box .profession:nth-child(2) {
        transform: rotate(0deg) translate(0, -325px);
    }

    .home .profession-box .profession:nth-child(3) {
        transform: rotate(90deg) translate(-115px, -450px);
    }

    .home .profession-box .profession:nth-child(4) {
        transform: rotate(180deg) translate(-220px, -325px);
    }

    .home .profession-box .circle {
        position: fixed;
        width: 670px;
        height: 670px;
        z-index: -1;
    }

    .home .profession-container .overlay {
        position: fixed;
        top: 70rem;
        left: 50%;
        right: 0;
        transform: rotate(90deg) translate(-50%, 50%) scaleY(3);
        border-width: 23.9rem;
    }

    .about {
        flex-direction: column-reverse;
        text-align: center;
    }

    .about-content h2 {
        text-align: center;
    }

    .about-img img {
        width: 70vw;
        margin-top: -2rem;
    }

    .testimonial-container .testimonial-wrapper {
        padding: 5rem 0;
    }

    .testimonial-content .testimonial-slide {
        padding: 3rem 2rem;
    }

    .testimonial-box .swiper-button-next,
    .testimonial-box .swiper-button-prev {
        display: none;
    }
}

@media (max-width: 580px) {
    .portfolio .portfolio-container {
        grid-template-columns: 1fr;
    }
}

@media (max-width: 450px) {
    html {
        font-size: 50%;
    }

    #darkMode-icon {
        right: 6rem;
    }

    .home .profession-box .profession:nth-child(1) {
        transform: rotate(-90deg) translate(-110px, -220px);
    }

    .home .profession-box .profession:nth-child(2) {
        transform: rotate(0deg) translate(5px, -325px);
    }

    .home .profession-box .profession:nth-child(3) {
        transform: rotate(90deg) translate(-105px, -440px);
    }

    .home .profession-box .profession:nth-child(4) {
        transform: rotate(180deg) translate(-210px, -325px);
    }

    .home .profession-container .overlay {
        top: 80rem;
    }

    .contact form .input-box input {
        width: 100%;
    }

    .footer {
        flex-direction: column-reverse;
    }

    .footer p {
        text-align: center;
        margin-top: 2rem;
    }
}

@media (max-width: 365px) {
    .about-img img {
        width: 90vw;
    }
}

@media (max-width: 315px) {
    .home-content h1 {
        font-size: 4.5rem;
    }
}
img {
    border-radius: 20px;
}


canvas {
    position: absolute;
    top: 0;
    left: 0;
    -webkit-filter: url("#goo");
    filter: url("#goo");
}

svg {
  display: none;
}
</style>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Portfolio Website Design | Codehal</title>

    <!-- swiper css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

    <!-- box icons -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- custom css -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <!-- header design -->
    <header class="header">
        <a href="#" class="logo">Portfolio.</a>

        <nav class="navbar">
            <a href="#home" class="active">Home</a>
            <a href="#about">About</a>
            <a href="#services">Services</a>
            <a href="#portfolio">Portfolio</a>
            <a href="#contact">Contact</a>
        </nav>

        <div class="bx bx-moon" id="darkMode-icon"></div>

        <div class="bx bx-menu" id="menu-icon"></div>
    </header>

    <!-- home section design -->
    <section class="home" id="home">
        <div class="home-content">
            <h3>Hello, I am</h3>
            <h1>Aditya Munjal</h1>
            <p>
               Hi I am Aditya munjal, 16 year old boy, pursuing a diploma in V.P.M's polytechnic,Thane.
            </p>
            <p>i passed my 10th grade in 2023, which was formed on November 10, 2016, through the Mnet's reality survival show Finding Momoland. In 2023, she also began performing in live musical theater.</p>

            <div class="social-media">
                <a href="#"><i class='bx bxl-facebook'></i></a>
                <a href="#"><i class='bx bxl-twitter'></i></a>
                <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                <a href="#"><i class='bx bxl-linkedin'></i></a>
            </div>

            <a href="#" class="btn">Download CV</a>
        </div>

        <div class="profession-container">
            <div class="profession-box">
                <div class="profession" style="--i:0;">
                    <i class='bx bx-code-alt'></i>
                    <h3>Web Developer</h3>
                </div>
                <div class="profession" style="--i:1;">
                    <i class='bx bx-camera'></i>
                    <h3>Photographer</h3>
                </div>
                <div class="profession" style="--i:2;">
                    <i class='bx bx-palette'></i>
                    <h3>Web Designer</h3>
                </div>
                <div class="profession" style="--i:3;">
                    <i class='bx bx-FOOTBALL'></i>
                    <h3>Athlete</h3>
                </div>

                <div class="circle"></div>
            </div>

            <div class="overlay"></div>
        </div>

        <div class="home-img">
            <img src="https://photos.google.com/photo/AF1QipO1vxYrQM2O6IUtpIYqSWP95QGroDRla78YGcVc" align="right">
        </div>
    </section>

    <!-- about section design -->
    <section class="about" id="about">
        <div class="about-img">
            <img src="https://photos.google.com/photo/AF1QipOUUGYQJ_tzgXRxR_YM6XMHrW54FJGRYNzd2apB" alt="">
        </div>

        <div class="about-content">
            <h2 class="heading">About <span>Me</span></h2>
            <h3>
                Hi there, welcome to my website! i am Aditya!!,
                a passionate web developer who enjoys learning new technologies
                and solving problems with code!
            </h3>
            <p>
                This website is my personal blog where I write about web development
                topics that interest me and inspire me.
            </p>
            <p>
                Thank you for visiting my website and getting to know me better. I hope you
                enjoyed reading my blog posts and
                found
                them useful and informative. If you want to read more of my posts, subscribe
                to my newsletter where I send
                weekly
                updates on web development trends and tips. If you have any feedback or
                suggestions, please let me know. I'd love to hear from you.
            </p>
            <a href="#" class="btn">Read More</a>
        </div>
    </section>

    <!-- services section design -->
    <section class="services" id="services">
        <h2 class="heading">My <span>Services</span></h2>

        <div class="services-container">
            <div class="services-box">
                <i class='bx bx-code-alt'></i>
                <h3>Web Development</h3>
                <p>I develop website for many purposes i am a certified web devloper by AIAI</p>
                <a href="#" class="btn">Read More</a>
            </div>
            <div class="services-box">
                <i class='bx bxs-paint'></i>
                <h3>Graphic Design</h3>
                <p>Graphic designing is my hobby and i am really particular about my hobby and my work too. i have done several course regarding graphic designing.</p>
 <a href="#" class="btn">Read More</a>
            </div>
            <div class="services-box">
                <i class='bx bx-bar-chart-alt'></i>
                <h3>Digital Marketing</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Excepturi itaque similique, architecto
                    eaque ut quas delectus pariatur nesciunt in eligendi mollitia dicta.</p>
                <a href="#" class="btn">Read More</a>
            </div>
        </div>
    </section>

    <!-- portfolio section design -->
    <section class="portfolio" id="portfolio">
        <h2 class="heading">Latest <span>Project</span></h2>

        <div class="portfolio-container">
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAwx2m2DnPZUxF_be2pF38QL0z7K8d6_ifkaJ19H7819hbghSvl13XvunvZjVhk8zUOCg&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsbAWlz7qKlya6-A2dsCQH5TPNc2ZV_N5gh3xmAdCRokRBWJmKWMcn_G4jpR0EraC0qHY&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPsR32hufvZ0CSGUSRrpEqpcRdluudrk6zwA&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT56r1YkETQ2kEefNXTxy28jIrwvSaYwJkkdz4v_bsBobzLv8IE5efmRLsNLESXc70I4lQ&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT852tSi2dtmwm3YAzzGPj_ZfXyr0Ssji6bOw&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
            <div class="portfolio-box">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQdzmUhCaXNqb_ZT0pp2vKRxWwFF8i3PECAuV8MJ3yJkj1uqg4XbWuHt5YDgAI8xz_dX0&usqp=CAU" alt="">

                <div class="portfolio-layer">
                    <h4>Web Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique, ipsam est.</p>
                    <a href="#"><i class='bx bx-link-external'></i></a>
                </div>
            </div>
        </div>
    </section>

    <!-- testimonial design -->
    <div class="testimonial-container">
        <h2 class="heading">Valuable <span>Testimonial</span></h2>

        <div class="testimonial-wrapper">
            <div class="testimonial-box mySwiper">
                <div class="testimonial-content swiper-wrapper">
                    <div class="testimonial-slide swiper-slide">
                        <img src="https://www.koimoi.com/wp-content/new-galleries/2023/09/blackpinks-lisa-to-sign-new-contract-with-us-record-label-instead-of-yg-entertainment-amid-the-k-pop-girl-groups-uncertain-future-01.jpg" alt="">
                        <h3>Lisa</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Exercitationem dignissimos aliquid
                            iure delectus corrupti impedit, beatae aperiam ad iusto nostrum possimus cum pariatur harum
                            assumenda suscipit a, qui, tempora maxime nulla facere quo ipsum tempore. Atque libero
                            provident ad aut officia pariatur voluptate quaerat delectus nesciunt, sequi eligendi
                            aperiam fugit unde nihil, iste similique illum. Dignissimos enim officia consequuntur
                            dolores.</p>
                    </div>
                    <div class="testimonial-slide swiper-slide">
                        <img src="https://www.pinkvilla.com/pics/394x700/nancy_main_0_202209.png" alt="">
                        <h3>Nancy (singer)</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Exercitationem dignissimos aliquid
                            iure delectus corrupti impedit, beatae aperiam ad iusto nostrum possimus cum pariatur harum
                            assumenda suscipit a, qui, tempora maxime nulla facere quo ipsum tempore. Atque libero
                            provident ad aut officia pariatur voluptate quaerat delectus nesciunt, sequi eligendi
                            aperiam fugit unde nihil, iste similique illum. Dignissimos enim officia consequuntur
                            dolores.</p>
                    </div>
                    <div class="testimonial-slide swiper-slide">
                        <img src="C:\Users\HP\Downloads\bd9f0f43-1a9e-4330-b414-a85b28ca1120.jfif" alt="">
                        <h3>Codewithshobhit</h3>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Exercitationem dignissimos aliquid
                            iure delectus corrupti impedit, beatae aperiam ad iusto nostrum possimus cum pariatur harum
                            assumenda suscipit a, qui, tempora maxime nulla facere quo ipsum tempore. Atque libero
                            provident ad aut officia pariatur voluptate quaerat delectus nesciunt, sequi eligendi
                            aperiam fugit unde nihil, iste similique illum. Dignissimos enim officia consequuntur
                            dolores.</p>
                    </div>
                </div>

                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>

    <!-- contact section design -->
    <section class="contact" id="contact">
        <h2 class="heading">Contact <span>Me!</span></h2>

        <form action="#">
            <div class="input-box">
                <input type="text" placeholder="Full Name">
                <input type="email" placeholder="Email Address">
            </div>
            <div class="input-box">
                <input type="number" placeholder="Mobile Number">
                <input type="text" placeholder="Email Subject">
            </div>
            <textarea name="" id="" cols="30" rows="10" placeholder="Your Message"></textarea>
            <input type="submit" value="Send Message" class="btn">
        </form>
    </section>

    <!-- footer design -->
    <footer class="footer">
        <div class="footer-text">
            <center><p>Copyright &copy; 2023 by  | All Rights Reserved By Codewithshobhit</p></center>
        </div>

        <div class="footer-iconTop">
            <a href="#home"><i class='bx bx-up-arrow-alt'></i></a>
        </div>
      <canvas id="canvasbg"></canvas>
<canvas id="canvas"></canvas>

<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
        <filter id="goo">
            <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
            <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
            <feBlend in="SourceGraphic" in2="goo" />
        </filter>
    </defs>
</svg>

    </footer>


    <!-- scroll reveal -->
    <script src="https://unpkg.com/scrollreveal"></script>

    <!-- swiper js -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

    <!-- custom js -->
    <script src="js/script.js"></script>
<!-- partial -->
  <script  src="./script.js"></script>

</body>
</html>

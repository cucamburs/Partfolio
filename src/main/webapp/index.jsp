<%--<html>
<body>
<h2>Spring MVC Application</h2>
<a href="index"> Main page </a><br>
<a href="about"> About </a><br>
<a href="webtest"> test </a>
</body>
</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Partfolio IURII KISELEV</title>
    < link href="sources/css/index.css" rel="stylesheet" type="text/css"/ >
</head>
<body>
<header>
    <div id="logo" onclick="slowScroll('#top')">
        <span>Y.Kisele</span>
    </div>
    <div id="about">
        <a href="#" title="Возможности" onclick="slowScroll('#main')">Возможности</a>
        <a href="#" onclick="slowScroll('#overview')" title="Преимущества">My projects</a>
        <a href="#" onclick="slowScroll('#contacts')" title="Контакты">Contact</a>
        <a href="#" onclick="slowScroll('#faq')" title="Ответы на вопросы">FAQ</a>
    </div>
</header>

<div id="top">
    <h1>Welcome to our world</h1>
    <h3>Any sufficiently advanced technology is <br>indistinguishable from magic</h3>
    <p>Arthur C. Clarke</p>
</div>

<div id="main">
    <div class="intro">
        <h2>All you would like to know about me</h2>
        <span>Большой выбор всего, что может вам пригодиться</span>
    </div>
    <div class="text">
        <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos impedit, ut vero commodi voluptate? Ipsam reiciendis, necessitatibus incidunt ipsa quis sapiente excepturi, optio iusto voluptatibus dolorem officia quidem, numquam eaque minus, autem praesentium rem architecto dolores. Ipsa unde id velit optio magni enim! Illum obcaecati, dolorem distinctio nemo, ipsum iure.</span>
    </div>
</div>

<div id="overview">
    <h2>My projects</h2>
    <h4>when the hobby becomes the life </h4>


    <div href="#" class="box"><a href="login">
        <img src="https://www.3dnews.ru/assets/external/illustrations/2016/06/09/934422/sm.acr-2.750.jpg" alt="">
        <div class="glow-wrap">
            <i class="glow"></i>
        </div></a>
    </div>


    <div class="box"><a href="login">
        <img src="https://www.tracker-rms.com/wp-content/uploads/2019/03/shutterstock_727680178.jpg" alt="">
        <div class="glow-wrap">
            <i class="glow"></i>
        </div></a>
    </div>

</div>


<div id="contacts">
    <center><h5>Contact</h5></center>
    <form id="form_input">
        <label for="name">Name <span>*</span></label><br>
        <input type="text" placeholder="Input name" name="name" id="name"><br>
        <label for="email">Your e-mail <span>*</span></label><br>
        <input type="email" placeholder="Input email" name="email" id="email"><br>
        <label for="message">Message <span>*</span></label><br>
        <textarea placeholder="Input a message" name="message" id="message"></textarea><br>
        <div id="mess_send" class="btn">Отправить</div>
    </form>
</div>

<div id="faq">
    <div>
        <span class="title">Title one</span><br>
        <span class="heading">Block one</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Как будет проходит оплата?</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Как будет проходит оплата?</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
    </div>
    <div>
        <span class="title">Technologies</span><br>
        <span class="heading">Block two</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Что входит в услуги сервиса</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Что входит в услуги сервиса</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
    </div>
    <div>
        <span class="title">Warranty</span><br>
        <span class="heading">Block three</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Какие гарантии есть</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
        <span class="heading">Какие гарантии есть</span>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium beatae asperiores debitis perspiciatis perferendis nemo tempore distinctio officia commodi et non tempora laudantium culpa nostrum, quidem, quasi ratione itaque nam.</p>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    function slowScroll(id) {
        $('html, body').animate({
            scrollTop: $(id).offset().top
        }, 500);
    }

    $(document).on("scroll", function () {
        if($(window).scrollTop() === 0)
            $("header").removeClass("fixed");
        else
            $("header").attr("class", "fixed");
    });
</script>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
    <jsp:include page="/WEB-INF/css/indexCss.jsp" />

    <!-- navbar -->
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <!-- container-1 -->
    <div id="container1" class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>How to create a ad!</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <div class="card mb-3" style="max-width: 20rem;">
                    <div class="card-header">1: register</div>
                    <div class="card-body">
                        <h4 class="card-title">registering is easy!!</h4>
                        <p class="card-text">
                            just give us your social security and credit card numbers! dont worry
                            our site is the most more secure of all possible sites.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card mb-3" style="max-width: 20rem;">
                    <div class="card-header">2: login</div>
                    <div class="card-body">
                        <h4 class="card-title">Login and Start advertising yourself to strangers</h4>
                        <p class="card-text">
                            once logged in, you'll probably already be in massive debt without you even knowing!
                            so better start advertising yourself in hopes to make money in some "Legal" way.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card mb-3" style="max-width: 20rem;">
                    <div class="card-header">3: create a ad</div>
                    <div class="card-body">
                        <h4 class="card-title">display a ad to random Strangers!!</h4>
                        <p class="card-text">
                            that's right, all kinds of random strangers on this site looking for random things!!!
                            so start you random adventure by creating as many ads a possible until our sever just shuts down.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card mb-3" style="max-width: 20rem;">
                    <div class="card-header">4 search ads</div>
                    <div class="card-body">
                        <h4 class="card-title">randome poeple you dont know post ads too!</h4>
                        <p class="card-text">
                            whatever you are looking for, its more then likely to be obtainable on the interwebs so start
                            looking at what these randos are posting.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- buttons -->
    <div id="container2" class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="row">
                    <div class="mx-auto">
                        <h2>Information about:</h2>
                    </div>
                </div>
                <hr>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="mx-auto">
                        <h2 id="about">ads</h2>
                    </div>
                </div>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 links">
                <a href="#para1btn" id="para1btn" class="active"><h2>ads</h2></a><br>
                <a href="#para2btn" id="para2btn"><h2>login</h2></a><br>
                <a href="#para3btn" id="para3btn"><h2>registering</h2></a><br>
                <a href="#para4btn" id="para4btn"><h2>personal profile</h2></a>
            </div>
            <div class="col-sm-6 middleBorder">
                <p id="para1" class="">
                    I dont know if people are even going to read this. your probably just sitting class bored
                    and have nothing better to do with your time but read what im putting here. loser
                </p>
                <p id="para2" class="hidden" >
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci delectus esse
                    facilis, necessitatibus nesciunt possimus praesentium tenetur veritatis voluptatem?
                </p>
                <p id="para3" class="hidden" >
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid architecto consectetur
                    facilis illo ipsam, itaque laborum maiores minima nam nemo pariatur provident repellat
                    reprehenderit repudiandae saepe sapiente, unde ut vitae.
                </p>
                <p id="para4" class="hidden" >
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum maiores mollitia voluptates.
                    Asperiores assumenda dolorum, maxime nisi pariatur quam sed vel. Aliquam, assumenda consequatur
                    consequuntur earum iste laboriosam laborum magnam nobis obcaecati quaerat quasi quia.
                </p>
            </div>
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script>



        document.getElementById('para1btn').addEventListener('click', para1);
        document.getElementById('para2btn').addEventListener('click', para2);
        document.getElementById('para3btn').addEventListener('click', para3);
        document.getElementById('para4btn').addEventListener('click', para4);


        function para1(){

            document.getElementById('para2').className = 'hidden';
            document.getElementById('para3').className = 'hidden';
            document.getElementById('para4').className = 'hidden';
            document.getElementById('para1').classList.remove("hidden");
            document.getElementById('about').innerHTML = 'ads'

        }

        function para2(){

            document.getElementById('para1').className = 'hidden';
            document.getElementById('para3').className = 'hidden';
            document.getElementById('para4').className = 'hidden';
            document.getElementById('para2').classList.remove("hidden");
            document.getElementById('about').innerHTML = 'login'

        }

        function para3(){

            document.getElementById('para2').className = 'hidden';
            document.getElementById('para1').className = 'hidden';
            document.getElementById('para4').className = 'hidden';
            document.getElementById('para3').classList.remove("hidden");
            document.getElementById('about').innerHTML = 'registering'

        }

        function para4(){

            document.getElementById('para2').className = 'hidden';
            document.getElementById('para3').className = 'hidden';
            document.getElementById('para1').className = 'hidden';
            document.getElementById('para4').classList.remove("hidden");
            document.getElementById('about').innerHTML = 'personal profile'
        }

    </script>

</body>
</html>

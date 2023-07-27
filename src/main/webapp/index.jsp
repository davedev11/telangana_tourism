<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <title>Telangana Tourism</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- font awesome cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- fonts -->
        <link rel = "stylesheet" href = "font/fonts.css">
        <!-- normalize css -->
        <link rel = "stylesheet" href = "css/normalize.css">
        <!-- custom css -->
        <link rel = "stylesheet" href = "css/utility.css">
        <link rel = "stylesheet" href = "css/style.css">
        <link rel = "stylesheet" href = "css/responsive.css">
    </head>
    <body>
        <!-- navbar  -->
        <nav class = "navbar">
            <div class = "container flex">
                <a href = "index.jsp" class = "site-brand">
                    Telangana <span>Tourism</span>
                </a>

                <button type = "button" id = "navbar-show-btn" class = "flex">
                    <i class = "fas fa-bars"></i>
                </button>
                <div id = "navbar-collapse">
                    <button type = "button" id = "navbar-close-btn" class = "flex">
                        <i class = "fas fa-times"></i>
                    </button>
                    <ul class = "navbar-nav">
                        <li class = "nav-item">
                            <a href = "index.jsp" class = "nav-link">Home</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "packages.jsp" class = "nav-link">Packages</a>
                        </li>
                        <!-- <li class = "nav-item">
                            <a href = "#" class = "nav-link">Hotels</a>
                        </li> -->
                        <li class = "nav-item">
                            <a href = "about.jsp" class = "nav-link">About</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "logincheck.jsp" class = "nav-link">Admin</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- end of navbar  -->

        <!-- header -->
        <header class = "flex">
            <div class = "container">
                <br><br>
                  
                
                <!-- <div class = "header-form">
                    <h2>Choose your Travel location:</h2>
                    <form class = "flex">
                        <input type = "text" class = "form-control" placeholder="Destination name">
                        <input type="date" class = "form-control" placeholder="Date">
                        <input type="number" class = "form-control" placeholder="Price ($)">
                        <input type="submit" class = "btn" value = "Search">
                    </form>
                </div> -->
            </div>
        </header>
        <!-- header -->



        <!-- featured section -->
        <section id = "featured" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <!-- <span class = "sm-title">know about some places before your travel</span> -->
                    <h2 class = "lg-title">featured places</h2>
                </div>

                <div class = "featured-row">
                    <div class = "featured-item my-2 shadow">
                        <img src = "images/WARANGAL1.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                WARANGAL
                            </span>
                            <div>
                                <p class = "text">Warangal takes you back to the era of kings and queens with its beautiful historical sites and an impressive natural beauty with Parkhal Lake being worth checking out.</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class = "featured-item my-2 shadow">
                        <img src = "images/ramojifc1.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                Ramoji Film City
                            </span>
                            <div>
                                <p class = "text">Home to the second largest film industry in India, Telangana also houses the largest integrated film city in the world – Ramoji Film City. </p>
                            </div>
                        </div>
                    </div>

                    <div class = "featured-item my-2 shadow">
                        <img src = "images/charminar_day.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                 Hyderabad
                            </span>
                            <div>
                                <p class = "text">Discover the historic charm and vibrant culture of Hyderabad, the 'City of Pearls,' where ancient monuments meet bustling bazaars, and delectable cuisine awaits.</p>
                            </div>
                        </div>
                    </div>


                    <div class = "featured-item my-2 shadow">
                        <img src = "images/Ananthagiri-Hills.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                Ananthagiri Hills
                            </span>
                            <div>
                                <p class = "text">Escape to the tranquil beauty of Ananthagiri Hills, a serene paradise nestled in nature's embrace, offering breathtaking views and rejuvenating experiences.</p>
                            </div>
                        </div>
                    </div>

                    <div class = "featured-item my-2 shadow">
                        <img src = "images/BHADRACHALAM.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                Bhadrachalam
                            </span>
                            <div>
                                <p class = "text">An extravaganza, Bhadrachalam is believed to have been the stage to many important and historic events of the epic Ramayana.</p>
                            </div>
                        </div>
                    </div>

                    <div class = "featured-item my-2 shadow">
                        <img src = "images/nagarjunasagar1.jpg" alt = "featured place">
                        <div class = "featured-item-content">
                            <span>
                                <i class = "fas fa-map-marker-alt"></i>
                                Nagarjuna Sagar
                            </span>
                            <div>
                                <p class = "text">Nagarjunasagar is known by the world's tallest masonry dam Nagarjunasagar dam built over Krishna River, that the town houses.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end of featured section -->

        <!-- services section -->
        <section id = "services" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <span class = "sm-title">know about services that we offer</span>
                    <h2 ><a class="serv-link" href="packages.jsp" target="_blank">OUR PACKAGES</a></h2>
                </div>

                <div class = "services-row">
                    <div class = "services-item  my-2 shadow">
                        <img src = "images/mallela-theertham-waterfalls-srisailam-best-waterfalls-near-hyderabad.jpg" alt = "featured place">
                       <h3> Get closer to Nature </h3>
                        <a href = "packages.jsp"  class = "serv-btn">Know more</a>
                    </div>
                    
                    <div class = "services-item my-2 shadow">
                        <img src = "images/hitech-city.jpg" alt = "featured place">
                        <h3>The city center</h3>
                       <a href = "packages.jsp"  class = "serv-btn">Know more</a>
                    </div>

                   
                    <div class = "services-item my-2 shadow">
                        <img src = "images/yadagirigutta-temple.jpg" alt = "featured place">
                       <h3>Spiritual tour</h3>
                        <a href = "packages.jsp" class = "serv-btn">Know more</a>
                    </div>

                </div>
            </div>
        </section>
        <!-- end of services section -->

        <!-- testimonials section -->
        <section id = "testimonials" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <span class = "sm-title">what our clients say about us</span>
                    <h2 class = "lg-title">testimonials</h2>
                </div>

                <div class = "test-row">
                    <div class = "test-item">
                        <p class = "text">The company itself is a very successful company. Acceptance of flattery, harsher, he wants them to seek the times of great offices, in which he will be able to do expediently with the refusal to do for pleasure less than just him. Selected!</p>
                        <div class = "test-item-info">
                            <img src = "images/test-1.jpg" alt = "testimonial">
                            <div>
                                <h3>Kevin Wilson</h3>
                                
                            </div>
                        </div>
                    </div>

                    <div class = "test-item">
                        <p class = "text">If the customer is very smart, he or she will be able to achieve the desired result. What is said by a wise man is not easy, but for those who are present, whom I prefer but to some! No one is to blame for refusing to provide that!</p>
                        <div class = "test-item-info">
                            <img src = "images/test-3.jpg" alt = "testimonial">
                            <div>
                                <h3>Jaura Jones</h3>
                               
                            </div>
                        </div>
                    </div>

                    <div class = "test-item">
                        <p class = "text">The customer himself, the customer will be able to pursue the adipiscing of the company. But to be bound by these pains, they leave them. Most of all, the consequences of refusing to run away from us are just born to some people!</p>
                        <div class = "test-item-info">
                            <img src = "images/test-2.jpg" alt = "testimonial">
                            <div>
                                <h3>Ben Davis</h3>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end of testimonials section -->


<!--         
        <section>

            <div class="slideshow-container">

                <div class="mySlides fade">
                  
                  <img src="images/featured-reo-de-janeiro-brazil.jpg" style="width:100%">
                  <div class="slide-text">Caption Text</div>
                </div>
                
                <div class="mySlides fade">
                  
                  <img src="images/featured-berlin-germany.jpg" style="width:100%">
                  <div class="slide-text">Caption Two</div>
                </div>
                
                <div class="mySlides fade">
                 
                  <img src="images/featured-rome-italy.jpg" style="width:100%">
                  <div class="slide-text">Caption Three</div>
                </div>
                <a class="prev" onclick="plusSlides(-1)">❮</a>
                <a class="next" onclick="plusSlides(1)">❯</a>

                </div>
                <br>
                
                <div style="text-align:center">
                  <span class="dot"></span> 
                  <span class="dot"></span> 
                  <span class="dot"></span> 
                </div>
        </section>
 -->


        <!-- footer -->
        <footer class = "py-4">
            <div class = "container footer-row">
                <div class = "footer-item">
                    <a href = "index.jsp" class = "site-brand">
                        Telangana<span>Tourism</span>
                    </a>
                    <p class = "text"><ul>
                        <li>3-5-891, Tourism House Himayatnagar, Hyderabad - 500 029, Telangana, India.</li>
                        <br />
                        <li> ☏ 1800-425-46464</li><br />
                        <li><a href = "#">✉ testmail.gov@gmail.in</a></li>
                    </ul></p>
                </div>

                <div class = "footer-item">
                    <h2>Follow us: </h2>
                    <ul class = "social-links">
                        <li>
                            <a href = "https://www.facebook.com/"  target="_blank">
                                <i class = "fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://www.instagram.com/"  target="_blank">
                                <i class = "fab fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://twitter.com/"  target="_blank">
                                <i class = "fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://in.pinterest.com/"  target="_blank">
                                <i class = "fab fa-pinterest"></i>
                            </a>
                        </li>
                       
                    </ul>
                </div>

                <div class = "footer-item">
                    <h2>Popular Places:</h2>
                    <ul>
                        <li><a href = "index.jsp#featured">Warangal</a></li>
                        <li><a href =  "index.jsp#featured">Ramoji Film City</a></li>
                        <li><a href =  "index.jsp#featured">Hyderabad</a></li>
                        <li><a href =  "index.jsp#featured">Ananthagiri Hills</a></li>
                        <li><a href =  "index.jsp#featured">Ramoji Film City</a></li>
                        <li><a href =  "index.jsp#featured">Bhadrachalam</a></li>
                        
                    </ul>
                </div>

                <div class = "subscribe-form footer-item">
                    <h2>Subscribe for Newsletter!</h2>
                    <form class = "flex">
                        <input type = "email" placeholder="Enter Email" class = "form-control">
                        <input type = "submit" class = "btn" value = "Subscribe">
                    </form>
                </div>
            </div>
        </footer>
        <!-- end of footer -->

        <!-- js -->
        <script src = "js/script.js"></script>
        <!-- <script>
            let slideIndex = 0;
            showSlides();
            
            function showSlides() {
              let i;
              let slides = document.getElementsByClassName("mySlides");
              let dots = document.getElementsByClassName("dot");
              for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
              }
              slideIndex++;
              if (slideIndex > slides.length) {slideIndex = 1}    
              for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
              }
              slides[slideIndex-1].style.display = "block";  
              dots[slideIndex-1].className += " active";
              setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
            </script> -->

        <!-- <script>
            // play/pause video
            let video = document.querySelector('.video-wrapper video');
            document.getElementById('play-btn').addEventListener('click', () => {
                if(video.paused){
                    video.play();
                } else {
                    video.pause();
                }
            });
        </script> -->
    </body>
</html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Telangana Tourism</title>
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
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
        <header class = "flex header-sm">
            <div class = "container">
                <div class = "header-title">
                    <h1>About</h1>
                    <p>Explore Telangana with us and unlock the magic of this incredible destination.</p>
                </div>
            </div>
        </header>
        <!-- header -->

        <!-- about section -->
        <section id = "about" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <span class = "sm-title">things to know about us</span>
                </div>

                <div class = "about-row">
                    <div class = "about-left my-2">
                        <img src = "images/about-img.jpg" alt = "about img">
                        <h2>Embrace the Culture</h2>
<p class = "text">
Immerse yourself in the vibrant culture of Telangana, where age-old traditions and folk art come alive. Witness mesmerizing performances of Perini Sivatandavam and experience the colorful Bonalu and Bathukamma festivals, brimming with zest and fervor.
</p>
<h2>Culinary Delights</h2>
<p class = "text">
Savor the flavors of Telangana's delectable cuisine, which blends traditional recipes with a distinct spice palette. Indulge in the famous Hyderabadi Biryani, relish Telangana's spicy curries, and treat yourself to the mouthwatering sweets that will leave your taste buds craving for more.

</p>
                    </div>
                    <div class = "about-right">
                        <h2>15 Years of Experience</h2>
                        <p class = "text">About Telangana Tourism

Welcome to the enchanting world of Telangana, a land steeped in rich history, vibrant culture, and breathtaking natural beauty. Situated in the heart of India, Telangana is a captivating state that beckons travelers with its diverse landscapes, architectural marvels, and warm hospitality.
</p>
<h2>Our Mission</h2>
<p class = "text">
At Telangana Tourism, our mission is to showcase the unique essence of this incredible region and provide travelers with unforgettable experiences. We take pride in curating well-crafted itineraries that celebrate the hidden gems of Telangana and reveal its fascinating tapestry of past and present.
</p>
<h2>Discover Heritage & History</h2>
<p class = "text">
Delve into the captivating history of Telangana, a region with a glorious past that echoes through its ancient monuments, forts, and temples. Explore the iconic Golconda Fort, witness the exquisite carvings of Thousand Pillar Temple, and marvel at the Qutb Shahi Tombs - a UNESCO World Heritage Site.
</p>
<h2>Explore Scenic Landscapes</h2>
<p class = "text">
Telangana boasts a diverse landscape, from picturesque hill stations to serene lakes and lush forests. Embark on a journey to the awe-inspiring Anantagiri Hills, the tranquil Laknavaram Lake, or the breathtaking Kuntala Waterfall. Experience nature at its best amidst these scenic wonders.
</p>
 </div>
                </div>
            </div>
        </section>
        <!-- end of about section -->

        <!-- facts section -->
        <section id = "facts" class = "py-4 flex">
            <div class = "container">
                <div class = 'title-wrap'>
                    <span class = "sm-title">know some facts about our agency</span>
                    
                </div>

                <div class = "facts-row">
                    <div class = "facts-item">
                        <span class = "fas fa-camera-retro facts-icon"></span>
                        <div class = "facts-info">
                            <strong>1220</strong>
                            <p class = "text">photos taken</p>
                        </div>
                    </div>

                    <div class = "facts-item">
                        <span class = "fas fa-umbrella-beach  facts-icon"></span>
                        <div class = "facts-info">
                            <strong>450</strong>
                            <p class = "text">beaches visited</p>
                        </div>
                    </div>

                    <div class = "facts-item">
                        <span class = "fas fa-mountain facts-icon"></span>
                        <div class = "facts-info">
                            <strong>84</strong>
                            <p class = "text">mountains climbed</p>
                        </div>
                    </div>

                    <div class = "facts-item">
                        <span class = "fas fa-ship facts-icon"></span>
                        <div class = "facts-info">
                            <strong>120</strong>
                            <p class = "text">cruises organized</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end of facts section -->
        

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
        <script>
            
        </script>
    </body>
</html>
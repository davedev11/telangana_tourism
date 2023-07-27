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
                    <h1>Packages</h1>
                    <p>Have a look at the packages we offer.</p>
                                        <!--<p style="color: #FF9800;">Enchanting Telangana: Where Every Corner Unfolds a Tale</p>-->
                </div>

            </div>
        </header>
        <!-- header -->

        <!-- package section -->
        <section id = "package" class = "py-4 ">
            <div class="container">
                <div class = "packages-row">
                <div  class = "package-item my-2 shadow ">
                    <h3>1.Film City</h3>
                    <div class="photo">
                <img src = "images/ramojifc1.jpg" alt = "featured place"></div>
                <div>
                    <p class = "text">Home to the second largest film industry in India, Telangana also houses the largest integrated film city in the world – Ramoji Film City.</p>
                </div>
                <a href="Packages/package1.html" target="_blank" class="btn">View Details</a>
                </div>
                <div  class = "package-item my-2 shadow">
                    <h3>2.Adventures in Hyderabad</h3>
                    <div class="photo">
                        <img src = "images/Wonderla-Hyderabad.jpg" alt = "featured place">
                    </div>
                        <div>
                            <p class = "text">The amusement park offers a plethora of exciting options for people of all ages, including land and water rides, kid rides, and high-adrenaline rides.</p>
                        </div>
                        <a href="Packages/package2.html" target="_blank" class="btn">View Details</a>
                </div>
                <div  class = "package-item my-2 shadow">
                    <h3>3.Religious trip - Telangana</h3>
                <img src = "images/PAPI-KONDALU.jpg" alt = "featured place">
                <div>
                    <p class = "text">Nagarjunasagar is known by the world's tallest masonry dam Nagarjunasagar dam built over Krishna River, that the town houses.</p>
                </div>
                <a href="Packages/package3.html" class="btn" target="_blank">View Details</a>
                </div>
                <div  class = "package-item my-2 shadow">
                    <h3>4.Shoppers' stop.</h3>
                <img src = "images/charminar_day.jpg" alt = "featured place">
                <div>
                    <p class = "text">Explore the iconic Charminar and indulge in a shopper's paradise in Telangana's vibrant markets.</p>
                </div>
                <a href="Packages/package4.html" class="btn" target="_blank">View Details</a>
                </div>

                
             </div>
            </div>
        </section>


        <!-- package section -->

        <!-- gallery section -->
        <div id = "gallery" class = "py-4">
            <div class = "container">
                <h1 align="center" >Gallery</h1>
                <div class = "gallery-row">
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-1.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-2.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-3.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div><div class = "gallery-item shadow">
                        <img src = "images/gallery-4.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-5.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-6.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-7.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-9.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>
                    <div class = "gallery-item shadow">
                        <img src = "images/gallery-12.jpg" alt = "gallery img">
                        <span class = "zoom-icon">
                            <i class = "fas fa-search-plus"></i>
                        </span>
                    </div>  
                </div>
            </div>
        </div>
        <!-- end of gallery section -->

        <!-- img modal -->
        <div id = "img-modal-box">
            <div id = "img-modal">
                <button type = "button" id = "modal-close-btn" class = "flex">
                    <i class = "fas fa-times"></i>
                </button>
                <button type = "button" id = "prev-btn" class = "flex">
                    <i class = "fas fa-chevron-left"></i>
                </button>
                <button type = "button" id = "next-btn" class = "flex">
                    <i class = "fas fa-chevron-right"></i>
                </button>
                <img src = "images/charminar2.jpg">
            </div>
        </div>
        <!-- end of img modal -->
       
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
            // image modal
            const allGalleryItem = document.querySelectorAll('.gallery-item');
            const imgModalDiv = document.getElementById('img-modal-box');
            const modalCloseBtn = document.getElementById('modal-close-btn');
            const nextBtn = document.getElementById('next-btn');
            const prevBtn = document.getElementById('prev-btn');
            let imgIndex = 0;

            allGalleryItem.forEach((galleryItem) => {
                galleryItem.addEventListener('click', () => {
                    imgModalDiv.style.display = "block";
                    let imgSrc = galleryItem.querySelector('img').src;
                    imgIndex = parseInt(imgSrc.split("-")[1].substring(0, 1));
                    showImageContent(imgIndex);
                })
            });

            // next click
            nextBtn.addEventListener('click', () => {
                imgIndex++;
                if(imgIndex > allGalleryItem.length){
                    imgIndex = 1;
                }
                showImageContent(imgIndex);
            });

            // previous click
            prevBtn.addEventListener('click', () => {
                imgIndex--;
                if(imgIndex <= 0){
                    imgIndex = allGalleryItem.length;
                }
                showImageContent(imgIndex);
            });

            function showImageContent(index){
                imgModalDiv.querySelector('#img-modal img').src = `images/gallery-${index}.jpg`;
            }

            modalCloseBtn.addEventListener('click', () => {
                imgModalDiv.style.display = "none";
            })
        </script>
    </body>
</html>
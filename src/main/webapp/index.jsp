<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bhagi's NexusShop</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7fb;
            color: #0a2540;
        }

        :root {
            --primary: #0a2540;
            --secondary: #0077ff;
            --accent: #00d4ff;
            --white: #fff;
            --gray: #777;
        }

        .container {
            width: 90%;
            max-width: 1300px;
            margin: auto;
        }

        /* HEADER */

        header {
            position: sticky;
            top: 0;
            z-index: 999;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(15px);
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
        }

        .header-wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
        }

        .logo {
            font-size: 30px;
            font-weight: 700;
        }

        .logo span {
            color: var(--secondary);
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 30px;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--primary);
            font-weight: 500;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: var(--secondary);
        }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .header-icons i {
            font-size: 18px;
            cursor: pointer;
        }

        .search-box {
            background: white;
            padding: 10px 16px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06);
        }

        .search-box input {
            border: none;
            outline: none;
            width: 200px;
            font-family: inherit;
        }

        /* HERO */

        .hero {
            min-height: 90vh;
            background:
                linear-gradient(rgba(10, 37, 64, 0.7),
                    rgba(0, 119, 255, 0.45)),
                url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1400&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
        }

        .hero-content {
            width: 100%;
        }

        .hero h1 {
            font-size: 70px;
            line-height: 1.1;
            margin-bottom: 20px;
        }

        .hero p {
            max-width: 700px;
            margin: auto;
            font-size: 18px;
            margin-bottom: 30px;
            opacity: 0.95;
        }

        .btn {
            padding: 14px 30px;
            border: none;
            border-radius: 14px;
            cursor: pointer;
            font-weight: 600;
            transition: 0.3s;
            font-size: 15px;
        }

        .btn-primary {
            background: linear-gradient(135deg, #00d4ff, #0077ff);
            color: white;
            box-shadow: 0 10px 30px rgba(0, 119, 255, 0.35);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid white;
            color: white;
            margin-left: 15px;
        }

        .btn:hover {
            transform: translateY(-5px);
        }

        /* SECTION */

        section {
            padding: 80px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 42px;
            margin-bottom: 10px;
        }

        .section-title p {
            color: var(--gray);
        }

        /* CATEGORIES */

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 25px;
        }

        .category-card {
            background: white;
            padding: 30px;
            border-radius: 22px;
            text-align: center;
            transition: 0.4s;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        }

        .category-card:hover {
            transform: translateY(-10px);
            background: linear-gradient(135deg, #0a2540, #0077ff);
            color: white;
        }

        .category-card i {
            font-size: 40px;
            margin-bottom: 15px;
            color: var(--secondary);
        }

        .category-card:hover i {
            color: #00d4ff;
        }

        /* PRODUCTS */

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: white;
            border-radius: 24px;
            overflow: hidden;
            transition: 0.4s;
            position: relative;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.06);
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.12);
        }

        .product-card img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover img {
            transform: scale(1.08);
        }

        .product-info {
            padding: 20px;
        }

        .product-info h3 {
            margin-bottom: 10px;
        }

        .price {
            color: var(--secondary);
            font-size: 22px;
            font-weight: 700;
            margin: 10px 0;
        }

        .rating {
            color: orange;
            margin-bottom: 15px;
        }

        .product-buttons {
            display: flex;
            gap: 10px;
        }

        .cart-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            transition: 0.3s;
        }

        .cart-btn:hover {
            background: var(--secondary);
        }

        .wishlist-btn {
            width: 50px;
            border: none;
            background: #f4f7fb;
            border-radius: 12px;
            cursor: pointer;
        }

        /* DEAL SECTION */

        .deal-section {
            background: linear-gradient(135deg, #0a2540, #0077ff);
            border-radius: 30px;
            overflow: hidden;
            color: white;
        }

        .deal-wrapper {
            display: flex;
            align-items: center;
            gap: 40px;
            flex-wrap: wrap;
        }

        .deal-wrapper img {
            width: 500px;
            max-width: 100%;
        }

        .deal-content h2 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .timer {
            display: flex;
            gap: 15px;
            margin: 25px 0;
        }

        .time-box {
            background: rgba(255, 255, 255, 0.15);
            padding: 15px;
            border-radius: 14px;
            text-align: center;
            min-width: 80px;
        }

        /* TESTIMONIALS */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
        }

        .testimonial-card {
            background: white;
            padding: 30px;
            border-radius: 24px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        }

        .testimonial-card img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            margin-top: 15px;
        }

        /* NEWSLETTER */

        .newsletter {
            background: linear-gradient(135deg, #0a2540, #0077ff);
            color: white;
            padding: 70px 30px;
            border-radius: 30px;
            text-align: center;
        }

        .newsletter input {
            width: 350px;
            max-width: 100%;
            padding: 14px 18px;
            border-radius: 14px;
            border: none;
            outline: none;
            margin-right: 10px;
        }

        /* FOOTER */

        footer {
            padding: 50px 0;
            text-align: center;
            color: var(--gray);
        }

        /* RESPONSIVE */

        @media(max-width: 900px) {

            nav {
                display: none;
            }

            .hero h1 {
                font-size: 45px;
            }

            .deal-wrapper {
                flex-direction: column;
                text-align: center;
            }
        }

        @media(max-width: 600px) {

            .hero h1 {
                font-size: 34px;
            }

            .hero p {
                font-size: 15px;
            }

            .btn {
                width: 100%;
                margin-bottom: 10px;
            }

            .btn-outline {
                margin-left: 0;
            }
        }
    </style>
</head>

<body>

    <!-- HEADER -->

    <header>
        <div class="container header-wrapper">

            <div class="logo">
                Nexus<span>Shop</span>
            </div>

            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Categories</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Deals</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>

            <div class="header-icons">

                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search products...">
                </div>

                <i class="far fa-user"></i>
                <i class="far fa-heart"></i>
                <i class="fas fa-shopping-cart"></i>

            </div>

        </div>
    </header>

    <!-- HERO -->

    <section class="hero">

        <div class="container hero-content">

            <h1>Bhagi's Summer Collection</h1>

            <p>
                Discover premium fashion, gadgets and accessories with amazing
                discounts and luxury shopping experience.
            </p>

            <button class="btn btn-primary">
                Shop Now
            </button>

            <button class="btn btn-outline">
                Explore Deals
            </button>

        </div>

    </section>

    <!-- CATEGORIES -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Shop by Category</h2>
                <p>Explore our premium collections</p>
            </div>

            <div class="categories">

                <div class="category-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h3>Mobiles</h3>
                </div>

                <div class="category-card">
                    <i class="fas fa-laptop"></i>
                    <h3>Laptops</h3>
                </div>

                <div class="category-card">
                    <i class="fas fa-headphones"></i>
                    <h3>Audio</h3>
                </div>

                <div class="category-card">
                    <i class="fas fa-tshirt"></i>
                    <h3>Fashion</h3>
                </div>

                <div class="category-card">
                    <i class="fas fa-camera"></i>
                    <h3>Cameras</h3>
                </div>

                <div class="category-card">
                    <i class="fas fa-watch"></i>
                    <h3>Accessories</h3>
                </div>

            </div>

        </div>

    </section>

    <!-- PRODUCTS -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Trending Products</h2>
                <p>Top selling products this week</p>
            </div>

            <div class="products">

                <!-- PRODUCT -->

                <div class="product-card">

                    <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80">

                    <div class="product-info">

                        <h3>iPhone 14 Pro Max</h3>

                        <div class="price">$1099</div>

                        <div class="rating">
                            ★★★★★
                        </div>

                        <div class="product-buttons">

                            <button class="cart-btn">
                                Add to Cart
                            </button>

                            <button class="wishlist-btn">
                                <i class="far fa-heart"></i>
                            </button>

                        </div>

                    </div>

                </div>

                <!-- PRODUCT -->

                <div class="product-card">

                    <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80">

                    <div class="product-info">

                        <h3>MacBook Pro</h3>

                        <div class="price">$1999</div>

                        <div class="rating">
                            ★★★★★
                        </div>

                        <div class="product-buttons">

                            <button class="cart-btn">
                                Add to Cart
                            </button>

                            <button class="wishlist-btn">
                                <i class="far fa-heart"></i>
                            </button>

                        </div>

                    </div>

                </div>

                <!-- PRODUCT -->

                <div class="product-card">

                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80">

                    <div class="product-info">

                        <h3>Smart Watch</h3>

                        <div class="price">$349</div>

                        <div class="rating">
                            ★★★★☆
                        </div>

                        <div class="product-buttons">

                            <button class="cart-btn">
                                Add to Cart
                            </button>

                            <button class="wishlist-btn">
                                <i class="far fa-heart"></i>
                            </button>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- DEAL SECTION -->

    <section>

        <div class="container">

            <div class="deal-section">

                <div class="container deal-wrapper">

                    <img
                        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80">

                    <div class="deal-content">

                        <h2>MacBook Air M2</h2>

                        <p>
                            Ultra thin. Super powerful. Limited time offer.
                        </p>

                        <div class="timer">

                            <div class="time-box">
                                <h3>01</h3>
                                <p>Days</p>
                            </div>

                            <div class="time-box">
                                <h3>12</h3>
                                <p>Hours</p>
                            </div>

                            <div class="time-box">
                                <h3>48</h3>
                                <p>Minutes</p>
                            </div>

                        </div>

                        <button class="btn btn-primary">
                            Buy Now
                        </button>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- TESTIMONIALS -->

    <section>

        <div class="container">

            <div class="section-title">
                <h2>Customer Reviews</h2>
                <p>What our customers say</p>
            </div>

            <div class="testimonials">

                <div class="testimonial-card">

                    <div class="rating">★★★★★</div>

                    <p>
                        Amazing shopping experience. Fast delivery and premium quality.
                    </p>

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=200&q=80">

                    <h4>Ava Martin</h4>

                </div>

                <div class="testimonial-card">

                    <div class="rating">★★★★☆</div>

                    <p>
                        Beautiful UI and smooth checkout experience.
                    </p>

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=200&q=80">

                    <h4>Michael Lee</h4>

                </div>

            </div>

        </div>

    </section>

    <!-- NEWSLETTER -->

    <section>

        <div class="container">

            <div class="newsletter">

                <h2>Stay Updated</h2>

                <p style="margin:20px 0;">
                    Subscribe for latest deals and new arrivals
                </p>

                <input type="email" placeholder="Enter your email">

                <button class="btn btn-primary">
                    Subscribe
                </button>

            </div>

        </div>

    </section>

    <!-- FOOTER -->

    <footer>

        <div class="container">

            <h2>NexusShop</h2>

            <p style="margin-top:15px;">
                © 2026 All Rights Reserved.
            </p>

        </div>

    </footer>

</body>

</html>

<!-- header.jsp -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    header {
        background: linear-gradient(90deg, #1e3c72, #2a5298); /* Gradient color */
        color: white;
        padding: 1.5rem 2rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    }

    .logo {
        display: flex;
        align-items: center;
        font-size: 1.8rem;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .logo img {
        width: 60px;
        height: 60px;
        margin-right: 15px;
        border-radius: 10px;
        background-color: white;
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }

    nav a {
        color: white;
        margin-left: 25px;
        text-decoration: none;
        font-size: 1.1rem;
        font-weight: 500;
        transition: color 0.3s ease;
    }

    nav a:hover {
        color: #ffd700; /* Gold highlight on hover */
    }

    nav i {
        margin-right: 6px;
    }

    @media (max-width: 768px) {
        header {
            flex-direction: column;
            align-items: flex-start;
        }

        nav {
            margin-top: 1rem;
        }

        nav a {
            display: block;
            margin: 8px 0;
        }
    }
</style>

<header>
    <div class="logo">
        <img src="images/logo.png" alt="VeeGo Logo"> <!-- Replace with your actual logo path -->
        VeeGo Video Browsing System
    </div>
    <nav>
        <a href="serach.jsp"><i class="fas fa-home"></i> Home</a>
        <a href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
        <a href="contact.jsp"><i class="fas fa-envelope"></i> Contact</a>
        <a href="login.jsp"><i class="fas fa-right-to-bracket"></i> Login</a>
        <a href="insert.jsp"><i class="fas fa-upload"></i> Upload Video</a>
        <a href="profile.jsp"><i class="fas fa-upload"></i> profile</a>
    	 <a href="insertRequest.jsp"> Ads</a>
    </nav>
</header>

<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #f5f7fa, #c3cfe2);
        font-family: 'Segoe UI', sans-serif;
    }
</style>


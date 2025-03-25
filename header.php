<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EventPlace - Discover Events</title>
    <link rel="stylesheet" href="css/style.css?v=<?php echo time(); ?>">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
</head>

<header>
    <div class="container">
        <a href="index.php" class="logo">Farha<span>Assosiation</span></a>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="#">Vendor</a></li>
                <li><a href="#">Pages</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>

        <?php if (isset($_SESSION['utilisateur_name'])) { ?>
            <div class="profile-dropdown">
                <button id="profileButton" class="profile-btn">
                    <img src="img/profile.jpg" alt="Profile" class="profile-img">
                    <span class="client-name"><?= htmlspecialchars($_SESSION['utilisateur_name']) ?></span>
                    <i class="fas fa-chevron-down"></i>
                </button>
                <div id="dropdownMenu" class="dropdown-menu">
                    <a href="profile.php">Profile</a>
                    <a href="#">Settings</a>
                    <a href="logout.php">Log Out</a>
                </div>
            </div>
        <?php } else { ?>
            <a href="login.php" class="btn">Sign in</a>
        <?php } ?>
    </div>
</header>
<?php 
session_start();
require 'config.php';

if($_SERVER['REQUEST_METHOD'] == "POST"){
    $email = $_POST['email'];

    $stmt = $pdo->prepare("SELECT * FROM utilisateur WHERE mailUser = ?");
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if($user){
        $_SESSION['utilisateur_id'] = $user["idUser"];
        $_SESSION['utilisateur_name'] = $user['nomUser']. " ". $user['prenomUser'];

        header("Location: index.php");
        exit();
    }else {
        $error = "Email ou mot de passe incorrect.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="frontend/css/login.css?v=<?php echo time(); ?>">
    <title>Login</title>
</head>
<body>
    <section class="login-container">
        <div class="login-box">
            <h2>Login</h2>
            <form action="login.php" method="POST">
                <input type="text" name="email" placeholder="Email" required>
                <button type="submit">Login</button>
            </form>
            <?php if(isset($error)) { echo "<p class='error'>$error</p>"; } ?>
            <p class="signup-link">Don't have an account? <a href="sign-up.php">Sign Up</a></p> <!-- Link to sign-up page -->
        </div>
    </section>
</body>
</html>
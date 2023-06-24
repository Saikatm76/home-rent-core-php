<?php require "config.php"; ?>
<?php 
	session_start();
	$query = "SELECT * FROM verified_houses";  
	$result = mysqli_query($con, $query) or die(" ".mysqli_error($con));
	// $_SESSION["house_id"] = $data["id"];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Get Your Home!</title>
	<link rel="stylesheet" type="text/css" href="../style/gethome.css">
</head>
<body>
	<div id="main">
		<nav>
			<a href="../index.php"><img src="../assets/logo1.png"></a>
			<ul>
				<li><a href="../index.php">Home</a></li>
				<?php if(isset($_SESSION['email'])) {
					echo "<li><a href='dashboard.php'>".$_SESSION['fullname']."</a></li>";
					echo "<li><a href='signout.php'>Sign Out</a></li>";
				}else {
					echo "<li><a href='login.php'>Login</a></li>";
					echo "<li><a href='register.php'>Register</a></li>";
				} ?>
			</ul>
		</nav>
		<div class="text">Houses</div>
		<div class="flex">
		<?php 
		if (mysqli_num_rows($result)>0) {
			while($data = mysqli_fetch_assoc($result)){
		?>
			<div class="houses">
				<div class="data">
					<p><label>Rooms: </label><?php echo $data["rooms"]; ?></p>
					<p><label>Rent: </label><?php echo $data["rent"]; ?></p>
					<p><label>Address: </label><br>
						<textarea readonly><?php echo $data["address"]; ?></textarea>					
					</p>
					<p><label>Town: </label><?php echo $data["town"]; ?></p>
					<p><label>Pin Code: </label><?php echo $data["pincode"]; ?></p>
				</div>
				<div><img class="image" src="<?php echo $data["image"]; ?>"></div>
				<div class="btn"><a href="done.php?active=<?php echo $data["id"] ?>">
					<button>Register</button></a>
				</div>
			</div>
		<?php
			}
		}
		?>
		</div>
	</div>
</body>
</html>
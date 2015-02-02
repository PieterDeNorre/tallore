<?php include 'php/db_config.php' ?>
<?php include 'php/db_connect.php' ?>

<?php
$result=mysql_query("
            SELECT *
            FROM soup
            WHERE soup_day = 1
        ");
	$f1=html_entity_decode(mysql_result($result,$i,"soup_name"));
    ?>
   

<div id="header">
	<div id="BG" class="beton"></div>
	<div id="BG" class="menu"></div>
	<div id="BG" class="about"></div>
	<div id="BG" class="contact"></div>
	<div id="BG" class="soup"></div>
	<div id="navcont">

		<div id="nav" class="logo"></div>
		<div id="navposcont">
			<div id="nav" class="menu">
				<h1>menu</h1>
			</div>
			<div id="nav" class="about">
				<h1>about us</h1>
			</div>
			<div id="nav" class="contact">
				<h1>contact</h1>
			</div>
		</div>
	</div>
	<div id="sotd" class="soup">
		<h1>Soup of the day : </h1><br>
		<span><?php echo htmlspecialchars($f1); ?></span>
	</div>
</div>

<script type="text/javascript" src="js/headerpicsnav.js"></script>
<h1>About Us</h1>
<div id="aboutus">

		<?php include 'php/db_config.php' ?>
		<?php include 'php/db_connect.php' ?>
		<?php
		$result=mysql_query("
		            SELECT *
		            FROM about
		            WHERE about_active = 1
		        ");
		        $numa=mysql_numrows($result);
		        mysql_close();
		            if (!empty($numa)) {
		    ?>
		    <?php
		        $i=0;
		        while ($i < $numa) {
		            $f1=html_entity_decode(mysql_result($result,$i,"about_title"));
		            $f2=html_entity_decode(mysql_result($result,$i,"about_content"));
		            $f3=html_entity_decode(mysql_result($result,$i,"about_image"));
		?>

		<div id="about">
			<h2><?php echo htmlspecialchars($f1); ?></h2>
			<div id="image"><img src="img/<?php echo htmlspecialchars($f3); ?>"></div>
			<div id="content"><?php echo htmlspecialchars($f2); ?></div>

		</div>



		<?php 
		    $i++;
		    }
		}
		?>
		<div id="about" class="partners">
			<div id="partners">
				<h2>Our Partners</h2>
			</div>
			<div id="logo" class="meli"></div>
			<div id="logo" class="tasse"></div>
		</div>


</div>

<script type="text/javascript">
	$(document).ready(function(){
		$("#logo.meli").bind("click touch",function() {
			window.open ('http://www.meli.be/',"_blank");
			return false;
		});
		$("#logo.tasse").bind("click touch",function() {
			window.open ('http://www.cafe-tasse.com/',"_blank");
			return false;
		});
	});
</script>


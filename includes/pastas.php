<div id="menu" class="pasta">
	<h1>Pasta</h1>
		<?php include 'php/db_config.php' ?>
		<?php include 'php/db_connect.php' ?>
		<?php
		$result=mysql_query("
		            SELECT *
		            FROM pasta
		            WHERE pasta_active = 1
		        ");
		        $numa=mysql_numrows($result);
		        mysql_close();
		            if (!empty($numa)) {
		    ?>
		    <?php
		        $i=0;
		        while ($i < $numa) {
		            $f1=html_entity_decode(mysql_result($result,$i,"pasta_name"));
		            $f2=html_entity_decode(mysql_result($result,$i,"pasta_price"));
		?>

		<div id="dish">
			<h2><?php echo htmlspecialchars($f1); ?><span id="price">HKD <?php echo htmlspecialchars($f2); ?></span></h2>
		</div>



		<?php 
		    $i++;
		    }
		}
		?>

</div>
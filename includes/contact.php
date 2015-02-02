<h1>Contact</h1>
<h2>Your message</h2>
<div id="form">


	<form autocomplete="off" method="post" action="php/mail.php" enctype="multipart/form-data">
		<textarea id="message" name="message" type="text" ></textarea>
		<input id="fname" name="fname" type="text" placeholder="First Name"/>
		<input id="lname" name="lname" type="text" placeholder="Last Name"/>
		<input id="phone" name="phone" type="tel" placeholder="Telephone Number"/>
		<input id="email" name="email" type="email" placeholder="Email Adress"/>
		
		<input id="btn" type="submit" value="SEND"/><input id="btn" class="reset" type="reset" value="CLEAR!">
	</form>

</div>

	<div id="contactpos">
		<h2>Location</h2>
		<div id="adress">
			Tallore &nbsp;&nbsp;
			<b>Shop&nbsp;D</b> &nbsp;&nbsp;
			7&#8209;17&nbsp;Amoy Street &nbsp;&nbsp;
			<b>T&nbsp;+852&nbsp;23278630</b> &nbsp;&nbsp;
			info@tallore.com.hk
		</div>


		<div id="socialcont">
			<h2>Find us on</h2>
			<div id="social">
				<div id="center">
					<ul>
						<li id="insta" ></li>
						<li id="face"></li>
						<li id="twitter"></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(document).ready(function(){
		$("#insta").bind("click touch",function() {
			window.open ('http://instagram.com/talloresoups',"_blank");
			return false;
		});
		$("#face").bind("click touch",function() {
			window.open ('https://www.facebook.com/TalloreSoups',"_blank");
			return false;
		});
		$("#twitter").bind("click touch",function() {
			window.open ('https://twitter.com/Tallore1',"_blank");
			return false;
		});
	});
</script>




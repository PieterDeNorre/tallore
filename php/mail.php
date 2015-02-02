<?php

//Creating Mail Varibles
$fname = stripslashes($_POST['fname'])."\r\n";
$lname = stripslashes($_POST['lname'])."\r\n";
$message = str_replace ("\n", '<br/>', stripslashes($_POST['message']))."\r\n";
$email = stripslashes($_POST['email'])."\r\n";

$subject = "Tallore online";
$host = "tallore@test.com";

$body = <<<EOD
<br><br>
$message<br><br><br>
<strong>Naam:</strong> $fname $lname<br>
<strong>Email:</strong> $email<br><br>

EOD;

if ($_SERVER['REQUEST_METHOD'] === 'POST')
{

$headers  = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    $headers .= "From:" . $email;
    $headers .= 'Bcc: pieter.denorre@lannooprint.be';

$mail_status = mail($host, $subject, $body, $headers);

if ($mail_status) { ?>
    <script language="javascript" type="text/javascript">
        alert('Bedankt voor uw mail.');
        window.location = 'http://www.pieterdn.be/tallore';
    </script>
<?php } else { ?>
    <script language="javascript" type="text/javascript">
        alert('Uw mail is niet verzonden, probeer later opnieuw.');
        window.location = 'http://www.pieterdn.be/tallore';
    </script>
<?php }  ?>
<?php
} else {   ?>
      <script language="javascript" type="text/javascript">
          window.location = 'http://www.pieterdn.be/tallore';
      </script>
  <?php
  } 
?>
}
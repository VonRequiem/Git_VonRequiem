<?php

if (isset($_POST)) {
	$email = $_POST['coucou'];
	echo $email;
	echo "<br>";
		if (!empty($_POST['attachments'])) {
			$attachments = $_POST['attachments'];
			foreach ($attachments as $attachment) {
				echo "<img src='".$attachment."' style='width: 200px;'>";
			}
		}
		
		/**
			PARTIE PUREMENT THEORIQUE !!!!!!
		$mailer = new SwiftMailer();
		$mailer->setDestinataire("emaildugars");
		$mailer->setSender("monEmail");
		$mailer->setContent($email);
		if (!empty($_POST['attachments'])) {
			$attachments = $_POST['attachments'];
			foreach ($attachments as $attachment) {
				$mailer->addAttachments($attachment);
			}
		}
		$mailer->send();
	
	**/
}


?>
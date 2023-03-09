		<div id="pageAccueil">
			<div class="form-box back ">

				

<?php

        $hName='127.0.0.1'; // host name
           $uName='phpmyadmin';   // database user name
           $password='Phpmy@dmin';   // database password
           $dbName = "Projet"; // database name
           $dbCon = mysqli_connect($hName,$uName,$password,"$dbName");
             if(!$dbCon){
                 die('Could not Connect MySql Server:' .mysql_error());
             }

?>

					<h2>Formulaire d'ajout de casier</h2>
					<form class="signup-form" action="" method="post">

	                    <input type="text" class="input" id="id_casier" autocomplete="off" placeholder="Numero du casier" name="idcasier" required>

	                    <input type="text" class="input" id="code_badge" autocomplete="off" placeholder="Code du badge" name="codebadge" minlength="11" maxlength="11" required>

	                    <input type="text" class="input" id="user_nom" autocomplete="off" placeholder="Nom" name="usernom" required>

	                    <input type="text" class="input" id="user_prenom" autocomplete="off" placeholder="Prenom" name="userprenom"  required>

	                    <input type="submit" class="button" id="submit" value="Enregister un casier" name="submitsignup">
                	</form><!--.login-form-->
                	
					      

					</div>
						<div class="spacertxt"></div>

					 <?php   if($_POST && !empty($_POST['idcasier'])  && !empty($_POST['codebadge'])&& !empty($_POST['usernom'])&& !empty($_POST['userprenom']) && $_POST['submitsignup'] ) {

					 	$idcasier = $_POST['idcasier'];

					 	$sql = "INSERT INTO `casier` ( `casierid`, `porte`, `cle`) VALUES ('".$idcasier."',1, 1);";
						$result=mysqli_query($dbCon,$sql);

					 	$codebadge = $_POST['codebadge'];

						$sql = "INSERT INTO `badge` (  `badgecode`, `opencasier`) VALUES ('".$codebadge."', '".$idcasier."');";
						$result=mysqli_query($dbCon,$sql);

						$sql = "SELECT max(badgeid) as badgeid  FROM badge ;";
                    		$result=mysqli_query($dbCon,$sql);
                    		$singleRow = mysqli_fetch_assoc($result);		

						$userprenom = $_POST['userprenom'];
						$usernom = $_POST['usernom'];

					 	$sql = "INSERT INTO `users` ( `nom`, `prenom`, `badgeid`) VALUES ('".$usernom."', '".$userprenom."', '".$singleRow['badgeid']."');";
					 		$result=mysqli_query($dbCon,$sql);

					 	}
                    ?>
				
			
		</div>


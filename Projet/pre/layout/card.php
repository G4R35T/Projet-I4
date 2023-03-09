
  <?php
    // // Database settings
        $hName='127.0.0.1'; // host name
           $uName='phpmyadmin';   // database user name
           $password='Phpmy@dmin';   // database password
           $dbName = "Projet"; // database name
           $dbCon = mysqli_connect($hName,$uName,$password,"$dbName");
             if(!$dbCon){
                 die('Could not Connect MySql Server:' .mysql_error());
             }

    $sql = "SELECT COUNT(*) AS nbcasier FROM casier";
                    $result=mysqli_query($dbCon,$sql);
                    $singleRow = mysqli_fetch_assoc($result);
    

    for ($i = 0; $i < $singleRow['nbcasier']; $i++) {

     $c = $i+1;

     $sql = "SELECT cle , porte  FROM casier WHERE casierid = ('".$c."');";
                    $result=mysqli_query($dbCon,$sql);
                    $singleRow1 = mysqli_fetch_assoc($result);

     $sql = "SELECT l.heure, u.nom, u.prenom FROM logs l JOIN badge b ON l.casierid = b.opencasier JOIN users u ON b.badgeid = u.badgeid WHERE l.succes = 1 AND l.casierid = ('".$c."') ORDER BY heure DESC LIMIT 1;";
                    $result=mysqli_query($dbCon,$sql);
                    $singleRow2 = mysqli_fetch_assoc($result);               
      

      echo '<div class="card-box">';
        echo '<div class="card">';
          echo  '<div class="card-title">';
            echo '<h1>Casier '.($c). '</h1>';
            echo '<div class="card-ham">';
              echo '<div class="card-ham-bar h"></div>';
              echo '<div class="card-ham-bar m"></div>';
              echo '<div class="card-ham-bar b"></div>';
            echo '</div>';
          echo '</div>';
          echo '<div class="casier">';
            echo '<div class="porte"></div>';
            echo '<img class="cle" src="img/clé.png">';
          echo '</div>';
        echo '</div>';
        echo '<div class="card-ext">';
          echo '<div class="card-ext-ptitre">';
            echo '<div class="card-ext-titre">';
              echo '<div class="card-ext-petit-rond"></div>';
              echo '<h3>Clé </h3>';
            echo '</div>';
            if($singleRow1['cle']  == 1){
              echo '<div class="card-ext-etat c presente" ><p>Présente</p></div>';
            }
            else{
              echo '<div class="card-ext-etat c absente" ><p>Absente</p></div>';

            }
            echo '<div class="card-ext-titre">';
              echo '<div class="card-ext-petit-rond"></div>';
              echo '<h3>Porte</h3>';
            echo '</div>';
            if($singleRow1['porte']  == 1){
              echo '<div class="card-ext-etat p fermee" ><p>Fermée</p></div>';
            }
            else{
              echo '<div class="card-ext-etat p ouverte"><p>Ouverte</p></div>';
              
            }
            echo '<div class="card-ext-titre">';
              echo '<div class="card-ext-petit-rond"></div>';
              echo '<h3>Dernier utilisateur</h3>';
            echo '</div>';  
            echo '<div class="card-ext-etat">';
              if(!$singleRow2['nom'] == ""){
                echo '<p>'.($singleRow2['nom']).' '.($singleRow2['prenom']).'</p>';
                echo '<p>'.($singleRow2['heure']).'</p>';
              }else{
                echo '<p>Aucun dernier</p>';
                echo '<p>utilisateur</p>';
              }
            echo '</div>';
          echo '</div>';  
        echo '</div>';
      echo '</div>';
    }
  ?>
  
  <script src="js/card.js"></script>

<!-- 

$sql = "SELECT c.cle, c.porte, l.heure,u.nom,u.premon FROM casier c JOIN logs l ON c.casierid = l.casierid JOIN badge b ON c.casierid = b.opencasier JOIN users u ON b.badgeid = u.badgeid WHERE c.casierid = $i+1 AND l.succes = 1 ORDER BY l.heure DESC LIMIT 1;";
                    $result=mysqli_query($dbCon,$sql);
                    $singleRow = mysqli_fetch_assoc($result);
                    
                ?>



SELECT cle , porte  FROM casier WHERE casierid = $i+1;
SELECT l.heure, u.nom, u.prenom FROM logs l JOIN badge b ON l.casierid = b.opencasier JOIN users u ON b.badgeid = u.badgeid WHERE l.succes = 1 AND l.casierid = $i+1 ORDER BY heure DESC LIMIT 1;


 -->
<?php

      include 'connect.php';
      $content = file_get_contents('data.sql');
      
      $db = new Database();
      $con = $db->getConnection();
      if($con)
      {
            $counter = 0;
            $failed = true;

            while($failed && $counter < 3)
            {
                  try{
                        $con->multi_query($content);  
                        $con->commit();
                        $failed = false;                
                  }
                  catch(Exception $e){
                        $con->rollback();
                        $counter++;
                  }
            }
            if($counter == 3){
                  die('There is a lot of activity right now. Try later droid.');
            }
            
      }
      else{
            die('Connection could not be established');
      }
?>
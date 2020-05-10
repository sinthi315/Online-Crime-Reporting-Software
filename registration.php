<?php
        include("include/config.php");
        include("include/function.php");
        include("include/admin_header.php");
?>

<?php

        if($register_form=="true")
        {
                $link = connect_db();
                $sql = "insert into user_properties values( '$form_username', '$form_password', '$form_first_name','$form_last_name','$form_user_phone_no','$form_secured_item','$form_user_notes')";
                $result = mysql_query($sql, $link);

                if($result==null)
                        echo "<br>Registration failed. Please try again.<br>";
                else
                        echo "<br><b>Welcome $form_first_name</b><br>";
        }
        else
        {
?>

<title>Registration</title>

<style type="text/css">
body,td,th {
	color: #003;
}
body {
	background-color: #E9D2FF;
}
</style>
</head>

<body>

<div class="container">

<div class="content">

                					  </table></td></tr>
        </table><br><br><br><br><br><br>
       
<h1>Registration: </h1>

<form action="registration.php" method="GET">
                        <input type="hidden" name="register_form" value="true">
                        Username: <input type="text" name="form_username"><br><br>
                        Password: <input type="password" name="form_password"><br><br>
                        First Name: <input type="text" name="form_first_name"><br><br>
                        
                        Last Name: <input type="text" name="form_last_name"  ><br><br>
                        
                        User Phone no: <input type="text" name="form_user_phone_no" ><br><br>
                        
                        Secured Item: <input type="text" name="form_secured_item" ><br><br>
                        
                        User Notes: <input type="textarea" name="form_user_notes" Columns="3" rows="1" ><br><br>
                        
                       
                        <input type="submit" value="Register Me">
               
 </form>
                
                
<?php
        }
?>


<?php
        include("include/footer.php");
?>


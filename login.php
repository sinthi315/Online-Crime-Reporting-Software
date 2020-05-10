<?php
        include("include/config.php");
        include("include/function.php");
        include("include/admin_header.php");
?>
<?php
        if($login_form)
        {
                $link = connect_db();
                $sql = "select * from user_properties where username='$form_username' and password='$form_password'";
                $result = mysql_query($sql, $link);
                $row = mysql_fetch_array($result);
                
                if($row['username']==null)
                        echo "<br>Login failed. Please try again.<br>";
                else
                {
                        echo "<br><b>Welcome $row[fullname]</b><br>";
                        
                        $_SESSION['username'] = $row['username'];
                        $_SESSION['first_name'] = $row['first_name'];
                }
        }
        else
        {
?>

<title>Login</title>

<style type="text/css">
body,td,th {
	color: #003;
}
body {
	background-color: #FFDFFF;
}
</style>
</head>

<body>

<div class="container">

<div class="content">


                					  </table></td></tr>
</table><br><br><br><br><br><br>

                <h1><center>Enter your Username and Password for login</center></h1>
                <form action="login.php" method="GET">
                        <input type="hidden" name="login_form" value="true">
                     <center> Username : <input type=text name="form_username" size=20></center><br>
                        <center>Password : <input type=password name="form_password" size=20></center><br><br>
                        <center><input type=submit value="Login"></center>
                        
               </form>
<?php
        }
?>

<br >
         </br>

<?php
        include('include/footer.php');
?>
<?php   
        include("include/config.php");
        include("include/function.php");
        include("include/admin_header.php");
	  
$reporting_period = $_POST['reporting_period'];
$tips_line = $_POST['tips_line'];
$offence_name = $_POST['offence_name'];
$incident_type = $_POST['incident_type'];
$admin_phoneNo = $_POST['admin_phoneNo'];
$email = $_POST['email'];
$country_name = $_POST['country_name'];
$city_name = $_POST['city_name'];
$state_name = $_POST['state_name'];
$postal_code = $_POST['postal_code'];
$program_no = $_POST['program_no'];
$population = $_POST['population'];
$report_date = $_POST['report_date'];
$date_of_inception = $_POST['date_of_inception'];

$query="INSERT INTO reports (id,reporting_period,tips_line,offense_name,incident_type,admin_phoneNo,email,country_name,city_name,state_name,state_name,postal_code,program_no,population,report_date,date_of_inception)
VALUES 
('NULL','".$reporting_period."','".$tips_line."','".$offence_name."','".$incident_type."','".$admin_phoneNo."','".$email."','".$country_name."','".$city_name."','".$state_name."','".$postal_code."','".$program_no."','".$population."','".$report_date."','".$date_of_inception."')";


?>

<title>Reports</title>

<style type="text/css">
body,td,th {
	color: #003;
}
body {

	background-color: #A6D2D2;
}
</style>
</head>

<body>

<div class="container">

<div class="content">


                					  </table></td></tr>
        </table><br><br><br><br><br><br>
          
 <h1>Reports</h1>
<form action="index.php" method="get" name="form3">

<p>
<label><strong>Reporting Period :</strong></label>
&nbsp;
<strong>
<input type="text" name="reporting_period" size="30" />
</strong>
</p>
  <p>
  <label><strong>Tips Line :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="tips_line" size="30" />
  </strong>
  </p>
  <p>
    <label><strong>Offence Name :</strong></label>
  &nbsp;
  <strong>

  <input type="text" name="offence_name" size="30" />
  </strong>
  </p>
  <p>
    <label><strong>Incident Type :</strong></label>
  &nbsp;
  <strong>

  <input type="text" name="incident_type" size="30" />
  </strong>
  </p>
  <p>
    <label><strong>Admin Phone No.:</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="admin_phoneNo" size="30" />
  </strong>
  </p>
  <p>
    <label><strong>Admin Email Address :</strong></label>
  &nbsp;
  <strong>

  <input type="text" name="email" size="30" /></strong>
  </p>
  <p>
    <label><strong>Country Name :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="country_name" size="30" /></strong>
  </p>
  <p>
    <label><strong>City Name :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="city_name" size="30" /></strong>
  </p>
  <p>
    <label><strong>State Name :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="state_name" size="30" /></strong>
  </p>
  <p>
    <label><strong>Postal Code :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="postal_code" size="30" /></strong>
  </p>
  <p>
    <label><strong>Program No. :</strong></label>
&nbsp;
<strong>
<input type="text" name="program_no" size="30" /></strong>
  </p>
  <p>

<label><strong>Population :</strong></label>
    &nbsp;
    <strong>
    <input type="text" name="population" size="30" /></strong>
  </p>
  <p>
    <label><strong>Reporting Date :</strong></label>
  &nbsp;
  <strong>
  <input type="text" name="report_date" size="30" /></strong>
  </p>
  <p>
    <label><strong>Inception date :</strong></label>
    &nbsp;
    <strong>
    <input type="text" name="date_of_inception" size="30" /></strong>
  </p>
  <p align="justify">
    <input type="submit" name="button1" id="button1" value="Submit" />
  </p>
  
  <table width="510" border="1">
  <tr>
    <th scope="col">ID</th>
    <th scope="col">Reporting Period</th>
    <th scope="col">Tips Line</th>
    <th scope="col">Offence Name</th>
    <th scope="col">Incident Type</th>
    <th scope="col">Admin Phone No.</th>
    <th scope="col">Admin Email Address</th>
    <th scope="col">Country Name</th>
    <th scope="col">City Name</th>
    <th scope="col">State Name</th>
    <th scope="col">Postal Code</th>
    <th scope="col">Program No.</th>
    <th scope="col">Population</th>
    <th scope="col">Reporting Date</th>
    <th scope="col">Inception Date</th>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>


</form>


<p><b>Search :</b>&nbsp;</p>
   
<form action="view_reports.php" method="get" name="form4">

    <p>
 

      <label><strong>ID : </strong></label>
      &nbsp;
      <strong>
       <input type="text" name="id" size="30" /></strong>
    </p>
    <p>
      <label><strong>Offence Name :</strong></label>
      &nbsp;
      <strong>
      <input type="text" name="offence_name" size="30" /></strong>
    </p>
 
    <p>

         <input type="submit" name="submit" id="sumit" value="Search" />

    </p>


</form>
  

 
 <?
         include("include/footer.php");
 
?>
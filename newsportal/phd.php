
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Documents links</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <?php include('includes/header.php');?>
    <!-- Page Content -->
   <BR>
   <BR>
   <BR>

          <!-- Blog Post --> 
		  <div class="card mb-4">
		   <div class="card-body">
<?php 
$user = "root"; 
$password = ""; 
$host = "localhost"; 
$dbase = "newsportal"; 
$table = "tblphd"; 
 
// Connection to DBase 
mysql_connect($host,$user,$password); 
@mysql_select_db($dbase) or die("Unable to select database");

$result= mysql_query( "select tblphd.id as pid,tblphd.PostTitle as posttitle,tblphd.PostFile as postfile,tblphd.PostUrl as url from tblphd " ) 
or die("SELECT Error: ".mysql_error()); 

print "<table border=1>\n"; 
while ($row = mysql_fetch_array($result)){ 
$files_field= $row['postfile'];
$files_show= "admin/postimages/$files_field";
$descriptionvalue= $row['posttitle'];
print "<tr>\n"; 
print "\t<td>\n"; 
echo "<font face=arial size=4  align=center/>$descriptionvalue</font>";
print "</td>\n";
print "\t<td>\n"; 
echo "<div align=center><a href='$files_show'>$files_field</a></div>";
print "</td>\n";
print "</tr>\n"; 
} 
print "</table>\n"; 

?> 
    </div> 
    </div>



<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
<BR>
    
    <!-- /.container -->

    <!-- Footer -->
 <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

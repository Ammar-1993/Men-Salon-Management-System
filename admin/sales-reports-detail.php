<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['bpmsaid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!DOCTYPE HTML>
<html lang="ar">
<head>
<title>نظام إدارة صالون الرجال || تقارير المبيعات</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="../css/variables.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">

<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<script src="../js/theme.js"></script>

<link href="css/custom.css" rel="stylesheet">

<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push" dir="rtl">
	<div class="main-content">
		<!--right-fixed -navigation-->
		 <?php include_once('includes/sidebar.php');?>
		<!--right-fixed -navigation-->
		<!-- header-starts -->
		 <?php include_once('includes/header.php');?>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<h3 class="title1"> تقارير المبيعات</h3>
					
					
				
					<div class="table-responsive bs-example widget-shadow">
						
 				  <?php
$fdate=$_POST['fromdate'];
$tdate=$_POST['todate'];
$rtype=$_POST['requesttype'];
?>
<?php if($rtype=='mtwise'){
$month1=strtotime($fdate);
$month2=strtotime($tdate);
$m1=date("F",$month1);
$m2=date("F",$month2);
$y1=date("Y",$month1);
$y2=date("Y",$month2);
    ?>
<h4 class="header-title m-t-0 m-b-30">تقرير المبيعات الشهرية</h4>
<h4 align="center" style="color:blue">تقرير المبيعات من<?php echo $m1."-".$y1;?> إلى <?php echo $m2."-".$y2;?></h4>
<hr />

						<table class="table table-bordered">  <thead>
<tr>
<th>رقم التقرير</th>
<th>شهر / سنة </th>
<th>المبيعات</th>
</tr>
</thead>
<?php
$ret=mysqli_query($con,"select month(PostingDate) as lmonth,year(PostingDate) as lyear,sum(Cost) as totalprice from  tblinvoice join tblservices on tblservices.ID= tblinvoice.ServiceId where date(tblinvoice.PostingDate) between '$fdate' and '$tdate' group by lmonth,lyear");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
              
                <tr>
                    <td><?php echo $cnt;?></td>
                  <td><?php  echo $row['lmonth']."/".$row['lyear'];?></td>
              <td><?php  echo $total=$row['totalprice'];?></td>
             
                    </tr>
                <?php
$ftotal+=$total;
$cnt++;
}?>
<tr>
                  <td colspan="2" align="center">الإجمالي </td>
              <td><?php  echo $ftotal;?></td>
   
                 
                 
                </tr></table> 
                <?php } else {
$year1=strtotime($fdate);
$year2=strtotime($tdate);
$y1=date("Y",$year1);
$y2=date("Y",$year2);
 ?>
 <h4 class="header-title m-t-0 m-b-30">تقرير المبيعات الشهرية</h4>
    <h4 align="center" style="color:blue">تقرير المبيعات من<?php echo $y1;?> إلى <?php echo $y2;?></h4>
    <hr />
    <table class="table table-bordered">  <thead>
<tr>
<th>رقم التقرير</th>
<th>سنة </th>
<th>المبيعات</th>
</tr>
</thead>
<?php
$ret=mysqli_query($con,"select year(PostingDate) as lyear,sum(Cost) as totalprice from  tblinvoice join tblservices on tblservices.ID= tblinvoice.ServiceId where date(tblinvoice.PostingDate) between '$fdate' and '$tdate' group by lyear");

$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
              
                <tr>
                    <td><?php echo $cnt;?></td>
                   <td><?php  echo $row['lyear'];?></td>
              <td><?php  echo $total=$row['totalprice'];?></td>
             
                    </tr>
                <?php
$ftotal+=$total;
$cnt++;
}?>
<tr>
                  <td colspan="2" align="center">الإجمالي </td>
              <td><?php  echo $ftotal;?></td>
   
                 
                 
                </tr></table>
                <?php } ?>	
					</div>
				</div>
			</div>
		</div>
		<!--footer-->
		 <?php include_once('includes/footer.php');?>
        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuright = document.getElementById( 'cbp-spmenu-s1' ),
				showrightPush = document.getElementById( 'showrightPush' ),
				body = document.body;
				
			showrightPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toleft' );
				classie.toggle( menuright, 'cbp-spmenu-open' );
				disableOther( 'showrightPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showrightPush' ) {
					classie.toggle( showrightPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>
</body>
</html>
<?php }  ?>
<?php 
include('includes/dbconnection.php');
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
  {

    $name=$_POST['name'];
    $email=$_POST['email'];
    $services=$_POST['services'];
    $adate=$_POST['adate'];
    $atime=$_POST['atime'];
    $phone=$_POST['phone'];
    $aptnumber = mt_rand(100000000, 999999999);
  
    $query=mysqli_query($con,"insert into tblappointment(AptNumber,Name,Email,PhoneNumber,AptDate,AptTime,Services) value('$aptnumber','$name','$email','$phone','$adate','$atime','$services')");
    if ($query) {
$ret=mysqli_query($con,"select AptNumber from tblappointment where Email='$email' and  PhoneNumber='$phone'");
$result=mysqli_fetch_array($ret);
$_SESSION['aptno']=$result['AptNumber'];
 echo "<script>window.location.href='thank-you.php'</script>";  
  }
  else
    {
     echo "<script>alert('هناك خطأ ما. حاول مرة اخرى.');</script>"; 
    }

  
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
   
    <title>نظام إدارة صالون الرجال || استمارة المواعيد</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i%7cMontserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Style -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap-rtl.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <?php include_once('includes/header.php');?>
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="page-caption">
                        <h2 class="page-title">حجز موعد</h2>
                        <div class="page-breadcrumb">
                            <ol class="breadcrumb">
                                <li><a href="index.php">الرئيسية</a></li>
                                <li class="active">احجز موعد</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h1>استمارة الحجز</h1>
                            <p> احجز موعدك لحفظ راش الصالون.</p>
                            <form method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label" for="name">الاسم</label>
                                        <input type="text" class="form-control" id="name" placeholder="الاسم" name="name" required="true">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="phone">الهاتف</label>
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="الهاتف" required="true" maxlength="10" pattern="[0-9]+">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="email">البريد الإلكتروني</label>
                                         <input type="email" class="form-control" id="appointment_email" placeholder="البريد الإلكتروني" name="email" required="true">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label" for="Subject">الخدمات</label>
                                        <select name="services" id="services" required="true" class="form-control">
                                <option value="">حدد الخدمات</option>
                                <?php $query=mysqli_query($con,"select * from tblservices");
              while($row=mysqli_fetch_array($query))
              {
              ?>
                               <option value="<?php echo $row['ServiceName'];?>"><?php echo $row['ServiceName'];?></option>
                               <?php } ?> 
                              </select>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="textarea">تاريخ الموعد</label>
                                            <input type="date" class="form-control appointment_date" placeholder="التاريخ" name="adate" id='adate' required="true">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <label class="control-label" for="textarea">وقت الموعد</label>
                                            <input type="time" class="form-control appointment_time" placeholder="الوقت" name="atime" id='atime' required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <button type="submit" id="submit" name="submit" class="btn btn-default">حجز</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <!-- footer-->
        <div class="container">
            <div class="footer-block">
                <!-- footer block -->
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-widget">
                            <h2 class="widget-title">عنوان الصالون</h2>
                            <!--<ul class="listnone contact">-->
				    <ul class="listnone">
                                <li><i class="fa fa-map-marker"></i> الرياض- الشارع العام- جوار الراجحي </li>
                                <li><i class="fa fa-phone"></i> +00 (967) 714294340</li>
                                <li><i class="fa fa-fax"></i> +00 (967) 774344625</li>
                                <li><i class="fa fa-envelope-o"></i> ammaralnggar@gmail.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget footer-social">
                            <!-- social block -->
                            <h2 class="widget-title">وسائل التواصل </h2>
                            <ul class="listnone">
                                <li>
                                    <a href="#"> <i class="fa fa-facebook"></i> الفيسبوك </a>
                                </li>
                                <li><a href="#"><i class="fa fa-twitter"></i> تويتر</a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i> جوجل بلاس</a></li>
                                <!--<li><a href="#"><i class="fa fa-linkedin"></i> لينكد إن</a></li>
                                <li>
                                    <a href="#"> <i class="fa fa-youtube"></i>اليوتيوب</a>
                                </li>-->
                            </ul>
                        </div>
                        <!-- /.social block -->
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                        <div class="footer-widget widget-newsletter">
                            <!-- newsletter block -->
                            <h2 class="widget-title">النشرات الإخبارية</h2>
                            <p>أدخل عنوان بريدك الإلكتروني لتلقي معلومات العميل الجديد وغيرها من المعلومات المفيدة في صندوق الوارد الخاص بك.</p>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="عنوان البريد الالكتروني">
                                <span class="input-group-btn">
                            <button class="btn btn-default" type="button">إشتراك</button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </div>
                        <!-- newsletter block -->
                    </div>
                </div>
                <div class="tiny-footer">
                    <!-- tiny footer block -->
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="copyright-content">
                                <p>نظام إدارة صالون الرجال @ 2022 </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.tiny footer block -->
            </div>
            <!-- /.footer block -->
        </div>
    </div>
    <!-- /.footer-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menumaker.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/sticky-header.js"></script>
</body>

</html>

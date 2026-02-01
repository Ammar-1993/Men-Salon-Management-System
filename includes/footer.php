<?php
include('includes/dbconnection.php');
session_start();
error_reporting(0);

if(isset($_POST['sub']))
  {
   
    $email=$_POST['email'];
 
     
    $query=mysqli_query($con, "insert into tblsubscriber(Email) value('$email')");
    if ($query) {
   echo "<script>alert('تم اشتراكك بنجاح !.');</script>";
echo "<script>window.location.href ='index.php'</script>";
  }
  else
    {
       echo '<script>alert("هناك خطأ ما. حاول مرة اخرى")</script>';
    }

  
}
  ?>
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
                                <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                                <li><i class="fa fa-map-marker"></i> <?php  echo $row['PageDescription'];?> </li>
                                <li><i class="fa fa-phone"></i> +<?php  echo $row['MobileNumber'];?></li>
                               
                                <li><i class="fa fa-envelope-o"></i>  <?php  echo $row['Email'];?></li><?php } ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-widget footer-social">
                            <!-- social block -->
                            <h2 class="widget-title">وسائل التواصل </h2>
                            <ul class="listnone">
                                <li><a href="#"> <i class="fa fa-facebook"></i> الفيسبوك </a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i> تويتر</a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i> جوجل بلاس</a></li>
                              <!-- <li><a href="#"><i class="fa fa-linkedin"></i> لينكد إن</a></li>
                                <li><a href="#"> <i class="fa fa-youtube"></i>اليوتيوب</a> </li>-->
                            </ul>
                        </div>
                        <!-- /.social block -->
                    </div>
                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                        <div class="footer-widget widget-newsletter">
                            <!-- newsletter block -->
                            <h2 class="widget-title">النشرات الإخبارية</h2>
                            <p>أدخل عنوان بريدك الإلكتروني لتلقي معلومات العميل الجديد وغيرها من المعلومات المفيدة في صندوق الوارد الخاص بك.</p>
                            <form method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="عنوان البريد الالكتروني" name="email">
                                <span class="input-group-btn">
                            <button class="btn btn-default" type="submit" value="submit" name="sub">إشتراك</button>
                            </span>
                            </div></form>
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
                                <p>نظام إدارة صالون الرجال @ 2022</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.tiny footer block -->
            </div>
            <!-- /.footer block -->
        </div>
    </div>
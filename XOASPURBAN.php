
<?php 
	session_start();
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="MobileOptimized" content="320">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" >
    <link rel="stylesheet" href="assets/css/nice-select.css" >
    <link rel="stylesheet" href="assets/css/font.css" >
    <link rel="stylesheet" href="assets/css/swiper-bundle.min.css" >
    <link rel="stylesheet" href="assets/css/comman.css" >
    <link rel="stylesheet" href="assets/css/style.css" >
    <!-- Favicon Link -->
    <link rel="shortcut icon" type="image/png" href="assets/images/index1/Capture.PNG">
    <title>ADMIN</title>
  </head>
<body>
<!-- main-wrapper start -->
<div class="main-wrapper">
<!-- Preloader Box -->
<div class="preloader-wrapper preloader-active preloader-open">
    <div class="preloader-holder">
        <div class="preloader d-flex justify-content-center align-items-center h-100">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- Header Start -->
<div class="header-main-wrapper header-style1">
    <div class="header-top-wrapper">
        <div class="ht-right">
            <div class="ht-right_info">
                <ul class="ht-info-list">
                </ul>
            </div> 
        </div> 
    </div>  
    <div class="header-sticky-wrapper">
        <div class="hs-left">
            <div class="hs-left-logo">
                <a href="URBANWEAR.php"><img src="./assets/images/index1/svg/image.svg" alt=""></a>
            </div>
        </div>
        </div>
</div> 
<!--FORM XOA-->
<body>
<?php
	include ("Config.php");
  $sql = "SELECT * FROM sanpham ORDER BY id";
	$result = mysqli_query($link, $sql);
	$rows = mysqli_fetch_array($result);
	if(isset($_POST['sbmDell']) == true){
    $id = $_POST["id"];
	  $sql1 = "SELECT * FROM sanpham WHERE id = '" .$id. "' ";
	  $result = mysqli_query($link, $sql1);
    $sqlDel = "DELETE * FROM sanpham WHERE id = '" .$id. "' ";
		$result = mysqli_query($link, $sqlDel);
    header ("location: QLSPURBAN.PHP");
  }
?>
<p align="center"><strong>SẢN PHẨM CẦN XÓA</strong></p>
<form id="form1" name="form1" method="post" action="XOASPURBAN.PHP">
  <table width="497" border="0" cellspacing="2" cellpadding="2" align="center">
    <tr>
      <td width="134">Tên Sản Phẩm</td>
      <td width="319">
	<input name="txtten" type="text" value="<?=$rows['ten']?>" size="25" readonly="readonly"    />
</td>      
    </tr>
    <tr>
      <td>Giá</td>
      <td width="319"><label for="textfield"></label>
      <input name="txtgia" type="demical"  value="<?=$rows['gia']?>" size="25" readonly="readonly"   /></td>
    </tr>
    <tr>
      <td>Chất Liệu</td>
      <td width="319"><label for="textfield"></label>
      <input name="txtchatlieu" type="tex"  value="<?=$rows['chatlieu']?>" size="25" readonly="readonly"   /></td>
    </tr>
    <tr>
      <td>Mô Tả</td>
      <td width="319"><label for="textfield"></label>
      <input name="txtmota" type="text"  value="<?=$rows['mota']?>" size="25" readonly="readonly"   /></td>
    </tr>
    <tr>
      <td>Hình Ảnh</td>
      <td width="319"><label for="textfield"></label>
      <input name="txthinhanh" type="text"  value="<?=$rows['hinhanh']?>" size="25" readonly="readonly"   /></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        		<td colspan="4" align="center" bgcolor="#FFFFFF"><input name="delete" type="submit" 
        value="Delete"></td>
    </tr>
    <tr>     <td> <a href="QLSPURBAN.PHP"><strong>Trở Về</strong></a><strong></strong></td></tr>
  </table>
</form>

</body>


<!-- Bottom Footer start -->
<div class="e-bfooter-wrap e-bfooter-cloth">            
    <div class="container">            
        <div class="row">            
            <div class="col-lg-6">
                <p class="e-footer-text text-center text-lg-left">Copyright © 2023. All Right Reserved.</p>
            </div>
            <div class="col-lg-6">
                <ul class="e-bfooter-list">
                    <li><a href="#!">Legal Information</a></li>
                    <li><a href="#!">Privacy policy</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

</div>
<div class="bg-overlay cb-overlay cmn-cart-tgl"></div>

    <!-- jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/SmoothScroll.min.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>     
   
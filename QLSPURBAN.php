
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
<!--FORM THEM-->
<style>
#header {
	background-color:white;
	color: black;
	padding: 0px;
	text-align: center;
}
body {
	margin: 1;
	padding: 1;
	font-family: 'Times New Roman', Times, serif, sans-serif;
}
#sanpham {
	background-color:white;	
	color: black;
	padding: 50px;
	text-align:center;
}
#tuychon {
	background-color:  white;
	padding: 0px;
	overflow: hidden;
	text-align:center;
}

#tuychon ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

#tuychon li {
	float: left;
	padding: 10px;
}

#tuychon li a {
	text-decoration: none;
	color: #333;
}

#content {
	padding: 20px;
	 background-color: #f5f5f5;
  padding: 20px;
  margin: 20px 0;
  border-radius: 5px;
  text-align: center;
}
<!-- style from san pham-->

        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    

</style>
<body>
<div id="header">
		<h1>Trang Quản Lý WEBSITE</h1>
	</div>
	<div id="tuychon">
		<ul>
			<li><a href="QLSPURBAN.php">Quản lý Sản Phẩm </a></l>
			<li><a href="URBANWEAR.PHP">Về lại Trang Chủ </a></li>
			<li><a href="THEMSPURBAN.PHP">Thêm Sản Phẩm</a></li>
		</ul>
	</div>
  <div>
   <div id=sanpham>
   <h1> Quản lý sản phẩm</h1>             
    <table>
<?PHP
	include ("config.php");	//Goi TT KNCSDL
	$sql = "SELECT * FROM sanpham ORDER BY id";
	$result = mysqli_query($link, $sql);
	$smt = mysqli_num_rows($result);
	$previous_id = null;
	$displayedProducts = array();
?>
 <?PHP
 	$i = 1;
	//rows = mysqli_fetch_array($KQThucThiCautruyVan) 
	//Dua tung mau tin vao Bien Mang ROWS
	while ($rows = mysqli_fetch_array($result)){?>
	<tr>
    		<td><?php echo $i++;?></td>
            <td valign="top">&nbsp;<?=$rows['ten']?></td>
            <td valign="top">&nbsp;<?=$rows['gia']?></td>
            <td valign="top">&nbsp;<?=$rows['chatlieu']?></td>
            <td valign="top">&nbsp;<?=$rows['mota']?></td>
            <td valign="top">&nbsp;<img src="<?=$rows['hinhanh']?>" width="200" height="150" /></td>
			    <td>
                <a href="CHINHSUAURBAN.php?id=">CHỈNH SỬA</a>
                <a href="XOASPURBAN.php? ">XÓA</a>
            </td>
    </tr>		
 <?php } ?>
</tbody>         
</table>
</div>
</body>
</html>

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
   
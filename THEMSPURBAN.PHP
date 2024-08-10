
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
        .khung{
            font-family: 'Times New Roman', Times, serif;
            max-width: 600px;
            margin: 0 auto;
            padding: 50px;
            background-color: white;
        }
        h3 {
            color: dark;
            text-align: center;
            margin-bottom: 30px;
        }
        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
			
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            border-radius: 10px;
            color: black;

        }
        input[type="text"],
        textarea,
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin-bottom: 20px;
        }
        input[type="submit"] {
            background-color: black;
            color: black;
            padding: 50px 50px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 1s ease;
        }
        input[type="submit"]:hover {
            background-color: black;
        }
    </style>
</head>
<?php 
	include ("Config.php");	//Goi TT KNCSDL
	//Mo Bang sanpham Trong CSDL
	$sql = "SELECT * FROM sanpham ORDER BY id";
	$result = mysqli_query($link, $sql);
	if(isset($_POST['sbmAdd']) == true){
		$ten = $_POST['ten'];
		$gia = $_POST['gia'];
		$chatlieu = $_POST['chatlieu'];
		$mota = $_POST['mota'];
		$hinhanh = $_FILES['hinhanh'];
            $sql1 = "INSERT INTO sanpham(ten, gia, chatlieu, mota,  hinhanh) VALUES ('$ten', '$gia','$chatlieu', '$mota', '$hinhanh')";
            $result = mysqli_query($link, $sql1);	
            move_uploaded_file($image_tmp, $image);
            header ("location: QLSPURBAN.PHP");
	}
?>

<div class="khung">
    <h3 align="center">THÊM SẢN PHẨM VÀ PHỤ KIỆN</h3>
    <form method="post" action="file:///C|/xampp/htdocs/URBANWEAR/THEMSPURBAN.PHP">
        <div>
        	<label for="">ID Sản Phẩm</label>
        	<input type= "int" name="id" class="from-control" required />
        </div>
        <div>
        	<label for=""> Tên Sản Phẩm</label>
        	<input type= "text" name="ten" class="from-control" required />
        </div>
        <div>
        	<label for=""> Giá</label>
            <input type= "demical" name="gia" class="from-control" required/> 
        </div>
        <div>
        	<label for=""> Chất Liệu</label>
        	<input type= "text" name="chatlieu" class="from-control" required/>
        </div>
        <div>
        	<label for=""> Mô Tả</label>
        	<input type= "text" name="mota" class="from-control" required/>
        </div>
        <div>
        	<label for=""> Hình Ảnh</label>
        	<input type= "file" name="hinhanh" class="from-control" />
        </div>
        
        <div>
        <button name="sbmAdd" class="btn btn success" type="submit">Thêm</button>
        </div>
    </form>
   <?php 
   session_destroy();
   ?>
</div>


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
   
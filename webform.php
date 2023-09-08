<?php 
session_start();
header("Cache-Control:private");
include_once('config.php');
$_SESSION['result'] = $_POST;
/*
if($_POST['action'] == '直 接 看 結 果') {
	header("Location: result");
	die();
}*/

	header("Location: result");
	die();

?>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title>性知識達人就是你</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/animations.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body class="page-webform">
  <div id="page">
	<form action="result" class="webform" method="post" accept-charset="UTF-8">
		<div class="yellow-bg">
			<div class="webform-inner">
				<p>能聯繫到您的資料<br>
				才不會跟 iPhone14 錯過！</p>
				<input type="text" maxlength="20" placeholder="姓名" required="required" name="fullname" class="form-text">
				<input type="email" placeholder="E-mail" required="required" name="email" class="form-text">
				<input type="tel" placeholder="連絡電話" required="required" name="phone" class="form-text">
				<input type="number" maxlength="3" min="10" max="100" placeholder="年齡歲數" required="required" name="age" class="form-text">
				<select name="county" id="county-selector" required="required">
				<option value="" class="option-none">居住縣市</option><option value="台北市" data-index="0">台北市</option><option value="基隆市" data-index="1">基隆市</option><option value="新北市" data-index="2">新北市</option><option value="宜蘭縣" data-index="3">宜蘭縣</option><option value="桃園市" data-index="4">桃園市</option><option value="新竹市" data-index="5">新竹市</option><option value="新竹縣" data-index="6">新竹縣</option><option value="苗栗縣" data-index="7">苗栗縣</option><option value="台中市" data-index="8">台中市</option><option value="彰化縣" data-index="9">彰化縣</option><option value="南投縣" data-index="10">南投縣</option><option value="嘉義市" data-index="11">嘉義市</option><option value="嘉義縣" data-index="12">嘉義縣</option><option value="雲林縣" data-index="13">雲林縣</option><option value="台南市" data-index="14">台南市</option><option value="高雄市" data-index="15">高雄市</option><option value="澎湖縣" data-index="16">澎湖縣</option><option value="金門縣" data-index="17">金門縣</option><option value="屏東縣" data-index="18">屏東縣</option><option value="台東縣" data-index="19">台東縣</option><option value="花蓮縣" data-index="20">花蓮縣</option><option value="連江縣" data-index="21">連江縣</option>
				</select>
				<label>你覺得你是</label>
				<div class="webform-gender">
					<input type="radio" name="gender" value="男" id="male" required="required">
					<label for="male">男</label>
					<input type="radio" name="gender" value="女" id="female">
					<label for="female">女</label>
					<input type="radio" name="gender" value="其他" id="other-gneder">
					<label for="other-gneder">其他</label>
				</div>
				<label>你曾經在無預期的狀況下<br>
				被性伴侶告知懷孕了嗎?</label>
				<div class="pregnant">
					<input type="radio" name="pregnant" value="有" id="pregnant-yes" required="required">
					<label for="pregnant-yes">有</label>
					<input type="radio" name="pregnant" value="無" id="pregnant-no">
					<label for="pregnant-no">無</label>
				</div>
				<input type="checkbox" name="privacy-info" id="privacy-info" class="info-check" data-name="個資蒐集處理">
				<label for="privacy-info">我已閱讀並同意<a href="privacy.pdf" target="_blank" rel="noopener noreferrer">個資蒐集處理</a></label>
				<input type="checkbox" name="event-info" id="event-info" class="info-check" data-name="活動相關資訊">
				<label for="event-info">我已閱讀並了解<a href="event-info.pdf" target="_blank" rel="noopener noreferrer">活動相關資訊</a></label>
			</div>
		</div>
		<div class="black-bg">
			<div class="webform-inner">
				<input type="submit" value="繳 交 看 答 案" id="webform-submit">
				<span class="submit-go"></span>
			</div>
		</div>
	</form>
  </div>

<!-- Javascript -->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/css3-animate-it.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>

</body>
</html>
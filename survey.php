<?php 
session_start();
header("Cache-Control:private");
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
<body class="page-survey">
  <div id="page">
  	<header>
		<div class="logo1"><a href="/"><img src="./img/logo1.png"></a></div>
	</header>
	<div class="quiz-info-wrapper">
		<div class="quiz-circle"></div>
		<div class="quiz-info">
			<div class="align-center survey-tit">
				<img src="./img/survey.png" alt="男性的感受與情緒" width="325">
			</div>
			<p>因您曾經在沒有預期的狀況下，被性伴侶告知她懷孕的狀態，如果您有意願的話，想要多問一下您的經驗，拜託您了！</p>
		</div>
	</div>
	<form class="survey-form" method="post" accept-charset="UTF-8" action="survey-end">
		<div class="survey-inner">

			<div class="form-item">
				<span class="quiz-num">1</span>
				<p>你曾經在非預期的狀態下<br>
				被告知懷孕事實嗎？有的話幾次？</p>
				<input type="number" placeholder="次數" required="required" name="amount" class="form-text">
			</div>

			<div class="form-item">
				<span class="quiz-num">2</span>
				<p>當你被告知時<br>
				你自己的感受是什麼</p>
				<div class="feeling ans">
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="開心" id="feeling1" >
					<label for="feeling1">開心</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="恐懼" id="feeling2">
					<label for="feeling2">恐懼</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="驚訝" id="feeling3">
					<label for="feeling3">驚訝</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="難過" id="feeling4">
					<label for="feeling4">難過</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="厭惡" id="feeling5">
					<label for="feeling5">厭惡</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="生氣" id="feeling6">
					<label for="feeling6">生氣</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="驕傲" id="feeling7">
					<label for="feeling7">驕傲</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="期待" id="feeling8">
					<label for="feeling8">期待</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="羞恥" id="feeling9">
					<label for="feeling9">羞恥</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="尷尬" id="feeling10">
					<label for="feeling10">尷尬</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="沒感覺" id="feeling11">
					<label for="feeling11">沒感覺</label>
                    </div>
					<div class="option">
                    <input type="checkbox" name="pregnant[]" value="其他" id="feeling12">
					<label for="feeling12">其他</label>
                    </div>
				</div>
			</div>

			<div class="form-item">
				<span class="quiz-num">3</span>
				<p>你的性伴侶告知時，你幾歲？</p>
				<input type="number" placeholder="歲數" required="required" name="age" class="form-text">
			</div>

			<div class="form-item">
				<span class="quiz-num">4</span>
				<p>你記得那次對方懷孕的原因嗎?</p>
				<div class="ans">
					<div class="option opt-lg">
                    	<input type="checkbox" name="pregnant-reason[]" value="沒進行避孕措施" id="reason1">
						<label for="reason1">沒進行避孕措施</label>
                    </div>

					<span>錯誤的避孕方法：</span>
					<div class="option">
                    	<input type="checkbox" name="pregnant-reason[]" value="體外射精" id="reason2">
						<label for="reason2">體外射精</label>
                    </div>
					<div class="option">
                    	<input type="checkbox" name="pregnant-reason[]" value="算錯經期" id="reason3">
						<label for="reason3">算錯經期</label>
                    </div>

					<span>失敗的避孕方式：</span>
					<div class="option opt-lg">
                    	<input type="checkbox" name="pregnant-reason[]" value="保險套過期、破掉等原因" id="reason4">
						<label for="reason4">保險套過期、破掉等原因</label>
                    </div>
					<div class="option opt-lg">
                    	<input type="checkbox" name="pregnant-reason[]" value="事前避孕藥太晚吃、忘記定時服藥" id="reason5">
						<label for="reason5">事前避孕藥太晚吃、忘記定時服藥</label>
                    </div>
					<div class="option opt-lg">
                    	<input type="checkbox" name="pregnant-reason[]" value="事後避孕藥太晚吃、藥品過期等" id="reason6">
						<label for="reason6">事後避孕藥太晚吃、藥品過期等</label>
                    </div>
					<div class="option opt-lg">
                    	<input type="checkbox" name="pregnant-reason[]" value="避孕器材損毀" id="reason7">
						<label for="reason7">避孕器材損毀</label>
					<span>(子宮環鬆脫、避孕貼片脫落等)</span>
					<br/>
                    </div>
					<div class="option">
                    	<input type="checkbox" name="pregnant-reason[]" value="對方刻意" id="reason8">
						<label for="reason8">對方刻意</label>
                    </div>
					<div class="option">
                    	<input type="checkbox" name="pregnant-reason[]" value="不知道" id="reason9">
						<label for="reason9">不知道</label>
                    </div>
					<div class="option">
                    	<input type="checkbox" name="pregnant-reason[]" value="其它" id="reason10">
						<label for="reason10">其它</label>
                    </div>
                </div>
            </div>

			<div class="form-item">
				<span class="quiz-num">5</span>
				<p>你被告知時，<br/>對方已經懷孕了多久</p>
				<div class="ans">
					<div class="option">
                    <input type="radio" name="pregnant-time" value="1個月內" id="time1">		
					<label for="time1">1個月內</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-time" value="3-6個月" id="time2">
					<label for="time2">3-6個月</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-time" value="6個月以上" id="time3">
					<label for="time3">6個月以上</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-time" value="生了才說" id="time4">
					<label for="time4">生了才說</label>
                    </div>
					<div class="option">
                    	<input type="radio" name="pregnant-time" value="其它" id="time5">
						<label for="time5">其它</label>
                    </div>
				</div>
			</div>

			<div class="form-item">
				<span class="quiz-num">6</span>
				<p>有與對方討論過生育抉擇<br/>(人工流產/生下來/出養…)嗎?</p>
				<div class="ans">
					<div class="option">
                    <input type="radio" name="pregnant-disc" value="有" id="ch1">
										
					<label for="ch1">有</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-disc" value="沒有" id="ch2">
					<label for="ch2">沒有</label>
                    </div>
				</div>
			</div>

			<div class="form-item">
				<span class="quiz-num">7</span>
				<p>後來如何進行決定?</p>
				<div class="ans">
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="人工流產" id="de1">
					<label for="de1">人工流產</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="自然流產" id="de2">
					<label for="de2">自然流產</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="雙方一起養" id="de3">
					<label for="de3">雙方一起養</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="自己養" id="de4">
					<label for="de4">自己養</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="性伴侶養" id="de5">
					<label for="de5">性伴侶養</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="出養" id="de6">
					<label for="de6">出養</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-decision" value="其它" id="de7">
					<label for="de7">其它</label>
                    </div>
				</div>
			</div>

			<div class="form-item">
				<span class="quiz-num">8</span>
				<p>有尋找家人、朋友等非正式資源求助嗎?</p>
				<div class="ans">
					<div class="option">
                    <input type="radio" name="pregnant-help1" value="有" id="help1-1">
										
					<label for="help1-1">有</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-help1" value="沒有" id="help1-2">
					<label for="help1-2">沒有</label>
                    </div>
				</div>
			</div>

			<div class="form-item">
				<span class="quiz-num">9</span>
				<p>有尋找社工、醫院、孕產婦關懷諮詢專線等正式資源求助嗎?</p>
				<div class="ans">
					<div class="option">
                    <input type="radio" name="pregnant-help2" value="有" id="help2-1">
										
					<label for="help2-1">有</label>
                    </div>
					<div class="option">
                    <input type="radio" name="pregnant-help2" value="沒有" id="help2-2">
					<label for="help2-2">沒有</label>
                    </div>
				</div>
			</div>

	    </div><!-- end of survey-inner -->
		<div class="black-bg">
			<div class="webform-inner survey-action">
			<p>如果您在臺東願意的話<br>
			方便讓我們聯絡您 接受訪談嗎?</p>
			<p class="em">將補助車馬費 2000元</p>
				<input type="submit" class="btn btn-primary survey-submit" name="action" value="願意" />
				<input type="submit" class="btn btn-primary survey-submit" name="action" value="婉拒" />
			</div>
		</div>
		<div class="finish yellow-bg">
			<div class="quiz-info align-center animatedParent">
				<div class="finish-tit animated bounceIn">FINISH</div>
				<p class="animated bounceIn">本次活動到此結束 <br>
				謝謝您的協助</p>
			</div>
		</div>
	</form>
	<?php include('footer.php'); ?>
		
  </div>

<!-- Javascript -->
<script src="js/jquery-3.6.1.min.js"></script>
<script data-main="scripts/main" src="scripts/jquery.validate.min.js"></script>
<script src="js/css3-animate-it.js" type="text/javascript"></script>
<script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
<script src="js/main.js" type="text/javascript"></script>

</body>
</html>
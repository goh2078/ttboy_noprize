<?php 
session_start();
header("Cache-Control:private");

if($_SESSION['result']) {
	$result = $_SESSION['result'];
	$ansO = array('q4','q7','q14','q18','q19','q20');
	$ansX = array('q2','q3','q5','q6','q8','q9','q10','q11','q12','q13','q15','q16','q17');
	$resultAll = array();
	$q1class = '';
	if($result['q1']) {
		$arr1 = $result['q1'];
		$arr2 = array('op1','op2','op4','op5','op7','op9','op10','op11');
		$op1 = array_diff($arr1,$arr2);
		if($arr1 !== $arr2) {
			$q1class = 'q1-wrong';
		} 
	}
	foreach($result as $key => $ans) {
		if (in_array($key, $ansO)) {
			$resultAll[$key] = 'ansO ';
			if($ans == 1) {
				$resultAll[$key] .= 'ans-correct';
			} else {
				$resultAll[$key] .= 'ans-wrong';
			}
		}
		if (in_array($key, $ansX)) {
			$resultAll[$key] = 'ansX ';
			if($ans == 0) {
				$resultAll[$key] .= 'ans-correct';
			} else {
				$resultAll[$key] .= 'ans-wrong';
			}
		}
	}
}

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
<body class="page-knowledge">
  <div id="page">
	<header>
		<div class="logo1"><a href="/"><img src="./img/logo1.png"></a></div>
	</header>
	<div class="quiz-info-wrapper">
		<div class="quiz-circle"></div>
		<div class="quiz-info align-center animatedParent" data-sequence="500">
			<img src="./img/know-title.png" alt="" class="quiz-title animated bounceInLeft" data-id="1">
			<div class="know-img animated bounceInDown" data-id="1"></div>
			<div class="know-img2 animated rotateIn" data-id="2"></div>
			<p>測驗詳細解釋在這裡！<br>
			看看你知道多少</p>
		</div>
	</div>
	<div class="know-inner">
		<div class="know-row">
			<p class="<?php print $q1class; ?>">1. 下列哪些避孕方法是有效(90%以上)的避孕方式？</p>
			<div class="ans q1-ans">
				<div class="option">
					<input type="checkbox" id="op1" name="q1[]" value="op1">
					<label for="op1" class="q1-select-<?php print in_array('op1', $result['q1']); ?>">男用保險套</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op2" name="q1[]" value="op2">
					<label for="op2" class="q1-select-<?php print in_array('op2', $result['q1']); ?>">女用保險套</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op3" name="q1[]" value="op3">
					<label for="op3" class="unselected q1-wrong-<?php print in_array('op3', $result['q1']); ?>">基礎體溫法</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op4" name="q1[]" value="op4">
					<label for="op4" class="q1-select-<?php print in_array('op4', $result['q1']); ?>">事前避孕藥</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op5" name="q1[]" value="op5">
					<label for="op5" class="q1-select-<?php print in_array('op5', $result['q1']); ?>">事後避孕藥</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op6" name="q1[]" value="op6">
					<label for="op6" class="unselected q1-wrong-<?php print in_array('op6', $result['q1']); ?>">性交中斷法</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op7" name="q1[]" value="op7">
					<label for="op7" class="q1-select-<?php print in_array('op7', $result['q1']); ?>">結紮</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op8" name="q1[]" value="op8">
					<label for="op8" class="unselected q1-wrong-<?php print in_array('op8', $result['q1']); ?>">月經週期法</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op9" name="q1[]" value="op9">
					<label for="op9" class="q1-select-<?php print in_array('op9', $result['q1']); ?>">子宮避孕器</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op10" name="q1[]" value="op10">
					<label for="op10" class="q1-select-<?php print in_array('op10', $result['q1']); ?>">避孕貼片</label>
				</div>
				<div class="option">
					<input type="checkbox" id="op11" name="q1[]" value="op11">
					<label for="op11" class="q1-select-<?php print in_array('op11', $result['q1']); ?>">子宮環</label>
				</div>
			</div>
			<p>A：大多數的人都覺得避孕是男性的議題，因為男用保險套方便攜帶又好買，但不知道大家有沒有發現，
				除了男用保險套與結紮之外，大多數90%以上的避孕方法都是給女性使用，
				<strong>其實避孕的責任不分性別，
				只要有異性性行為，都應該關注這個議題。</strong></p>
		</div>
		
		<div class="know-row">
			<div class="ans-icon <?php print $resultAll['q2'];?>"></div>
			<p>2. 性交中斷法(體外射精)是一種有效的避孕方式</p>
			<p>A：體外射精、喝可樂殺精、沒射精就不會懷孕、女方在上位、做完倒立這些都是常見的懷孕迷思，
				在性行為的過程中，<strong>男性在射精前都會有少量的精液釋出，而這都是可能會導致懷孕的原因。</strong></p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q3'];?>"></div>
		<p>3. 懷孕中的女性絕對不可以有性行為</p>

		<p>A：在一般情況下，若孕婦沒有<em>身體不適</em>且也<em>願意</em>、有良好的心理建設、並<em>注意安全</em>
		，是可以進行性行為的，不會影響孕婦，也不會影響胎兒或日後發育。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q4'];?>"></div>
		<p>4. 由於身體器官的關係，女性得到愛滋病的比例是男性的兩倍</p>

		<p>A：在異性性行為時，女性的生殖黏膜表面大量暴露於精液之中，
			且精液中所含病毒量遠多於陰道分泌物所含之病毒量，因此
			<strong>女性被感染的機率幾乎是男性的</strong><em>2</em><strong>倍</strong>
			。愛滋病是一種性病，並不是只有(男)同志會得到，你我都需要關心這個議題。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q5'];?>"></div>
			<p>5. 處女膜破掉就會痛、就會流血</p>
			<p>A：處女膜並不是膜，陰道冠(瓣)並不是薄膜，而是女性陰道口的一種彈性組織，
				每個女性的長相都不一樣，有人會痛，但也有人不會痛。根據瑞典性教育協會統計，
				<strong>有</strong><em>50%</em><strong>左右的女生第一次性經驗沒有出血</strong>！！</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q6'];?>"></div>
		<p>6. 有處女膜的人就是處女</p>

		<p>A：<strong>發生性行為時，陰道冠不一定會破掉，因為它是有彈性的組織</strong>，
		加上每個人的形狀和厚度不同，比較薄的會因為體操、劈腿或激烈運動而破裂；而較厚的人，
		即使發生多次性行為也不一定會破掉。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q7'];?>"></div>
		<p>7. 自慰有助於自己的身心健康</p>

		<p>A：自慰會觸發大腦快感，並使大腦分泌多種激素，包括多巴胺、催產素、血清素、內啡呔、
			內源性大麻素、腎上腺素等等，而這些基素都能夠有助於個人的身心健康。
			<strong>只要不影響到生活作息，自慰是能夠幫助自己的身心健康！！</strong>
		</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q8'];?>"></div>
		<p>8.性經驗越多，代表性知識越豐富</p>

		<p>A：我們不會覺得好的學者就一定會做事，
			很會做事的人不一定很有知識，所以性經驗越多，當然不代表它的性知識越豐富，這題會有人答錯嗎(欸。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q9'];?>"></div>
		<p>9. 皰疹、梅毒屬於細菌引起的性病，不容易痊癒</p>

		<p>A：<strong>皰疹屬於病毒引起的性病，而梅毒是細菌引起的</strong>，
		病毒與細菌都是導致人體生病的原因，但是傳染途徑不同，病毒大多透過黏膜組織進入、
		而細菌屬於接觸入侵，不管是哪種途徑，保險套都能有性防治性病入侵。使用保險套不僅能避孕，也能防止性病。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q10'];?>"></div>
		<p>10. 一般而言，男性體內只有男性荷爾蒙，女性體內只有女性荷爾蒙</p>

		<p>A：<strong>每個人身上都有男性賀爾蒙、也有女性荷爾蒙，只是因為生殖器官的不同而導致賀爾蒙的多寡。</strong>
		因此男性也可能沒有喉結、聲音比較高；女性也會有鬍子、腿毛等象徵。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q11'];?>"></div>
		<p>11. 情侶之間一定要發生性行為</p>

		<p>A：這個世界有各式各樣的情侶，沒有發生性行為的情侶一點也不怪，像是柏拉圖或飯島愛都提倡過柏拉圖式的戀愛方式，
			在現在則有<em>無性戀</em>這樣的自我認同，都是這個社會存在的族群喔。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q12'];?>"></div>
		<p>12. 跟伴侶發生性關係會讓對方更愛我</p>

		<p>A：不一定，勵馨服務非預期懷孕的少女過程中，發現有許多女孩有著這樣的迷思。
			<strong>伴侶間要如何維繫感情其實有很多的方式，並不是只有靠性愛來維持喔。</strong></p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q13'];?>"></div>
		<p>13. 保險套可以搭配所有種類的潤滑液一起使用</p>

		<p>A：<strong>大多數的保險套材質為乳膠或</strong><strong>PU</strong>
		<strong>材質，跟氣球一樣，只要遇到油性潤滑液就或破掉喔</strong>，建議還是以水性或矽性潤滑液為主。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q14'];?>"></div>
			<p>14. 女性結紮的價格是男性的兩倍</p>

			<p>A：因為生理結構的關係，<strong>女性的結紮價格約為男性的兩倍喔</strong>。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q15'];?>"></div>
		<p>15. 事前避孕藥只要十分鐘前吃就可以避孕</p>

		<p>A：大錯特錯，<strong>事前避孕藥分為</strong><strong>21</strong><strong>錠</strong><strong>(</strong><strong>天</strong><strong>)</strong><strong>和</strong><strong>28</strong><strong>錠</strong><strong>(</strong><strong>天</strong><strong>)</strong><strong>兩種</strong>，但不管是哪種事前避孕藥，都需要穩定的服藥才能發揮效果。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q16'];?>"></div>
			<p>16. 餵哺母乳期間，因為賀爾蒙的原因都不會懷孕</p>

			<p>A：在餵哺母乳期間，女性的身體確實會因為賀爾蒙而改變，但是並<strong>不會因此而改變身體結構，因此女性還是有可能會懷孕的。</strong></p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q17'];?>"></div>
			<p>17. 約會強暴中的雙方都需要負上責任</p>

			<p>A：<strong>約會強暴是一種性侵</strong>，在道德層面上我們常會對受害者有性侵迷思，是不是<em>衣服穿太少、太晚回家、喝醉被撿屍</em>…等，但其實這些都是對性侵的錯誤迷思；在法律層面上，以性侵害防治法而言並不會對被害者有著任何法律責任，是行為人有法律責任。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q18'];?>"></div>
			<p>18. 在特定情形下，罵別人娘娘腔屬於一種性騷擾</p>

			<p>A：我國性騷擾防治法規定，性騷擾是建立在<em>性</em>或<em>性別</em>上面，針對特定對象進行的騷擾行為，因此在對方不能接受、
				不喜歡的狀態下罵人娘娘腔當然屬於一種性騷擾行為。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q19'];?>"></div>
			<p>19. 我知道同性戀、扮裝、BDSM這三個字的意思</p>

			<p>A：同性戀是一種<strong>性傾向</strong>，指的是喜歡的對象與自己性別認同一致的人；扮裝指的是
			<strong>性別特質</strong>的表現，與性傾向、性別認同沒有關係；BDSM是一種性實踐，台灣翻譯成性愉虐，
			是用來描述一些與性虐戀相關的人類<strong>性行為</strong>模式。</p>
		</div>

		<div class="know-row">
		<div class="ans-icon <?php print $resultAll['q20'];?>"></div>
			<p>20. 我知道PREP、HPV、HIV這三個字的意思</p>

			<p>A：PREP全名為為<strong>暴露愛滋病毒前預防性投藥</strong>，
			是防治性病(愛滋病)的一種方法；HPV全名為<strong>人類乳突病毒</strong>，是一種會導致癌化的DNA病毒，
			像是子宮頸癌、男女外生殖器癌等都是因HPV病毒所引起的癌症；HIV全名為<strong>人類免疫缺陷病毒</strong>，
			雖然在台灣很多人稱 HIV 病毒為「愛滋病毒」，但感染 HIV 的人並不一定會得到愛滋病，
			不過愛滋病患者身上必定帶有 HIV 病毒。</p>
		</div>
	</div>
		
	<div class="finish yellow-bg">
		<div class="quiz-info align-center animatedParent">
			<div class="finish-tit animated bounceIn">FINISH</div>
			<p class="animated bounceIn">本次活動到此結束 <br>
			謝謝您的協助</p>

		</div>
	</div>
	<?php include('footer.php'); ?>
  </div>

<!-- Javascript -->
<script src="js/jquery-3.6.1.min.js"></script>
<script src="js/css3-animate-it.js" type="text/javascript"></script>
</body>
</html>
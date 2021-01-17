<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" 
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
    crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src='../js/product.js'></script>
    <link rel="stylesheet" href="../css/product.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
    <script src='../js/go_cart.js'></script>  
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
</head>
<body>
	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

    <!-- main -->
    <div class="main" id="main">
        <img class="phone-img" src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/mbp-spacegray-select-202011?wid=452&hei=420&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1603406905000" alt="MacBook Pro" width="600px" style="
    margin-top: 170px; border-radius: 23px">
        <div class="summary">
           <form method="get" name="form">
	            <div class="테두리">
	               <h1>MacBook Pro</h1><input type= hidden name="product_name" value= "MacBook Pro"><br>
	               상품코드 : MacBookPro<input type=hidden name="product_serial" value= "MacBookPro"><br>
	               판매가 : 2,340,000원<br>
	               색상 : 스페이스 그레이<input type=hidden name="product_color" value= "스페이스 그레이"><br>
	               메모리 : 512 GB<br>
	            </div> 
                <div class="amount">
                    수량  <input type=hidden name="sell_price" value="2340000">
                    <input type="button" value=" - " onclick="del();">
                    <input type="text" style = "text-align:center;" name="amount" value="1" size="3" onchange="change();">
                    <input type="button" value=" + " onclick="add();"><br/>
                    금액  <input type="text" style = "text-align:center;" name="sum" size="11" readonly>원
                </div>
            <br/>

	               <div class="btns">
	               		<input type="button" value="장바구니" class="btn1"/>
	               		<input type="button" value="바로구매" class="btn2" onclick="funcPO"/>
	               </div>
            </form>
        </div>
    </div>

    <!-- 메뉴바 -->
    <div class = "menubar2">
        <div class = "여백3"></div>
        <div class="item-title">
            <a href="#main"><h2>MacBook Pro</h2></a>
            <div class="item-title2">
                <ul>
                    <a href="#item-benefits"><li>특장점</li></a>
                    <a href="#review"><li>상품평</li></a>
                    <a href="#note"><li>유의사항</li></a>
                    <button>바로구매</button>
                </ul>
            </div>
        </div>
    </div>

        <!-- 특장점 -->
        <div class="item-benefits" id="item-benefits">
            <div class="item-video">
                <iframe width="1000" height="540" src="https://www.youtube.com/embed/PSn6uJgDmDI?autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
            <br/><br/><br/><br/><br/>
            <img class="ipone" width="1000px" src="https://thumbnail8.coupangcdn.com/thumbnails/remote/q89/image/retail/images/1329887260580812-66ee80de-adb0-4994-9fd0-a6f2f446bf1d.jpg">
        
        <!-- 상품평 -->
        <div class="review" id="review">
            <div class="여백1"></div>
            <h2>상품평</h2>
            <div class="review-avg">
                <ul>
                    <li>상품</li>
                    <li>배송</li>
                    <li>프로모션</li>
                    <li>기타</li>
                </ul>
            </div>
            <span class="total-review-menu">전체 상품평</span>
            <button class="write-review-btn"><i class="fas fa-pen"></i> 상품평 작성</button>
            <div class="total-review">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut doloremque porro enim, possimus sit eaque harum rem maxime reiciendis molestiae saepe voluptatem unde, aperiam laboriosam similique! Dolorum facilis animi exercitationem!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus autem nisi natus ex obcaecati est expedita nam? Distinctio accusantium quis, minima tenetur non, dolore consectetur est voluptatem rem eum quo.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit, molestiae! Porro exercitationem fugiat nobis cumque ut molestiae? Veritatis harum obcaecati temporibus recusandae quod tenetur ipsa consequuntur quisquam ducimus, sint quibusdam!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque incidunt iure expedita nobis autem veritatis vitae, cupiditate aliquam, quisquam saepe neque, aspernatur dolorem beatae ipsum alias eaque nam magnam distinctio.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt dicta dolores iste cupiditate modi officia saepe cumque necessitatibus, suscipit, doloremque quam illo rem numquam delectus. Aliquid officia amet voluptatum reiciendis!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus magni earum nisi accusantium deserunt architecto perferendis eos necessitatibus cum nesciunt et, veniam id natus dolorem explicabo omnis cupiditate nulla? Est!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque iure quibusdam eum voluptatibus eveniet earum quasi soluta praesentium at vitae natus itaque neque possimus aut modi, est quaerat! Dolor, est.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat saepe ipsam impedit numquam. Dolorum laboriosam, quos quae consectetur modi odio explicabo aspernatur ab aperiam voluptatibus, magni doloribus cumque saepe iure?
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis, itaque odio? Vitae eveniet cumque quod magnam, ea reiciendis repellendus, dolor eaque quae, suscipit repellat dolorem impedit! Quo ab illo atque?
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. A mollitia, numquam iusto blanditiis temporibus placeat quod aperiam voluptatum nulla dolorum fugit rem optio saepe fugiat aliquid cum doloribus facere repellendus!
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet deserunt voluptatibus odit! Impedit error aliquid fugit nobis minima eligendi natus laboriosam aut in quis laborum quam incidunt id, maiores similique.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Non aspernatur assumenda quis delectus doloribus. Reiciendis dolorum enim cum fugit iure laudantium numquam quidem esse, neque vitae est beatae vero atque.
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt maxime molestias consequuntur temporibus ut molestiae voluptatum explicabo? Velit error ratione tempore. Fuga qui maiores porro adipisci nostrum cum, voluptates nulla!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ratione tenetur necessitatibus asperiores dolore nobis, impedit saepe incidunt, esse aut libero temporibus beatae quia repellendus veniam quod molestiae aliquid minima qui.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt a eligendi ipsa accusantium! Laudantium aliquam omnis ipsum repellendus perferendis nisi saepe? Error incidunt facere cum quam saepe cupiditate pariatur similique?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias unde fugiat in ipsam illo recusandae omnis ad cumque sed dicta asperiores mollitia sint nemo, reiciendis officia consequatur eos! Possimus, quae.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id dolores aspernatur sit, vel nihil quos, voluptatibus possimus, nam neque veritatis ex sunt sapiente eaque? Voluptates voluptatem hic dolorem numquam laborum!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, est? Vel tempora sint libero non commodi atque expedita aliquam amet vitae sapiente esse accusamus quae recusandae perspiciatis, totam molestiae laboriosam!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut doloremque porro enim, possimus sit eaque harum rem maxime reiciendis molestiae saepe voluptatem unde, aperiam laboriosam similique! Dolorum facilis animi exercitationem!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus autem nisi natus ex obcaecati est expedita nam? Distinctio accusantium quis, minima tenetur non, dolore consectetur est voluptatem rem eum quo.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugit, molestiae! Porro exercitationem fugiat nobis cumque ut molestiae? Veritatis harum obcaecati temporibus recusandae quod tenetur ipsa consequuntur quisquam ducimus, sint quibusdam!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Atque incidunt iure expedita nobis autem veritatis vitae, cupiditate aliquam, quisquam saepe neque, aspernatur dolorem beatae ipsum alias eaque nam magnam distinctio.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt dicta dolores iste cupiditate modi officia saepe cumque necessitatibus, suscipit, doloremque quam illo rem numquam delectus. Aliquid officia amet voluptatum reiciendis!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus magni earum nisi accusantium deserunt architecto perferendis eos necessitatibus cum nesciunt et, veniam id natus dolorem explicabo omnis cupiditate nulla? Est!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cumque iure quibusdam eum voluptatibus eveniet earum quasi soluta praesentium at vitae natus itaque neque possimus aut modi, est quaerat! Dolor, est.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat saepe ipsam impedit numquam. Dolorum laboriosam, quos quae consectetur modi odio explicabo aspernatur ab aperiam voluptatibus, magni doloribus cumque saepe iure?
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis, itaque odio? Vitae eveniet cumque quod magnam, ea reiciendis repellendus, dolor eaque quae, suscipit repellat dolorem impedit! Quo ab illo atque?
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. A mollitia, numquam iusto blanditiis temporibus placeat quod aperiam voluptatum nulla dolorum fugit rem optio saepe fugiat aliquid cum doloribus facere repellendus!
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eveniet deserunt voluptatibus odit! Impedit error aliquid fugit nobis minima eligendi natus laboriosam aut in quis laborum quam incidunt id, maiores similique.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Non aspernatur assumenda quis delectus doloribus. Reiciendis dolorum enim cum fugit iure laudantium numquam quidem esse, neque vitae est beatae vero atque.
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt maxime molestias consequuntur temporibus ut molestiae voluptatum explicabo? Velit error ratione tempore. Fuga qui maiores porro adipisci nostrum cum, voluptates nulla!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ratione tenetur necessitatibus asperiores dolore nobis, impedit saepe incidunt, esse aut libero temporibus beatae quia repellendus veniam quod molestiae aliquid minima qui.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt a eligendi ipsa accusantium! Laudantium aliquam omnis ipsum repellendus perferendis nisi saepe? Error incidunt facere cum quam saepe cupiditate pariatur similique?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias unde fugiat in ipsam illo recusandae omnis ad cumque sed dicta asperiores mollitia sint nemo, reiciendis officia consequatur eos! Possimus, quae.
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id dolores aspernatur sit, vel nihil quos, voluptatibus possimus, nam neque veritatis ex sunt sapiente eaque? Voluptates voluptatem hic dolorem numquam laborum!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, est? Vel tempora sint libero non commodi atque expedita aliquam amet vitae sapiente esse accusamus quae recusandae perspiciatis, totam molestiae laboriosam!
                </p>
            </div>
        </div>


        <!-- 유의사항 -->
        <div id="note"></div>
        <div class="여백2"></div>
        <div class= "note">
            <h2>구매시 유의사항</h2>
            <ul>
                <div class="note-btn">
                    <input type="button" class="note-btn1" value="배송정책" />
                    <input type="button" class="note-btn2" value="교환/반품/AS 안내"/>
                    <input type="button" class="note-btn3" value="교환/반품 불가 안내"/>
                </div>    
                    <div class='배송정책'>
                        <p class="bold">배송지역</p>
                            <p>도서 산간지역은 배송이 제한될 수 있습니다.</p><br>
                        <p class="bold">배송비</p>
                        <p>전 상품 무료배송<br>
                            (단, 제주도 등 일부 도서/산간 지역은 별도 배송비가 발생할 수 있으며, 설치상품의 경우 설치 환경 등에 따라 추가 설치비가 발생할 수 있습니다.)</p><br>
                        <p class="bold">배송기간</p>
                        <p>주문결제 후 평균 3일 이내 배송 (일, 공휴일 제외) 단, 도서/산간지역은 배송일이 추가적으로 소요될 수 있으며, 상품 보유현황에 따라 배송일이 지연될 수 있습니다.<br>
                            아래 상품군은 지정하신 희망배송일에 상품을 배송 해 드리나 상품 보유현황 및 설치기사 상황에 따라 배송이 다소 지연될 수 있습니다.<br>
                            - 희망배송일 지정 가능 상품군 : 전자레인지, 청소기, 자연가습청정기<br>
                            - 희망배송일 지정 및 설치 상품군 : PC/모니터, 프린터, 오븐, 에어케어, 에어트랙, 무선도킹오디오,블루레이/DVD플레이어<br>
                            또한 인수고객과의 통화불가, 수령지 주소가 불명확할 경우 배송이 지연될 수 있습니다.</p><br>
                        <p class="bold">배송방법</p>
                        <p>배송 당일 오전에 SMS로 배송예정을 알리는 문자를 발송해드리며, 고객 댁에 도착하기 전 배달설치 기사가 연락 드립니다. 스팸 처리 등으로 인해 문자를<br>
                            받지 못하는 경우가 있으니 주문내역에서 배송 상황을 확인해주시기 바랍니다. 파인애플 배송 상품 중에는 고가의 프리미엄 상품들이 포함되어 있어 고객님께<br>
                            직접 전달을 원칙으로 하고 있습니다. 안전한 배송을 위해 고객님이 주문 시 지정한 배송장소 외 제3자 전달이나 임의장소로의 배송은 제공하지 않습니다.<br>
                            설치상품을 주문 시에는 설치환경을 꼭 체크하여 주십시오.<br>
                            - TV: 벽걸이 설치 시 설치 불가한 벽면 재질은 아닌지 확인하여 주십시오.<br>
                            - 냉장고/세탁기 : 설치공간 사이즈, 출입문 사이즈, 제품 사이즈를 주문 전에 확인하여 주십시오.<br>
                            - TV 138 cm 이상, 양문형 냉장고, 비스포크 냉장고, 스탠드형 김치냉장고, 세탁기 7 kg 이상, 건조기, 에어드레서는 반드시 설치가 필요한 품목으로, 설치 전문가가 직접 설치, 시운전 후 이상 여부를 점검하고 있습니다.<br>
                            미설치 단순 수령이 불가한 제품이오니, 고객님의 사정으로 미설치 시 배송 보류 또는 반품될 수 있습니다.</p><br>
                        <p class="bold">배송추적</p>
                            <p>파인애플 상단 '마이페이지 -> 주문/배송조회 -> 주문정보'에서 배송상태 및 배달설치 기사 전화번호 조회가 가능합니다.</p><br>
                    </div>

                    <div class='교환반품기간'>
                        <p class="bold">교환/반품 기간</p>
                            <p>단순변심에 의한 상품의 교환ㆍ반품은 실제 상품 등을 수령하신 날부터 7일 이내에 가능합니다. 단, 상품안내 페이지에 표시된 교환/반품 기간이 7일보다 긴 경우에는 그 기간을 따릅니다.<br>
                            수령한 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 오배송 등 계약내용과 다르게 이행된 경우에는 수령하신 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 가능합니다.<br>
                            제품을 교환/반품 하기 전 고객센터로 미리 연락을 주셔야 합니다.<br>
                            제품 자체에 하자가 있는 경우 파인애플 서비스센터로 접수하시면 A/S 기사의 판정을 거친 후 소비자분쟁해결기준에 의거하여 파인애플 서비스 센터를 통해 교환/환불/수리해드립니다.<br>
                            미성년자인 고객이 구매계약을 체결한 후, 법정대리인이 그 계약에 동의하지 아니하면 본인 또는 법정대리인이 취소할 수 있습니다.</p><br>
                            <p class="bold">교환/반품 배송비</p>
                            <p>구매하신 상품의 교환ㆍ반품을 하시는 경우에는 상품 등의 반환에 필요한 비용(2,500원)을 고객님이 부담하셔야 합니다. 단, 고객님이 받으신 상품 등의 내용이 표시ㆍ광고 내용과 다르거나 제품하자ㆍ오배송 등 계약내용과 다르게 이행되어 교환/반품을 하시는 경우에는, 교환ㆍ반품 배송비는 무료입니다.</p><br>
                            <p class="bold">환불지연 배상금 지급안내</p>
                            <p>대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리합니다.</p><br>
                            <p class="bold">A/S 안내</p>
                            <p>파인애플에서 판매되는 상품에 대해서는 가까운 파인애플 서비스센터를 방문하시면 A/S가 가능합니다. (상품A/S 문의전화: 1588-3366)<br>
                            일부제품의 경우 파인애플 서비스센터에서 A/S가 불가능하므로, [스펙] -> [상품기본정보] 의 [A/S 책임자와 전화번호] 정보를 확인하시기 바랍니다.</p><br>
                    </div>

                    <div class="교환반품불가사유">      
                        <p class="bold">교환/반품 불가사유</p>
                            <p>- 고객님의 책임 있는 사유로 상품이 멸실 또는 훼손된 경우<br>
                            (다만, 단순히 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)<br>
                            - 고객님의 사용으로 상품가치가 현저히 감소된 경우<br>
                            - 패키지 상품의 경우 구성상품 일부의 개봉/설치/사용으로 상품가치가 현저히 감소된 경우<br>
                            * 특히, 잉크/토너/필터의 경우 상품박스 훼손 및 내부 비닐포장 개봉시 반품이 불가합니다. 상품 주문전 호환 가능상품을 반드시 확인하시고 주문해주시기 바랍니다.<br>
                            * 무약정폰의 경우 반품은 상품을 수령하신 날부터 7일 이내, 통신사 개통 이전에만 가능합니다.<br>
                            - 시간이 경과되어 재판매가 곤란할 정도로 상품가치가 상실된 경우<br>
                            - 복제가 가능한 상품의 경우 그 원본인 상품의 포장이 훼손된 경우<br>
                            - 설치완료 상품에 하자가 없는 경우<br>
                            - 상품 등의 내용이 표시ㆍ광고 내용 및 계약내용과 같고, 별도의 하자가 없음에도 단순변심으로 인한 교환을 요구하는 경우<br>
                            - 기타, '전자상거래 등에서의 소비자보호에 관한 법률' 등 관계법령이 정하는 교환/반품 제한사유에 해당되는 경우</p>
                    </div>          
            </ul>
        </div>
        
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
<script>

</script>
</body>
</html>
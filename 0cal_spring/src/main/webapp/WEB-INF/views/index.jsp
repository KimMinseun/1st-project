<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- /myapp 프로젝트 경로 리턴 -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<!-- Script -->
<script type="text/javascript"
	src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="./resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript" src="./resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="./resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="./resources/JavaScript/advertisement.js" defer></script>
<script type="module" defer
	src="./resources/JavaScript/jquery-1.12.4.js"></script>
<!-- 로그인 상태 체크 ajax 호출하기 위해 header.jsp import 하는 파일에서 선언 필요 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div class="slide-section">
		<div class="slide-wrapper">
			<div class="slide-item">
				<a href="#"
					style="background-image: url('./resources/img/img1.jpg')"></a>
			</div>
			<div class="slide-item">
				<a href="#"
					style="background-image: url('./resources/img/img2.jpg')"></a>
			</div>
			<div class="slide-item">
				<a href="#"
					style="background-image: url('./resources/img/img3.jpg')"></a>
			</div>

			<!-- <div class="slide-item"><a href="#" style="background-image: url('./img/slide14.webp');"></a></div> -->
		</div>
		<main role="main">
			<br> <br>

			<!-- 추천 배너 -->
			<div class="banner-container">

				<a href="${pageContext.request.contextPath}/shopping/chuchun.do">
					<img
					src="${pageContext.request.contextPath}/resources/img/chuchun_banner.jpg"
					alt="banner" style="max-width: 1050px;" />
				</a>

				<section class="recommend-items_cate">
					<h2>나에게 꼭 맞는 상품 추천</h2>
					<div class="recommend-slide">
						<div class="recommend-slide-items">
							<c:forEach items="${curatingList}" var="dto">
								<div class="recommend-slide-item">
									<div class="item-img-container">
										<span style="display: none;">${dto.pr_key}</span>
										<c:url var="path" value="/shopping/goods.do">
											<c:param name="pr_key" value="${dto.pr_key}" />
										</c:url>
										<a href="${path}"> <img class="item-img"
											src="${dto.pr_thumbnail}" alt="추천 상품" />
										</a>
									</div>

									<a href="${path}">
										<h3 class="item-name">${dto.pr_name}</h3>
									</a> <a href="${path}">
										<p class="current-price">
											<span class="discount-rate"><fmt:formatNumber
													type="percent" value="${dto.pr_dcper}" /></span>
											<fmt:formatNumber type="number" value="${dto.pr_dcprice}" />
											원
										</p>
									</a> <a href="${path}">
										<p class="regular-price">
											<fmt:formatNumber type="number" value="${dto.pr_price}" />
											원
										</p>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>

				<section class="recommend-items_cate">
					<h2>드라마 정주행하며 즐기는 디저트</h2>
					<div class="recommend-slide">
						<div class="recommend-slide-items">
							<c:forEach items="${dramaList}" var="dto">
								<div class="recommend-slide-item">
									<div class="item-img-container">
										<span style="display: none;">${dto.pr_key}</span>
										<c:url var="path" value="/shopping/goods.do">
											<c:param name="pr_key" value="${dto.pr_key}" />
										</c:url>
										<a href="${path}"> <img class="item-img"
											src="${dto.pr_thumbnail}" alt="추천 상품" />
										</a>
									</div>

									<a href="${path}">
										<h3 class="item-name">${dto.pr_name}</h3>
									</a> <a href="${path}">
										<p class="current-price">
											<span class="discount-rate"><fmt:formatNumber
													type="percent" value="${dto.pr_dcper}" /></span>
											<fmt:formatNumber type="number" value="${dto.pr_dcprice}" />
											원
										</p>
									</a> <a href="${path}">
										<p class="regular-price">
											<fmt:formatNumber type="number" value="${dto.pr_price}" />
											원
										</p>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>

				<section class="recommend-items_cate">
					<h2>나의 건강! 올가닉 디저트</h2>
					<div class="recommend-slide">
						<div class="recommend-slide-items">

							<c:forEach items="${organicList}" var="dto">

								<div class="recommend-slide-item">
									<div class="item-img-container">
										<span style="display: none;">{$dto.pr_key}</span>
										<c:url var="path" value="/shopping/goods.do">
											<c:param name="pr_key" value="${dto.pr_key}" />
										</c:url>
										<a href="${path}"> <img class="item-img"
											src="${dto.pr_thumbnail}" alt="추천 상품" />
										</a>
									</div>

									<a href="${path}">
										<h3 class="item-name">${dto.pr_name}</h3>
									</a> <a href="${path}">
										<p class="current-price">
											<span class="discount-rate"><fmt:formatNumber
													type="percent" value="${dto.pr_dcper}" /></span>
											<fmt:formatNumber type="number" value="${dto.pr_dcprice}" />
											원
										</p>
									</a> <a href="${path}">
										<p class="regular-price">
											<fmt:formatNumber type="number" value="${dto.pr_price}" />
											원
										</p>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>

				<!-- 서브배너 -->
				<section id="advertise">
					<div class="ad-img"></div>
				</section>

				<section class="main-items_cate">
					<h2>놓치면 후회 할 가격</h2>
					<div class="leftBtn items"></div>
					<div class="rightBtn items"></div>
					<div class="main-slide">
						<c:if test="${not empty saleL}">
							<c:forEach var="i" begin="0" end="${fn:length(saleL)-1}" step="4">
								<ul class="main-slide-items <c:if test="${i>0}">hidden</c:if>">
									<c:forEach var="j" begin="${i}"
										end="${(fn:length(saleL)-i)>=4?i+3:fn:length(saleL)-1}"
										step="1">
										<li class="main-slide-item">
											<div class="item-img-container">
												<span style="display: none;">${saleL[j].pr_key}</span>
												<c:url var="path" value="/shopping/goods.do">
													<c:param name="pr_key" value="${saleL[j].pr_key}" />
												</c:url>
												<a href="${path}"> <img class="item-img"
													src="${saleL[j].pr_thumbnail}" alt="추천 상품" />
												</a>

											</div> <a href="${path}">
												<h3 class="item-name">${saleL[j].pr_name}</h3>
										</a> <a href="${path}">
												<p class="current-price">
													<span class="discount-rate"><fmt:formatNumber
															value="${saleL[j].pr_dcper}" type="percent" /></span>
													<fmt:formatNumber value="${saleL[j].pr_dcprice}"
														type="number" />
													원
												</p>
										</a> <a href="${path}">
												<p class="regular-price">
													<fmt:formatNumber value="${saleL[j].pr_price}"
														type="number" />
													원
												</p>
										</a>
										</li>
									</c:forEach>
								</ul>
							</c:forEach>
						</c:if>
					</div>
				</section>
		</main>
</body>
</html>

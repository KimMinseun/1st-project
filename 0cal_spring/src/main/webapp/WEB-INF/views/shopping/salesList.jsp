<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	src="../resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

	<main role="main">
		<section id="advertise_cate">
			<div class="ad-img"></div>
		</section>

		<section class="recommend-items_cate">
			<div class="recommend-slide">
				<div class="recommend-slide-items">
					<c:forEach items="${aList}" var="dto">

						<div class="recommend-slide-item">
							<div class="item-img-container">
								<span style="display: none;">{$dto.pr_key}</span>
								<c:url var="path" value="goods.do">
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

			<div class="paging_group">

				<a class="paging_atag" href="salesList.do?currentPage=1"> <img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
					alt="처음 페이지로 이동하기 아이콘" />
				</a>
				<c:if test="${pv.currentPage>1}">
					<a class="paging_atag"
						href="salesList.do?currentPage=${pv.startPage-pv.blockPage}">
						<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
						alt="이전 페이지로 이동하기 아이콘" />
					</a>
				</c:if>
				<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
					<c:choose>
						<c:when test="${i==pv.currentPage}">
							<a class="paging_atag" style="color: orange;"
								href="salesList.do?currentPage=${i}">${i}</a>
						</c:when>
						<c:otherwise>
							<a class="paging_atag" href="salesList.do?currentPage=${i}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pv.endPage < pv.totalPage}">
					<a class="paging_atag"
						href="salesList.do?currentPage=${pv.startPage + pv.blockPage}">
						<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
						alt="다음 페이지로 이동하기 아이콘" />
					</a>
				</c:if>
				<a class="paging_atag"
					href="salesList.do?currentPage=${pv.totalPage}"> <img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII="
					alt="마지막 페이지로 이동하기 아이콘" />
				</a>
			</div>
		</section>
	</main>

</body>
</html>

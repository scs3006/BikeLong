<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="reply" items="${ replyList }">
	<div class="comment">
		<div class="comment-author">
			<img class="avatar"
				src="/bikelong/resources/assets/images/avatar/1.jpg" alt="">
		</div>
		<div class="comment-body">
			<div class="comment-meta">
				<div class="comment-meta-author">${reply.id}</div>
				<div class="comment-meta-date">${reply.date}</div>
			</div>
			<div class="comment-content">
				<p>${reply.content}</p>
			</div>
			<c:if test="${loginuser.id eq reply.id && loginuser ne null}">
				<a class="btn deleteReply" data-replyNo="${reply.replyNo}" href="#">삭제</a>
			</c:if>
		</div>
	</div>
</c:forEach>
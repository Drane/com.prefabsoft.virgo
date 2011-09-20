<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="snaps" uri="http://www.eclipse.org/virgo/snaps" %>
<html>
<head>
	<title>Snap Menu Bar Sample</title>
	<link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>" />

	<link rel="stylesheet" href="<c:url value="/styles/main.css"   />" type="text/css" />
	<link rel="stylesheet" href="<c:url value="/styles/local.css"  />" type="text/css" />
	<link rel="stylesheet" href="<c:url value="/styles/print.css"  />" type="text/css" media="print" />
</head>

<body class="main">

<div id="page">
	<div id="header">
		<div id="name-and-company">
			<div id='site-name'>
				<a href="<c:url value="/" />" title="Snap Menu Bar Sample" rel="home">Snap Menu Bar Sample</a>
			</div>
			<div id='company-name'>
				<a href="http://www.springsource.com" title="SpringSource" target="_blank">SpringSource</a>
			</div>         
		</div>
	</div>

	<div id="primary-navigation">
		<div id="primary-left">
			<ul>
				<li><a href="<c:url value="/"/>">Home</a></li>
				<snaps:snaps var="snaps">
					<c:forEach var="snap" items="${snaps}">
						<c:if test="${snap.contextPath ne '/styles'}">
							<li><a href="<c:url value="${snap.contextPath}${snap.properties['link.path']}"/>">
								${snap.properties['link.text']}</a>
							</li>
						</c:if>
					</c:forEach>
				</snaps:snaps>
			</ul>
		</div>
		<div id="left-cap"></div>
		<div id="primary-right">
			<ul>
                <li><a href="<c:url value="../admin" />" title="Admin Console">Admin Console</a></li>
            </ul>
		</div>
		<div id="right-cap"></div>
	</div>

	<div id="container">
		<div id="content-no-nav">

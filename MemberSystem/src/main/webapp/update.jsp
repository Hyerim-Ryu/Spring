<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		font-family: 'Orbit', sans-serif;
	}
	#wrap, h2, table{
		margin: auto;
		text-align: center;
	}
	body{
		background-color: #F4C2C2;
	}
</style>
</head>
<body>
	<div id="wrap">
		<h2>회원정보수정페이지</h2>
		<form action="updateService.jsp" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td>NICK</td>
				<td><input type="text" name="nick"></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td><input type="tel" name="phone"></td>
			</tr>
			<tr>
				<td>GENDER</td>
				<td>
					남자<input type="radio" name="gender" value="남자">
					여자<input type="radio" name="gender" value="여자">
				</td>
			</tr>
			<tr>
				<td>AGE</td>
				<td><input type="number" name="age"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원정보수정">
					<input type="reset">
				</td>
			</tr>
			
		</table>
		</form>
	</div>
</body>
</html>
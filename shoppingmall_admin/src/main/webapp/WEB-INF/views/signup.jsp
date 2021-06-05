<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/assets/css/reset.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/assets/css/signup.css">
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
    <div>
        <table>
            <tbody>
                <tr>
                    <td>아이디</td>
                    <td><input type="text" id="new_id"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" id="new_pwd"></td>
                </tr>
                <tr>
                    <td>비밀번호 확인</td>
                    <td><input type="password" id="new_pwd_con"></td>
                </tr>
                <tr>
                    <td>판매자 명</td>
                    <td><input type="text" id="new_name"></td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" id="new_addr"></td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" id="new_email"></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" id="new_phone"></td>
                </tr>
                <tr>
                    <td>
                        <button id="regist">등록하기</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
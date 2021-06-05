<%@page language="java" contentType="text/html; encoding=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>판매자 관리</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        // HTML의 DOM이 로드가 완료되었을 때
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("regist").addEventListener("click", function() {
                let id = document.getElementById("seller_id").value;
                let pwd = document.getElementById("seller_pwd").value;
                let pwd_con = document.getElementById("seller_pwd_con").value;
                let name = document.getElementById("seller_name").value;
                let addr = document.getElementById("seller_addr").value;
                let email = document.getElementById("seller_email").value;
                let phone = document.getElementById("seller_phone").value;                
                
                if(id=='') {
                    alert("아이디를 입력하세요");
                    return;
                }
                if(id.length<4) {
                    alert("아이디는 4자 이상으로 입력해주세요.");
                    return;
                }
                if(pwd=='') {
                    alert("비밀번호를 입력하세요");
                    return;
                }
                if(pwd.length<6) {
                    alert("비밀번호는 6자 이상으로 입력해주세요.");
                    return;
                }
                if(pwd != pwd_con) {
                    alert("비밀번호가 일치하지 않습니다.");
                    return;
                }
                if(name=='') {
                    alert("이름을 입력하세요");
                    return;
                }
                if(addr=='') {
                    alert("주소를 입력하세요");
                    return;
                }
                if(email=='') {
                    alert("이메일을 입력하세요");
                    return;
                }
                if(phone=='') {
                    alert("전화번호를 입력하세요");
                    return;
                }
                let sellerInfo = {
                    si_id:id,
                    si_pwd:pwd,
                    si_name:name,
                    si_address:addr,
                    si_email:email,
                    si_phone:phone
                };
                
                $.ajax({
                    type:"post",    //@PostMapping
                    url:"/seller/regist",   //
                    data:JSON.stringify(sellerInfo),    //@RequestBody
                    contentType:"application/json",
                    success:function(result) {
                        // return reultMap;
                    },
                    error:function(error) {
                        // excetion, 발생시킨 에러정보
                    }
                })
            })
        })
        // json
        // $(function(){
        //     $(#regist)
        // })
    </script>
</head>
<body>
    <div>
        <table>
            <tbody>
                <tr>
                    <td>아이디</td>
                    <td><input type="text" id="seller_id"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" id="seller_pwd"></td>
                </tr>
                <tr>
                    <td>비밀번호 확인</td>
                    <td><input type="password" id="seller_pwd_con"></td>
                </tr>
                <tr>
                    <td>판매자 명</td>
                    <td><input type="text" id="seller_name"></td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td><input type="text" id="seller_addr"></td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td><input type="text" id="seller_email"></td>
                </tr>
                <tr>
                    <td>전화번호</td>
                    <td><input type="text" id="seller_phone"></td>
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
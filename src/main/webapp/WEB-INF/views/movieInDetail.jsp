<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Movie Flex</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        p{
            margin-top:10px;
        }
        .container{
            width:100%;
        }
        .modal-btn-box{
            width:100%;
            text-align:center;
        }
        .modal-btn-box button{
            display:inline-block;
            width:150px;
            height:50px;
            background-color:#ffffff;
            border:1px solid #e1e1e1;
            cursor:pointer;
            padding-top:8px;
        }
        .popup-wrap{
            background-color:rgba(0,0,0,.3);
            justify-content:center;
            align-items:center;
            position:fixed;
            top:0;
            left:0;
            right:0;
            bottom:0;
            display:none;
            padding:15px;
        }
        .popup{
            width:100%;
            max-width:400px;
            background-color:#ffffff;
            border-radius:10px;
            overflow:hidden;
            background-color:#264db5;
            box-shadow: 5px 10px 10px 1px rgba(0,0,0,.3);
        }
        .popup-head{
            width:100%;
            height:50px;
            display:flex;
            align-items:center;
            justify-content:center;
        }
        .head-title {
            font-size: 38px;
            font-style: italic;
            font-weight: 700;
            letter-spacing: -3px;
            text-align: center;
        }
        .popup-body{
            width:100%;
            background-color:#ffffff;
        }
        .body-content{
            width:100%;
            padding:30px;
        }
        .body-titlebox{
            text-align:center;
            width:100%;
            height:40px;
            margin-bottom:10px;
        }
        .body-contentbox{
            word-break:break-word;
            overflow-y:auto;
            min-height:100px;
            max-height:200px;
        }
        .popup-foot{
            width:100%;
            height:50px;
        }
        .pop-btn{
            display:inline-flex;
            width:50%;
            height:100%;
            float:left;
            justify-content:center;
            align-items:center;
            color:#ffffff;
            cursor:pointer;
        }
        .pop-btn.confirm{
            border-right:1px solid #3b5fbf;
        }

        .hide{
            display:none;
        }

    </style>
</head>
<body>

<div class="container">
    <div class="modal-btn-box">
        <button type="button" id="modal-open">모달창 열기</button>
    </div>

    <div class="popup-wrap" id="popup">
        <div class="popup">
            <div class="popup-head">
          <span class="head-title">
            MuziMuzi</span>
            </div>
            <div class="popup-body">
                <div class="body-content">
                    <div class="body-titlebox">
                        <h1>Confirm Modal</h1>
                    </div>
                    <div class="body-contentbox">
                        <p>컨테이너 박스가 있고 그 안에

                            각각 가로값과 세로값이 다른 박스 아이템이 있습니다.

                            위의 상태 그대로 라면 div의 기본속성은 display block이기 때문에 가로값과 관계없이 세로영역 만큼 한줄을 다 차지하기 때문에

                            div박스들은 아래와 같이 수직으로 떨어지게 됩니다.</p>

                        <p>
                            다시 원점으로 돌아와서

                            flexbox의 부모요소와 자식요소는 각각 사용할 수 있는 속성이 있습니다.

                            부모요소(flex container) 속성 : flex-direction, flex-wrap, justify-content, align-items, align-content

                            자식요소(flex item) 속성 : flex, flex-grow, flex-shrink, flex-basis, order
                        </p>
                        <p>
                            부모요소의

                            flex-direction : flex item의 정렬 방향 (기본값 가로)

                            justify-content : flex item의 수평 정렬 (기본값 flex-start)

                            align-items : flex item의 수직 정렬 (기본값 stretch)
                        </p>
                    </div>


                </div>
            </div>
            <div class="popup-foot">
                <span class="pop-btn confirm" id="confirm">확인</span>
                <span class="pop-btn close" id="close">창 닫기</span>
            </div>
        </div>
    </div>
</div>

</body>

<script>
    document.querySelector("#confirm").addEventListener("click", modalClose);

    document.querySelector("#modal-open").addEventListener("click", () => {
        let popup = document.querySelector("#popup");
        popup.style.display = "flex";
        popup.classList.remove("hide");
    })

    document.querySelector("#close").addEventListener("click", () => {
        modalClose();
    })



    function modalClose(){
        document.querySelector("#popup").classList.add("hide");
    }


</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>KakaoLink v2 Demo(Scrap) - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>

<a id="kakao-link-btn" href="javascript:sendLink1()">
<p>커스텀템플릿</p>
<img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
</a>

<a id="kakao-link-btn" href="javascript:sendLink2()">
<p>기본템플릿</p>
<img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
</a>

<script type='text/javascript'>
  //<![CDATA[
    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('fe120ba14375d1b4e17266e4af305b6c');
    // // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    function sendLink1() {
      Kakao.Link.sendCustom({
        templateId:17130,
        templateArgs: {
          'title': '롯데렌터카 신차장 친구추천 이벤트!',
          'description': '내가 초대한 친구가 계약할 때마다\n엘포인트 20만점이 무제한 적립!',
          'MobileMain':'moblieMain',
          'WebMain':'webMain',
          'param1':'moblieMain/test123?url=test1&type=@@@@',
          'param2':'webMain?url=test2&type$$$$'	  
        }
      });
    }
    
    function sendLink2() {
    	Kakao.Link.sendDefault({
            objectType: 'feed',
            content: {
              title: '롯데렌터카 신차장 친구추천 이벤트!',
              description: '내가 초대한 친구가 계약할 때마다 엘포인트 20만점이 무제한 적립!',
              imageUrl: 'https://manager.lotterentacar.net/mobile/images/img/header_friend.png',
              imageWidth: 600,
              imageHeight: 400,
              link: {
                mobileWebUrl: 'https://developers.kakao.com',
                webUrl: 'https://developers.kakao.com'
              }
            },
            buttons: [
              {
                title: '웹으로 보기',
                link: {
                  mobileWebUrl: 'https://developers.kakao.com',
                  webUrl: 'https://developers.kakao.com'
                }
              }
            ]
          });
      }
    
  //]]>
</script>

</body>
</html>

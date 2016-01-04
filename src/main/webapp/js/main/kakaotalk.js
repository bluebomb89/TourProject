$(document).ready(function(){
Kakao.init('095fc61e29157624f94212b30372c244');
function getKakaotalkUserProfile(){
Kakao.API.request({
url: '/v1/user/me',
success: function(res) {
$("#kakao-profile").append(res.properties.nickname);
$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
},
fail: function(error) {
console.log(error);
}
});
}
function createKakaotalkLogin(){
$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
var loginBtn = $("<a/>",{"class":"kakao-login-btn","text":"카카오 톡으로 로그인하기"});
loginBtn.click(function(){
Kakao.Auth.login({
persistAccessToken: true,
persistRefreshToken: true,
success: function(authObj) {
getKakaotalkUserProfile();
createKakaotalkLogout();
},
fail: function(err) {
console.log(err);
}
});
});
$("#kakao-logged-group").prepend(loginBtn)
}
function createKakaotalkLogout(){
$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
logoutBtn.click(function(){
Kakao.Auth.logout();
createKakaotalkLogin();
$("#kakao-profile").text("");
});
$("#kakao-logged-group").prepend(logoutBtn);
}
if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
createKakaotalkLogout();
getKakaotalkUserProfile();
}else{
createKakaotalkLogin();
}
});
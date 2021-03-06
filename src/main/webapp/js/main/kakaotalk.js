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
var loginBtn = $("<img/>",{"class":"kakao-login-btn","src":"images/kakao_login_btn.png"});
var mainlogin = $("<a/>",{"class":"kakao-logout-btn mbr-buttons__link btn text-white","text":"로그인","data-toggle":"modal","data-target":".bs-example-modal-lg"});
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
$("#hnplogin").prepend(loginBtn)
$("#kakao-logged-group").prepend(mainlogin)
}
function createKakaotalkLogout(){
$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
var logoutBtn = $("<a/>",{"class":"kakao-logout-btn mbr-buttons__link btn text-white","text":"로그아웃"});
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

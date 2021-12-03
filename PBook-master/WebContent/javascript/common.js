function hover(element) {
    element.style.backgroundColor="cornsilk";
}

function hoverOff(element) {
    element.style.backgroundColor="transparent";
}

function divHover(element) {
    element.style.backgroundColor="rgb(100,100,100,0.85)";
}

function divHoverOff(element) {
    element.style.backgroundColor="rgb(245, 245, 245, 0.85)";
}

function changeCoverText() {
    document.getElementById("MainCover").style.display="none";
    document.getElementById("SideCover").style.display="block";
}

function backToCoverText() {
    document.getElementById("MainCover").style.display="block";
    document.getElementById("SideCover").style.display="none";
}

function forgotPassword() {
    document.getElementById("Signin").style.display="none";
    document.getElementById("Fpass").style.display="block";

}

function signIn() {
    document.getElementById("Signin").style.display="block";
    document.getElementById("Fpass").style.display="none";

}

function liHover(element) {
    element.style.backgroundColor="cornsilk";
    element.style.fontSize="40px";
    element.style.marginLeft="85px";
}

function liHoverOff(element) {
    element.style.backgroundColor= "rgb(255,255,255,0.6)";
    element.style.fontSize="30px";
    element.style.marginLeft="115px";
}

function openWelcome() {
    document.getElementById("Welcome").style.display="block";
    document.getElementById("Why Socially").style.display="none";
    document.getElementById("Creators").style.display="none";
}

function openWhy() {
    document.getElementById("Welcome").style.display="none";
    document.getElementById("Why Socially").style.display="block";
    document.getElementById("Creators").style.display="none";
}

function openCreators() {
    document.getElementById("Welcome").style.display="none";
    document.getElementById("Why Socially").style.display="none";
    document.getElementById("Creators").style.display="block";
}

function imageHover(element) {
    element.style.maxWidth="110px";
}

function imageHoverOff(element) {
    element.style.maxWidth="100px";
}

function openA() {
    document.getElementById("apoorvaa").style.display="block";
    document.getElementById("pooja").style.display="none";
    document.getElementById("yuktha").style.display="none";
    document.getElementById("sanjnaa").style.display="none";
    document.getElementById("jyothi").style.display="none";
}

function openP() {
    document.getElementById("apoorvaa").style.display="none";
    document.getElementById("pooja").style.display="block";
    document.getElementById("yuktha").style.display="none";
    document.getElementById("sanjnaa").style.display="none";
    document.getElementById("jyothi").style.display="none";
}

function openY() {
    document.getElementById("apoorvaa").style.display="none";
    document.getElementById("pooja").style.display="none";
    document.getElementById("yuktha").style.display="block";
    document.getElementById("sanjnaa").style.display="none";
    document.getElementById("jyothi").style.display="none";
}

function openS() {
    document.getElementById("apoorvaa").style.display="none";
    document.getElementById("pooja").style.display="none";
    document.getElementById("yuktha").style.display="none";
    document.getElementById("sanjnaa").style.display="block";
    document.getElementById("jyothi").style.display="none";
}

function openJ() {
    document.getElementById("apoorvaa").style.display="none";
    document.getElementById("pooja").style.display="none";
    document.getElementById("yuktha").style.display="none";
    document.getElementById("sanjnaa").style.display="none";
    document.getElementById("jyothi").style.display="block";
}

function liProfileHover(element) {
    element.style.backgroundColor="rgb(255, 229, 180)";
    element.style.fontSize="27px";
    element.style.marginLeft="0px";
}

function liProfileHoverOff(element) {
    element.style.backgroundColor= "rgb(255,255,255,0.6)";
    element.style.fontSize="25px";
    element.style.marginLeft="15px";
}

function openEditProfile() {
    document.getElementById("Edit Profile").style.display="block";
    document.getElementById("My Posts").style.display="none";
    document.getElementById("Friend Requests").style.display="none";
    document.getElementById("Change Password").style.display="none";
}

function openMyPosts() {
    document.getElementById("Edit Profile").style.display="none";
    document.getElementById("My Posts").style.display="block";
    document.getElementById("Friend Requests").style.display="none";
    document.getElementById("Change Password").style.display="none";
}

function openFR() {
    document.getElementById("Edit Profile").style.display="none";
    document.getElementById("My Posts").style.display="none";
    document.getElementById("Friend Requests").style.display="block";
    document.getElementById("Change Password").style.display="none";
}

function openChangePassword() {
    document.getElementById("Edit Profile").style.display="none";
    document.getElementById("My Posts").style.display="none";
    document.getElementById("Friend Requests").style.display="none";
    document.getElementById("Change Password").style.display="block";
}

function arrowBig(element) {
    element.style.maxWidth = "125%";
}

function arrowSmall(element) {
    element.style.maxWidth = "100%";
}

function arrowHover(element) {
    element.style.backgroundColor="rgb(255,255,255,0.95)";
}

function arrowHoverOff(element) {
    element.style.backgroundColor="rgb(255,255,255,0.5)";
}

function openVideoPhoto() {
    if(document.getElementById("videoUpload").style.display=="none")
    {
        document.getElementById("videoUpload").style.display="block";
        document.getElementById("photoUpload").style.display="none";
    }

    else
    {
        document.getElementById("videoUpload").style.display="none";
        document.getElementById("photoUpload").style.display="block";
    }
}


function loadPhoto(event) {
	var image = document.getElementById('img');
	image.src = URL.createObjectURL(event.target.files[0]);
};

function loadVideo(event) {
	var video = document.getElementById('video');
    var source = document.getElementById('source');
    document.getElementById('vidicon').style.display="none";

    video.style.display="block";
    source.setAttribute('src', URL.createObjectURL(event.target.files[0]));
    video.load();
    video.play();

};

function changeProfPic() {
    var image = document.getElementById("propic");
    image.src = URL.createObjectURL(event.target.files[0]);
}

function bugDisplay() {
    var image = document.getElementById('bugscrshot');
    image.src = URL.createObjectURL(event.target.files[0]);
    image.style.display = "block";
}

function opHover(element) {
	element.style.backgroundColor = "rgb(0,0,0)";
	element.style.color = "rgb(255,255,255)";
}

function opHoverOff(element) {
	element.style.color = "rgb(0,0,0)";
	element.style.backgroundColor = "rgb(255,255,255)";
}

function displayProfile(first, last, dp, bio) {
	document.getElementById("noProfile").style.display="none";
	document.getElementById("Profile").style.display="block";
    document.getElementById("searchResName").innerHTML= first.concat(" ".concat(last));
    document.getElementById("searchResImage").src= dp;
	document.getElementById("searchResBio").innerHTML= bio;
}

function Error(remark) {
	alert(remark);
}

function liked(element) {
	if(element.style.backgroundColor == "none")
	{element.style.backgroundColor = "red";}
	
	else
	{element.style.backgroundColor = "none";}
}
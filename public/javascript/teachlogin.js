  var uid=document.querySelector("#uid");
  var tpassword=document.querySelector("#password");
  var passhelp=document.querySelector("#passwordHelpBlock");
  var uidhelp=document.querySelector("#uidhelpblock");

  function check2(e) {
  	if(uid.value.length!=3) {
  		uidhelp.innerHTML=`<span style="color:red">Id must be 3 charcters</span>`;
  		return false;
  	} else {
      uidhelp.innerHTML="";
    }
  	if (tpassword.value.length<3) {
  		passhelp.innerHTML=`<span style="color:red">password should me minimum 5 charcters</span>`;
  		return false;
  	} else {
        passhelp.innerHTML="";
    }
  }
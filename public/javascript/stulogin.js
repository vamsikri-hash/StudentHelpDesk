  var regno=document.querySelector("#regno");
 var stupassword=document.querySelector("#password");
 var submit1= document.querySelector(".submit");
 var helpblock=document.querySelector("#passwordHelpBlock");
 var helpblock2=document.querySelector("#registerhelpblock");
 //submit1.addEventListener("submit",check,false);

 function check(e)
 {
 	//e.preventDefault();
 	console.log(1);
 	if(regno.value.length!=9) {
 		helpblock2.innerHTML=`<span style="color:red">Register number must be 9 digits</span>`
 		regno.focus();
 		return false;
 	} else {
 		helpblock2.innerHTML="";
 	}
 		
 	if (stupassword.value.length<3) {
 		helpblock.innerHTML=`<span style="color:red">enter the passwordwith minimum 5 charcters</span>`;
 		stupassword.focus();
 		return false;
 	} else {
 		helpblock.innerHTML="";
 	}
 	
 }
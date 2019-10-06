var stuname=document.querySelector("#name");
var regno=document.querySelector("#rgno");
var department=document.querySelector("#department")
var email=document.querySelector("#email");
var password=document.querySelector("#password");
var namehelpblock=document.querySelector("#namehelpblock");
var registerhelpblock=document.querySelector("#registerhelpblock");
var departmenthelpblock=document.querySelector("#departmenthelpblock");
var emailhelpblock=document.querySelector("#mailhelpblock");
var passwordhelpblock=document.querySelector("#passwordhelpblock");
var submit2=document.querySelector(".submit");
//submit2.addEventListener("click",check3);
 const emailExpression = /^([a-zA-Z0-9\.])+@sastra+(\.ac\.in)*$/;
 const nameExpresssion=/^([a-zA-Z])+/;
 console.log(1);
console.log(name.value);
function check3() {
	console.log(1);
//	event.preventDefault();
	console.log(name.value);
	if(stuname.value.length==0) {
		namehelpblock.innerHTML=`<span style="color:red">Name should not be empty</span>`;
		return false;
	} else 
	{
		namehelpblock.innerHTML="";
	}
	if (!(nameExpresssion.test(stuname.value))) {
		namehelpblock.innerHTML='<span style="color:red">Name should have only alphabet</span>';
		return false;
	} else {
		namehelpblock.innerHTML="";
	}
	if(regno.value.length!==9) {
    registerhelpblock.innerHTML=`<span style="color:red">register numbermust be 9 digits</span>`;
    return false;
	} else {
		registerhelpblock.innerHTML="";
	}
	if (!(emailExpression.test(email.value))) {
		emailhelpblock.innerHTML=`<span style="color:red">email should be of the form 123..@sastra.ac.in</span>`;
		return false;
	} else {
		emailhelpblock.innerHTML="";
	}
//console.log(password.value);
	if(password.value.length<5) {
		passwordhelpblock.innerHTML=`<span style="color:red">password should be minimum 5 charcters long</span>`;
		return false;
	} else {
		passwordhelpblock.innerHTML="";
	}
	
	
}

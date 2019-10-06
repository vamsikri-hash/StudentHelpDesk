 var teachname=document.querySelector("#name");
 var uid=document.querySelector("#uid");
 var email=document.querySelector("#email");
 var ai1=document.querySelector("#ai1");
 var ai2=document.querySelector("#ai2");
 var ai3=document.querySelector("#ai3");
 var teachpassword=document.querySelector("#password");
 var degree=document.querySelector("#degree");

 var namehelpblock=document.querySelector("#namehelpblock");
 var uidhelpblock=document.querySelector("#uidhelpblock");
 var mailhelpblock=document.querySelector("#mailhelpblock");
 var degreehelpblock=document.querySelector("#degreehelpblock");
 var ai1helpblock=document.querySelector("#ai1helpblock");
 var ai2helpblock=document.querySelector("#ai2helpblock");
 var ai3helpblock=document.querySelector("#ai3helpblock");
 var passwordhelpblock=document.querySelector("#passwordhelpblock");


const emailExpression = /^([a-zA-Z0-9\.])+@sastra+(\.ac\.in)*$/;
 const nameExpresssion=/^([a-zA-Z])+/;
 console.log(1);

 function signcheck() {

 	if(teachname.value.length==0) {
 		namehelpblock.innerHTML=`<span style="color:red"> Name should not be empty</span>`;
 		return false;
 	} else {
 		namehelpblock.innerHTML="";
 	}

 	if(uid.value.length==0) {
 		uidhelpblock.innerHTML=`<span style="color:red">id can not be empty!</span>`;
 		return false;
 	} else {
 		uidhelpblock.innerHTML="";
 	}

 	if(!(nameExpresssion.test(teachname.value))) {
 		namehelpblock.innerHTML=`<span style="color:red"> name should only should have charcters</span>`;
 		return false;
 	} else {
 		namehelpblock.innerHTML="";
 	}
 	if(!(emailExpression.test(email.value))) {
 		mailhelpblock.innerHTML=`<span style="color:red">email should be of the form 123.. @sastra.ac.in</span>`;
 		return false;
 	} else {
 		mailhelpblock.innerHTML="";
 	}

 	if(degree.value.length==0) {
 		degreehelpblock.innerHTML=`<span style="color:red">Degree can't be empty</span>`;
 		return false;
 	} else {
 		degreehelpblock.innerHTML="";
 	}

 	if(ai1.value.length==0) {
 		ai1helpblock.innerHTML=`<span style="color:red">area of interest can't be empty</span>`;
 		return false;
 	} else {
 		ai1helpblock.innerHTML="";
 	}

 	if(ai2.value.length==0) {
 		ai2helpblock.innerHTML=`<span style="color:red">area of interest can't be empty</span>`;
 		return false;
 	} else {
 		ai2helpblock.innerHTML="";
 	}

 	if(ai3.value.length==0) {
 		ai3helpblock.innerHTML=`<span style="color:red">area of interest can't be empty</span>`;
 		return false;
 	} else {
 		ai3helpblock.innerHTML="";
 	}

 	if(password.value.length<5) {
 		passwordhelpblock.innerHTML=`<span style="color:red">password must be minimum 5 charcters</span>`;
 		return false;
 	} else {
 		passwordhelpblock.innerHTML="";
 	}


 }
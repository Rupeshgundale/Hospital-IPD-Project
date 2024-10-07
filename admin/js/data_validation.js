/**
 * 
 */
 
 $(document).ready(function(){
	  $("#txtname").blur(function(){
                nme=document.getElementById("txtname").value;
                //alert(nme.length);
                regExp=/^[a-zA-Z. ]+$/;
                //alert(nme);
	            if(!regExp.test(nme))
                {
                    document.getElementById("errName").innerHTML="Enter Valid Name";
                    $("#errName").show(1000);
                }
                else
                {   
                   
                    $("#errName").hide(1000);
                }
                
            });
             $("#txtmob").blur(function(){ 
                mob=document.getElementById("txtmob").value;
                regExp=/^[6-9]{1}[0-9]{9}$/;
                if(!regExp.test(mob))
                {
                    document.getElementById("mbErr").innerHTML="Invalid Mobile Number";
                    $("#mbErr").css("color","red");
                    $("#mbErr").show(1000);
                }
                else
                {
                    $("#mbErr").hide(1000);
                }
            });
            
            $("#txtemail").blur(function(){ 
            email=document.getElementById("txtemail").value;
            regExp=/^[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*@[a-zA-Z0-9]+(\.[a-zA-Z]{2,3})+$/;
            if(!regExp.test(email))
            {
                document.getElementById("emailErr").innerHTML="Invalid Email";
                $("#emailErr").show(1000);

            }
            else
            {
                $("#emailErr").hide(1000);
                
            }


        });
        
         $("#txtcity").blur(function(){
                nme=document.getElementById("txtcity").value;
                //alert(nme.length);
                regExp=/^[a-zA-Z. ]+$/;
                //alert(nme);
	            if(!regExp.test(nme))
                {
                    document.getElementById("errCity").innerHTML="Enter Valid City Name";
                    $("#errCity").show(1000);
                }
                else
                {   
                   
                    $("#errCity").hide(1000);
                }
                
            });
	
});
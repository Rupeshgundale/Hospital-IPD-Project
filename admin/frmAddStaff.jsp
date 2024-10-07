<html>
<head>
<head>
  <%@include file="include_file.jsp" %>
  <%@include file="admin_navigation.jsp" %>

</head>
<style>
.frm
{
	margin-top:40vh;
}
#lgn{
height:200px;
}
</style>
<body>
<form action=addStaff.jsp method=get>
<div class="container frm">
  
  <div class="row">
  
 <div class="col-4">
  
  <div class="form-group" >
   <label for="exampleInputEmail1" style="background-color:#1ca0d9;width:100%;padding:15px;text-align:center;color:White;font-family-sans-serif">+ New Staff Registration</label><br>
  </div>
  
  
  <div class="form-group">
                      <label for="exampleInputEmail1">Name</label>
                      <input type="text" class="form-control" id="txtName" name="txtName" onblur="validateEmpty(this,document.getElementById('errName'),'Enter Valid Name')" >
                      <small id="errName" class="form-text"></small>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Mobile No </label>
                      <input type="text" class="form-control" id="txtMobile" name="txtMobile" onblur="validateMobile(this,document.getElementById('errMobile'),'Enter Valid Mobile Number')">
                      <small id="errMobile" class="form-text"></small>
                    </div>
                    <diV>
                     <label for="exampleInputEmail1">Birth Date</label>
                      <input type="date" class="form-control" id="txtName" name="txtName" onblur="validateEmpty(this,document.getElementById('errName'),'Enter Valid Name')" >
                      <small id="errName" class="form-text"></small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email</label>
                      <input type="email" class="form-control" id="txtEmail" name="txtEmail" onblur="validateEmail(this,document.getElementById('errEmail'),'Enter Valid Email')">
                      <small id="errEmail" class="form-text"></small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Address</label>
                      <textarea area class="form-control" id="txtAdd" name="txtAdd"></textarea>
                      <small id="errAdd" class="form-text"></small>
                    </div>
				
                    <div class="form-group">
                      <label for="exampleInputEmail1">City</label>
                      <input type="text" class="form-control" id="txtCity" name="txtCity" onblur="validateEmpty(this,document.getElementById('errCity'),'Enter Valid City Name')">
                      <small id="errCity" class="form-text"></small>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Education</label>
                      <input type="text" class="form-control" id="txtState" name="txtLandmark" onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
                      <small id="errState" class="form-text"></small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Pass Year</label>
                      <input type="text" class="form-control" id="txtState" name="txtLandmark" onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
                      <small id="errState" class="form-text"></small>
                    </div>
                     <div class="form-group">
                      <label for="exampleInputEmail1">Job Experience</label>
                      <input type="text" class="form-control" id="txtState" name="txtLandmark" onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
                      <small id="errState" class="form-text"></small>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Joinig Date</label>
                      <input type="date" class="form-control" id="txtState" name="txtLandmark" onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
                      <small id="errState" class="form-text"></small>
                    </div>
                    
                    <div class="form-group">
                      <label for="exampleInputEmail1">Salary</label>
                      <input type="text" class="form-control" id="txtState" name="txtLandmark" onblur="validateEmpty(this,document.getElementById('errState'),'Enter Valid Landmark')">
                      <small id="errState" class="form-text"></small>
                    </div>
                    
                    
                    <input type="submit" class="btn btn-primary"  style="width:100%;" id=login value=Register >
                  </form>
                 <!--<a href=frmCustLogin.jsp>Already Registered? Login Here</a>-->
  

  </div>
  </div>
  </div>
</form>

</body>
</html>
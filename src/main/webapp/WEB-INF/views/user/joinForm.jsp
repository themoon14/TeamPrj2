<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>



<div class="container">
	<form action="/join" method="post">
	  
	  <!-- User Info start-->
	  <div class="form-group">
	    <input type="text" name="username" class="form-control" placeholder="Enter username"  maxlength="20" required="required">
	  </div>
	  <div class="form-group">
	    <input type="password" name="password" class="form-control" placeholder="Enter password"  maxlength="20" required="required">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uName" class="form-control" placeholder="Enter name"  maxlength="20" required="required">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uPhone" class="form-control" placeholder="Enter phone"  maxlength="20" required="required">
	  </div>	  
	  <div class="form-group">
	    <input type="email" name="uEmail" class="form-control" placeholder="Enter email"  required="required">
	  </div>
	  <div class="from-group">
      	<div class="ps_box gender_code">
        	<select id="gender" name="uGender" class="sel" aria-label="Gender">
            	<option value="" selected="">Gender</option>
               	<option value="F">Female</option>
                <option value="M">Male</option>
                <option value="U">Other</option>
            </select>
        </div>
      </div>
      </br>
	  <!-- User Info end-->
	  
	  <!-- Body Info start -->
	  <div class="form-group">
	    <input type="text" name="uWeight" class="form-control" placeholder="Enter weight">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uHeight" class="form-control" placeholder="Enter height">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uMuscle" class="form-control" placeholder="Enter muscle">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uFat" class="form-control" placeholder="Enter fat">
	  </div>
	  <div class="form-group">
	    <input type="text" name="uBMI" class="form-control" placeholder="Your BMI" >
	  </div>
	  <!-- Body Info end -->
	  
	  <button type="submit" class="btn btn-primary">회원가입</button>
	</form>
</div>

<%@ include file="../layout/footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>


<div class="tbl-y-wrap r5">
				<form name="frm" method="get">
					<table class="tbl-y">
						<colgroup>
							<col style="width:144px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th>성별 </th>
								<td>
									<input type="radio" class="radio" id="sex" name="sex" value="F" checked=""><label class="pre" for="female"> 여자      </label>
									<input type="radio" class="radio" id="sex" name="sex" value="M"><label class="pre" for="male"> 남자</label>
								</td>
							</tr>
							<tr>
								<th> 연령</th>
								<td>
									<div class="date-wrap clfix">
										<input type="text" class="ipt2" style="width:95px" id="byear" name="byear" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')" maxlength="4" placeholder=""><span class="dash"> 년  </span>
										<div class="select-wrap4">
											<select class="select4" id="bmonth" name="bmonth">
												
													<option value="1">1</option>
												
													<option value="2">2</option>
												
													<option value="3">3</option>
												
													<option value="4">4</option>
												
													<option value="5">5</option>
												
													<option value="6">6</option>
												
													<option value="7">7</option>
												
													<option value="8">8</option>
												
													<option value="9">9</option>
												
													<option value="10">10</option>
												
													<option value="11">11</option>
												
													<option value="12">12</option>
												
											</select>
											<span class="select-arr4"></span>
										</div><span class="dash"> 월</span>
										<div class="select-wrap4">
											<select class="select4" id="bday" name="bday">
												
													<option value="1">1</option>
												
													<option value="2">2</option>
												
													<option value="3">3</option>
												
													<option value="4">4</option>
												
													<option value="5">5</option>
												
													<option value="6">6</option>
												
													<option value="7">7</option>
												
													<option value="8">8</option>
												
													<option value="9">9</option>
												
													<option value="10">10</option>
												
													<option value="11">11</option>
												
													<option value="12">12</option>
												
													<option value="13">13</option>
												
													<option value="14">14</option>
												
													<option value="15">15</option>
												
													<option value="16">16</option>
												
													<option value="17">17</option>
												
													<option value="18">18</option>
												
													<option value="19">19</option>
												
													<option value="20">20</option>
												
													<option value="21">21</option>
												
													<option value="22">22</option>
												
													<option value="23">23</option>
												
													<option value="24">24</option>
												
													<option value="25">25</option>
												
													<option value="26">26</option>
												
													<option value="27">27</option>
												
													<option value="28">28</option>
												
													<option value="29">29</option>
												
													<option value="30">30</option>
												
													<option value="31">31</option>
												
											</select>
											<span class="select-arr4"></span>
										</div><span class="dash"> 일</span>
									</div>
								</td>
							</tr>
							<tr>
								<th>키</th>
								<td>
									<input type="text" class="ipt2" style="width:95px" id="stature" name="stature" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')" maxlength="3"><span class="dash"> cm</span>
								</td>
							</tr>
							<tr>
								<th>몸무게</th>
								<td>
									<input type="text" class="ipt2" style="width:95px" id="weight" name="weight" onkeydown="this.value=this.value.replace(/[^0-9]/g,'')" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onblur="this.value=this.value.replace(/[^0-9]/g,'')" maxlength="3"><span class="dash"> kg</span>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
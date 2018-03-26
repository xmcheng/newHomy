<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.hanson.util.Constant"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="hanson/css/common.css" />
<link rel="stylesheet" type="text/css" href="hanson/css/table.css"/>
<link rel="stylesheet" href="hanson/css/datepicker.css" />
<link rel="stylesheet" href="hanson/css/select2.css" />
<link rel="stylesheet" href="hanson/css/toastr.css" />
		<link rel="stylesheet" href="hanson/css/bootstrap.min.css" />
		<link rel="stylesheet" href="hanson/css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="hanson/css/fullcalendar.css" />	
		<link rel="stylesheet" href="hanson/css/uniform.css" />
		<link rel="stylesheet" href="hanson/css/select2.css" />	
		<link rel="stylesheet" href="hanson/css/unicorn.main.css" />
		<link rel="stylesheet" href="hanson/css/unicorn.grey.css" class="skin-color" />
<style>
	.select2-drop{  
	        z-index:99999          
	} 
 	.MDlist{
		position: absolute;
		bottom: -102px;
		left: 175px;
		background-color: #fff;
		width: 52%; 
		height: 100px;
		overflow-y: scroll;
		border: 1px solid #ddd;
		display: none;
	} 
	.MDlist li{
		text-align: center;
		height: 30px;
		line-height: 30px;
	}
	.MDlist li:hover{
		background-color: #21C6F2;
		color:#fff;
	}
	.modeloading{
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: rgba(0,0,0,.4);
		display: none;
	}
	.modeloading img{
		position: absolute;
		top: 50%;
		left: 50%;
		margin-left: -64px;
		margin-top: -64px;
	}
</style>
<script type="text/javascript" src="http://www.my97.net/My97DatePicker/WdatePicker.js"></script>

<!--快速查询-->
<div class="quick_search">
	<form id="quick_search_from" action="">
		<div>
			<span>ID:<input name="id" type="text"/></span>
			<span>注册日期:<input id="date01" name="WdatePickerStart" type="text" class="Wdate" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'date02\')||\'2050-10-01\'}'})" value=""/>~<input id="date02" name="WdatePickerEnd" type="text"  value="" class="Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'date01\')}', maxDate:'2050-10-01'})"/></span>
			<span>商户类型:
			<select name="companytype">
				<option value="">请选择</option>
				<option value=10>区域制作中心</option>
		    	<option value=20>推广中心</option>
		    	<option value=30>推广员</option>
		    	<option value=50>门店</option>
			</select>
			</span>
		</div>
		<div>
			<span>公司名称:<input name="companyname" type="text" value="" placeholder="请输入公司名称"/></span>
			<span>登录名:<input name="code" type="text" value="" placeholder="请输入登录名"/></span>
			<span>地区:
			<select class="form-control" name="province" id="selProvinceSech">
			<option value="">--请选择省份--</option></select>
			<select class="form-control" name="city"  id="selCitySech">
			<option value="">--请选择市/区--</option></select>
			<select class="form-control" name="area" id="selDistrictSech">
			<option value="">--请选择区/县--</option></select>
			</span>
		</div>
		<div>
			<span>公司地址:<input name="address" type="text" value="" placeholder="请输入公司地址"/></span>
			<span>邮箱:<input name="email" type="text" value="" placeholder="请输入邮箱"/></span>
			<span>手机号:<input name="mobile" type="text" value="" placeholder="请输入手机号"/></span>
			<span>联系电话:<input name="phone" type="text" value="" placeholder="请输入联系电话"/></span>
		</div>
	</form>
</div>
<!--对表单进行操作-->
<div class="from_handle">
	<a href="#myModal" role="button"  data-toggle="modal" ><b></b>录入</a>
	<!-- <a href="javascript:void(0)" class="make_btn"><b></b>查看生产费用</a> -->
	<a href="javascript:void(0)" class="edit_btn"><b></b>编辑</a>
	<!-- <a href="javascript:void(0)" class="messages_btn"><b></b>消息语</a> -->
	<a href="javascript:void(0)" class="ercode_btn"><b></b>新建二维码</a>
	<!-- <a href="javascript:void(0)" class="clearPrarentid_btn"><b></b>取消所属企业</a> -->
	<a href="javascript:void(0)" class="exportExcel_btn"><b></b>导出excel</a>
	<a href="javascript:void(0)" class="addyuepaifunction"><b></b>录入约拍产品</a>
	<a href="javascript:void(0)" class="addphotofunction"><b></b>录入冲印产品</a>
	<a href="javascript:void(0)" class="addphotoframefunction"><b></b>录入相框产品</a>
	<a href="javascript:void(0)" class="addphotoalbumfunction"><b></b>录入相册产品</a>
	<a href="javascript:void(0)" class="editMerchantAuthority"><b></b>编辑商户权限</a>
	<a href="javascript:void(0)" class="createurl"><b></b>生成推广链接</a>
	<a href="javascript:void(0)" class="vipCharge">VIP预存充值</a>
	<a href="javascript:void(0)" class="search_btn" ><b></b>查询</a>
	<a href="javascript:void(0)" class="resert_btn" ><b></b>重置</a>
	
</div>

<!--模态-录入-->
<div class="modal hide fade" style="width:700px;" id="myModal" role="dialog" tabindex="-1" aria-labelledby="gridSystemModalLabel" data-backdrop="static" data-keyboard="false">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">录入</h4>
		    </div>
		    <form id="companyInputForm" action="company/save" method="post" class="form-horizontal">
		    <div class="modal-body">
		     	<!-- <input type="hidden" id="id" name="id" />  -->
				<div class="control-group">
					<label class="control-label" for="companyname">公司名称*</label>
					<div class="controls">
					    <input type="text" id="companyname" name="companyname" placeholder="公司名称">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="code">登录名*</label>
					<div class="controls">
						 <input type="hidden" id="oldcode" name="oldcode">
					    <input type="text" id="code" name="code" placeholder="登录名">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="email">企业邮箱</label>
					<div class="controls">
					    <input type="text" id="email" name="email" placeholder="企业邮箱">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="companytype">商户类型*</label>
					<div class="controls">
						<select id="companytype" name="companytype" placeholder="商户类型">
					    	<option value="">请选择</option>
					    	<option value=40>经销商</option>
					    	<option value=10>区域制作中心</option>
					    	<option value=50>门店</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="website">商户网址</label>
					<div class="controls">
					    <input type="text" id="website" name="website"  placeholder="商户网址">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="myMobile">手机号</label>
					<div class="controls">
					    <input type="text" id="myMobile" name="mobile" placeholder="手机号">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="phone">联系电话</label>
					<div class="controls">
					    <input type="text" id="phone" name="phone" placeholder="联系电话">
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="mendianAddress">门店详情路线</label>
					<div class="controls">
					    <input type="text" id="storepath" name="storepath" placeholder="门店详情路线">
					</div>
				</div>
				<div class="control-group"  style="display:none;">
					<label class="control-label" for="mendianPhoto">门店照片</label>
					<div class="controls">
					    <input type="file" id="mendianPhoto" name="mendianPhoto">
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="parentId">所属上级*</label>
					<div class="controls">
						<select id="parentid" name="parentid" placeholder="所属上级">
							<option value="">请选择</option>
						</select>
					</div>
				</div>
				
				<div class="control-group" id="distpicker2">
					<label class="control-label" for="province">地区</label>
					<div class="controls">
						<select class="form-control" name="province" id="selProvince">
						<option value="0">--请选择省份--</option></select>
						<select class="form-control" name="city"  id="selCity">
						<option value="0">--请选择市/区--</option></select>
						<select class="form-control" name="area" id="selDistrict">
						<option value="0">--请选择区/县--</option></select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="address">详细地址</label>
					<div class="controls">
					    <input type="text" id="address" name="address" placeholder="详细地址"><span style="display:inline-block;border:1px solid #ddd;padding:2px;border-radius:3px;margin-left:5px;" onclick="addr()">搜索地址</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="longitude">经度</label>
					<div class="controls">
					    <input type="text" id="latitude" name="latitude" placeholder="经度">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="latitude">维度</label>
					<div class="controls">
					    <input type="text" id="longitude" name="longitude" placeholder="维度">
					</div>
				</div>
				<div class="control-group">
					<div id="myMap" style="width:100%;height:400px;display:none;"></div>
				</div>
				<div class="control-group">
					<label class="control-label" for="logo">联系人</label>
					<div class="controls">
					    <input type="text" id="logo" name="logo" placeholder="联系人">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="msgtype">消息语</label>
					<div class="controls">
						<select id="msgtype" name="msgtype" placeholder="消息语">
					    	<option value="0">请选择</option>
					    	<option value="2">自己</option>
					    	<option value="1">上级</option>
					    </select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="sdesc">备注</label>
					<div class="controls">
					    <input type="text" id="sdesc" name="sdesc" placeholder="备注">
					</div>
				</div>
				
			<div id="otherInfo">
				<div class="control-group">
						<label class="control-label" for="sdesc">市内费用</label>
						<div class="controls" id="cityPostage"></div>
					</div>
					<div class="control-group">
						<label class="control-label" for="sdesc" >省内费用</label>
						<div class="controls" id="provincePostage"></div>
					</div>
					<div class="control-group">
						<label class="control-label" for="sdesc">全国费用</label>
						<div class="controls" id="nationPostage"></div>
					</div>
					<div class="control-group">
						<label class="control-label" for="sdesc">专属二维码</label>
						<div class="controls"><img id="qrcodepath" src=""></div>
					</div>
					<div class="control-group">
						<label class="control-label" for="sdesc">专属推广链接</label>
						<div class="controls" id="tuiguangurl"></div>
					</div>
			    </div>	
			</div>	

		  	<div class="modal-footer">
		    	<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		    	<button type="button" value="Validate" class="btn btn-primary" onclick="check_form()">保存</button>
		  	</div>
		    </form>
		</div>
	</div>
</div>


<!-- 模态-查看生产费用 -->
<div class="modal hide fade" id="companyMakeModal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="companyMakeModalLabel">录入</h4>
		    </div>
		    <form id="companyMakeForm" action="company/savespecstmp" method="post" class="form-horizontal">
		    <div class="modal-body">
<!-- 		    	隐藏的id -->
				<input type="hidden" name="id" class="productid" value="${productid}" /> 		
				<table id="companyMaketable" class="datatable">
					
				</table>
		    </div>				
		  	<div class="modal-footer">
		    	<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		    	<button type="button" value="Validate" class="btn btn-primary" onclick="check_Make_form()">确定</button>
		  	</div>
		    </form>
		</div>
	</div>
</div>

<!--模态-编辑商户权限-->
<div class="modal hide fade" id="editSHModel" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" data-backdrop="static" data-keyboard="false">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="companyQrcodeModalLabel">编辑商户权限</h4>
		    </div>
		    <form id="companyauthority" action="company/storeAuthority" method="post" class="form-horizontal">	   
		   	<input type="hidden" id="id" name="id" class="" value="" />  
		    <div class="modal-body">
				<div class="control-group">
					<label class="control-label" for="">商户权限*</label>
					<div class="controls">
					    <input id="photoenable" name="photoenable" type="checkbox" style="width: 30px" value="0" checked="">微传
					    <input id="photoframeenable" name="photoframeenable" type="checkbox" style="width: 30px" value="0" checked="">相框
					    <input id="photoalbumenable" name="photoalbumenable" type="checkbox" style="width: 30px" value="0" checked="">相册
					    <input id="outphotoenable" name="outphotoenable" type="checkbox" style="width: 30px" value="0" checked="">约拍
					    <input id="memberenable" name="memberenable" type="checkbox" style="width: 30px" value="0" checked="">会员
					    <input id="closeEvaluateAuth" name="closeEvaluateAuth" type="checkbox" style="width: 30px" value="0" checked="">隐藏评价				 
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="">返佣比例*</label>
					<div class="controls">
					    微传:<input type="text" style="width: 30px" id="photorate" name="photorate" class="photoenable" value="0">%
					</div>
					<div class="controls">
					    相框:<input type="text" style="width: 30px" id="photoframerate" name="photoframerate" class="photoframeenable" value="0">%
					</div>
					<div class="controls">
					    相册:<input type="text" style="width: 30px" id="photoalbumrate" name="photoalbumrate" class="photoalbumenable" value="0">%
					</div>
					<div class="controls">
					    约拍:<input type="text" style="width: 30px" id="outphotorate" name="outphotorate" class="outphotoenable" value="0">%
					</div>
					<div class="controls">
					    会员:<input type="text" style="width: 30px" id="memberrate" name="memberrate" class="memberenable" value="0">%
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="">商户生产权限*</label>
					<div class="controls">
						<input id="photoproduct" name="photoproduct" type="checkbox" style="width: 30px" value="1">微传
					    <input id="photoframeproduct" name="photoframeproduct" type="checkbox" style="width: 30px" value="1">相框
					    <input id="photoalbumproduct" name="photoalbumproduct" type="checkbox" style="width: 30px" value="1">相册
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="">设为总店*</label>
					<div class="controls">
						<input id="isHeadStore1" data-id="" name="isHeadStore" type="radio" style="width: 30px" value="1"  checked="checked">是
					    <input id="isHeadStore0" name="isHeadStore" type="radio" style="width: 30px" value="0" >否
					</div>
				</div>
				<div class="control-group" style="position:relative;">
					<label class="control-label" for="">选择总店*</label>
					<div class="controls">
					<input type="hidden" id="headoffice" name="headoffice"  value="">
					<input type="text" id="headoffice_name" name="headoffice_name"  value="">
						<ul class="MDlist">
							
						</ul>
						
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="">预存标准*</label>
					<div class="controls">
						 <input type="text" id="standardsum" name="standardsum" placeholder="输入预存标准" value="">
					</div>
				</div>
		    </div>				
		  	<div class="modal-footer">
		    	<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		    	<button type="button" value="Validate" class="btn btn-primary" onclick="check_store_form()">保存</button>
		  	</div>
		  	</form>
		</div>
	</div>
</div>

<!--模态-创建二维码-->
<div class="modal hide fade" id="companyQrcodeModal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      		<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="companyQrcodeModalLabel">生成二维码</h4>
		    </div>
		    <div class="modal-body">
				<h3>${message}</h3>
			    <div style="text-align: center;"><img id="images" width="350" height="270"/></div>
		    </div>				
		  	<div class="modal-footer">
		    	<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		  	</div>
		</div>
	</div>
</div>


<div class="modal hide fade" id="vipstoreCharge" tabindex="-10" role="dialog" aria-labelledby="gridSystemModalLabel">
 <div class="modal-dialog" role="document">
   <div class="modal-content">
      <div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <h4 class="modal-title" id="companyQrcodeModalLabel">商户预存充值</h4>
      </div>
      <form id="store_charge" action="company/savestoremoney" method="post" class="form-horizontal">
        <input type="hidden" id="id1" name="id1" />
           <div class="control-group">
			<label class="control-label" for="">充值金额</label>
			<div class="controls">
			 <input type="text" id="chargemoney" name="chargemoney" placeholder="输入充值金额" value="">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="companytype">支付方式</label>
			  <div class="controls">
				<select id="paytype" name="paytype" placeholder="支付方式">
				<option value="">请选择</option>
				<option value=40>银行转账</option>
				<option value=10>现金支付</option>
			  </select>
			</div>
		</div>
		<div class="modal-footer">
		    	<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		    	<button type="button" value="Validate" class="btn btn-primary" onclick="check_charge_form()">保存</button>
		 </div>
      </form>
   </div>
 </div>
</div>
<!--表单-->
<div class="widget-box" style="overflow: auto;">
<table id="cs_table" class="datatable" style="width:2000px"></table>

</div>
<!-- 遮罩层 -->
<div class="modeloading"><img src="http://www.cr173.com/up/2013-2/20132221211655234668.gif" /></div>
<script type="text/javascript">
	var HUIMEI_ID = <%=Constant.HUIMEI_ID%>;
</script>

<script src="hanson/js/jquery.validate.js"></script>
<script src="hanson/js/select2.min.js"></script>
<!-- 消息提醒 -->
<script src="hanson/js/toastr.js"></script>
<script src="hanson/js/toastr.setting.js"></script>

<!-- 省市区控件 -->
<script src="hanson/js/provincial.data.js"></script>
<script src="hanson/js/provincial.select.js"></script>
<!-- 表格控件 -->
<script src="hanson/js/table.ajax.js" type="text/javascript" charset="utf-8"></script>
<script>
// $.fn.modal.Constructor.prototype.enforceFocus = function() {};
initProvicialSelect();
// $(document).ready(function(){
	
	
	
	
// });


$.each(province, function (k, p) { 
    var option = "<option value='" + p.ProID + "'>" + p.ProName + "</option>";
    $("#selProvinceSech").append(option);
});
$("#selProvinceSech").change(function () {
    var selValue = $(this).val(); 
    $("#selCitySech option:gt(0)").remove();
     
    $.each(city, function (k, p) { 
        if (p.ProID == selValue) {
            var option = "<option value='" + p.CityID + "'>" + p.CityName + "</option>";
            $("#selCitySech").append(option);
        }
    });
     
});
 
$("#selCitySech").change(function () {
    var selValue = $(this).val();
    $("#selDistrictSech option:gt(0)").remove(); 

    $.each(District, function (k, p) {
        if (p.CityID == selValue) {
            var option = "<option value='" + p.Id + "'>" + p.DisName + "</option>";
            $("#selDistrictSech").append(option);
        }
    }); 
});
</script>

<!-- 页面功能JS -->
<script src="hanson/js/hanson.company.js" type="text/javascript" charset="utf-8"></script>

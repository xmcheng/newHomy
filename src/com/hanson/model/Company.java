package com.hanson.model;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
public class Company implements Serializable  {
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String companyname;
	private String code;
	private java.lang.String license;
	private java.lang.String licenseimg;
	private java.lang.String address;
	private java.lang.String email;
	private java.lang.String website;
	private java.lang.String mobile;
	private java.lang.String phone;
	private String introduce;
	private java.lang.String sdesc;
	private String logo;
	private Date createtime;
	private String qrcodepath; // 二维码路径

	private Double cityPostage; // 市内邮费
	private Double provincePostage; // 省内邮费
	private Double nationPostage; // 全国邮费
	private Double preferential; // 包邮金额
	private String province;
	private String city;
	private String area;
	private Long parentid;//所属上级
	private String companytype;//商户类型
	private String tuiguangurl;

	private Integer msgtype;//消息语类型 1:自己店名 2:上级店名
	private Integer appointmentcount;//预约次数
	private String companyimg;//门头图片
	
	private Double photorate;//照片返佣比例
	private Double photoframerate;//照片框返佣比例
	private Double photowallrate;//照片墙返佣比例
	private Double photoalbumrate;//相册的返佣比例
	private Double outphotorate;//约拍的返佣比例
	private Integer isassign;//是否可以被用来指派给推广中心：0：不可以，1：可以
	private Integer photoenable;//启用相册
	private Integer photoframeenable;//启用相框
	private Integer photowallenable;//启用照片墙
	private Integer photoalbumenable;//启用相册
	private Integer outphotoenable;//启用约拍
	private Long  merchantid;//商户的qyid
	private Long  prometerid;//推广中心qyid
	private Long  distributid;//经销商的qyid
	private Integer companyfrom;//来源是为汇美：1.是; 0.否
	private String storepath;//门店路线
	private  Double lOMOcardrate;//lomo卡返佣比例
	private Integer lOMOcardable;//启用lomo卡 
	private Double deskcalendarrate;//台历返佣比例
	private Integer deskcalendarable;//启用台历
	private Double insetphotobumenrate;//插页相册返佣比例
	private Integer insetphotobumenable;//启用插页相册
	private String latitude;//经度
	private String longitude;//纬度
	private Long headoffice;//是否总店
	private Double memberrate;//会员返佣比例
	private Integer memberenable;//启用会员返佣
	private Double chargerebate;//充值折扣
	private Double chargemoney;//充值金额
	private Double leftmoney;//剩余金额
	private Double standardsum;//预存标准
	private Integer photoproduct;//照片是否有生产权限
	private Integer photoalbumproduct;//相册是否有生产权限
	private Integer photoframeproduct;//相框是否有生产权限
	private Integer isHeadStore;//是否为总店
	private Integer normalaccount;//账号是否正常	
	
	public Integer getNormalaccount() {
		return normalaccount;
	}
	public void setNormalaccount(Integer normalaccount) {
		this.normalaccount = normalaccount;
	}
	public Integer getIsHeadStore() {
		return isHeadStore;
	}
	public void setIsHeadStore(Integer isHeadStore) {
		this.isHeadStore = isHeadStore;
	}
	public Double getChargerebate() {
		return chargerebate;
	}
	public void setChargerebate(Double chargerebate) {
		this.chargerebate = chargerebate;
	}
	public Double getChargemoney() {
		return chargemoney;
	}
	public void setChargemoney(Double chargemoney) {
		this.chargemoney = chargemoney;
	}
	public Double getLeftmoney() {
		return leftmoney;
	}
	public void setLeftmoney(Double leftmoney) {
		this.leftmoney = leftmoney;
	}
	public Double getStandardsum() {
		return standardsum;
	}
	public void setStandardsum(Double standardsum) {
		this.standardsum = standardsum;
	}
	public Integer getPhotoproduct() {
		return photoproduct;
	}
	public void setPhotoproduct(Integer photoproduct) {
		this.photoproduct = photoproduct;
	}
	public Integer getPhotoalbumproduct() {
		return photoalbumproduct;
	}
	public void setPhotoalbumproduct(Integer photoalbumproduct) {
		this.photoalbumproduct = photoalbumproduct;
	}
	public Integer getPhotoframeproduct() {
		return photoframeproduct;
	}
	public void setPhotoframeproduct(Integer photoframeproduct) {
		this.photoframeproduct = photoframeproduct;
	}
	public Double getMemberrate() {
		return memberrate;
	}
	public void setMemberrate(Double memberrate) {
		this.memberrate = memberrate;
	}
	public Integer getMemberenable() {
		return memberenable;
	}
	public void setMemberenable(Integer memberenable) {
		this.memberenable = memberenable;
	}
	public Double getDeskcalendarrate() {
		return deskcalendarrate;
	}
	public void setDeskcalendarrate(Double deskcalendarrate) {
		this.deskcalendarrate = deskcalendarrate;
	}
	public Integer getDeskcalendarable() {
		return deskcalendarable;
	}
	public void setDeskcalendarable(Integer deskcalendarable) {
		this.deskcalendarable = deskcalendarable;
	}
	public Double getInsetphotobumenrate() {
		return insetphotobumenrate;
	}
	public void setInsetphotobumenrate(Double insetphotobumenrate) {
		this.insetphotobumenrate = insetphotobumenrate;
	}
	public Integer getInsetphotobumenable() {
		return insetphotobumenable;
	}
	public void setInsetphotobumenable(Integer insetphotobumenable) {
		this.insetphotobumenable = insetphotobumenable;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public Long getHeadoffice() {
		return headoffice;
	}
	public void setHeadoffice(Long headoffice) {
		this.headoffice = headoffice;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Integer getlOMOcardable() {
		return lOMOcardable;
	}
	public void setlOMOcardable(Integer lOMOcardable) {
		this.lOMOcardable = lOMOcardable;
	}
	public Double getlOMOcardrate() {
		return lOMOcardrate;
	}
	public void setlOMOcardrate(Double lOMOcardrate) {
		this.lOMOcardrate = lOMOcardrate;
	}
	public String getStorepath() {
		return storepath;
	}
	public void setStorepath(String storepath) {
		this.storepath = storepath;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public java.lang.String getLicense() {
		return license;
	}
	public void setLicense(java.lang.String license) {
		this.license = license;
	}
	public java.lang.String getLicenseimg() {
		return licenseimg;
	}
	public void setLicenseimg(java.lang.String licenseimg) {
		this.licenseimg = licenseimg;
	}
	public java.lang.String getAddress() {
		return address;
	}
	public void setAddress(java.lang.String address) {
		this.address = address;
	}
	public java.lang.String getEmail() {
		return email;
	}
	public void setEmail(java.lang.String email) {
		this.email = email;
	}
	public java.lang.String getWebsite() {
		return website;
	}
	public void setWebsite(java.lang.String website) {
		this.website = website;
	}
	public java.lang.String getMobile() {
		return mobile;
	}
	public void setMobile(java.lang.String mobile) {
		this.mobile = mobile;
	}
	public java.lang.String getPhone() {
		return phone;
	}
	public void setPhone(java.lang.String phone) {
		this.phone = phone;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public java.lang.String getSdesc() {
		return sdesc;
	}
	public void setSdesc(java.lang.String sdesc) {
		this.sdesc = sdesc;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getCreatetime() {
		SimpleDateFormat formatter; 
	    formatter = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss"); 
	    String ctime=null;
	    if(this.createtime!=null){
	    	ctime= formatter.format(this.createtime); 
	    }
	    return ctime;
		//return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getQrcodepath() {
		return qrcodepath;
	}
	public void setQrcodepath(String qrcodepath) {
		this.qrcodepath = qrcodepath;
	}
	public Double getCityPostage() {
		return cityPostage;
	}
	public void setCityPostage(Double cityPostage) {
		this.cityPostage = cityPostage;
	}
	public Double getProvincePostage() {
		return provincePostage;
	}
	public void setProvincePostage(Double provincePostage) {
		this.provincePostage = provincePostage;
	}
	public Double getNationPostage() {
		return nationPostage;
	}
	public void setNationPostage(Double nationPostage) {
		this.nationPostage = nationPostage;
	}
	public Double getPreferential() {
		return preferential;
	}
	public void setPreferential(Double preferential) {
		this.preferential = preferential;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Long getParentid() {
		return parentid;
	}
	public void setParentid(Long parentid) {
		this.parentid = parentid;
	}
	public String getCompanytype() {
		return companytype;
	}
	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}
	public String getTuiguangurl() {
		return tuiguangurl;
	}
	public void setTuiguangurl(String tuiguangurl) {
		this.tuiguangurl = tuiguangurl;
	}

	public Integer getMsgtype() {
		return msgtype;
	}
	public void setMsgtype(Integer msgtype) {
		this.msgtype = msgtype;
	}
	public Integer getAppointmentcount() {
		return appointmentcount;
	}
	public void setAppointmentcount(Integer appointmentcount) {
		this.appointmentcount = appointmentcount;
	}
	public String getCompanyimg() {
		return companyimg;
	}
	public void setCompanyimg(String companyimg) {
		this.companyimg = companyimg;
	}
	public Double getPhotorate() {
		return photorate;
	}
	public void setPhotorate(Double photorate) {
		this.photorate = photorate;
	}
	public Double getPhotoframerate() {
		return photoframerate;
	}
	public void setPhotoframerate(Double photoframerate) {
		this.photoframerate = photoframerate;
	}
	public Double getPhotowallrate() {
		return photowallrate;
	}
	public void setPhotowallrate(Double photowallrate) {
		this.photowallrate = photowallrate;
	}
	public Double getPhotoalbumrate() {
		return photoalbumrate;
	}
	public void setPhotoalbumrate(Double photoalbumrate) {
		this.photoalbumrate = photoalbumrate;
	}
	public Double getOutphotorate() {
		return outphotorate;
	}
	public void setOutphotorate(Double outphotorate) {
		this.outphotorate = outphotorate;
	}
	public Integer getIsassign() {
		return isassign;
	}
	public void setIsassign(Integer isassign) {
		this.isassign = isassign;
	}
	public Integer getPhotoenable() {
		return photoenable;
	}
	public void setPhotoenable(Integer photoenable) {
		this.photoenable = photoenable;
	}
	public Integer getPhotoframeenable() {
		return photoframeenable;
	}
	public void setPhotoframeenable(Integer photoframeenable) {
		this.photoframeenable = photoframeenable;
	}
	public Integer getPhotowallenable() {
		return photowallenable;
	}
	public void setPhotowallenable(Integer photowallenable) {
		this.photowallenable = photowallenable;
	}
	public Integer getPhotoalbumenable() {
		return photoalbumenable;
	}
	public void setPhotoalbumenable(Integer photoalbumenable) {
		this.photoalbumenable = photoalbumenable;
	}
	public Integer getOutphotoenable() {
		return outphotoenable;
	}
	public void setOutphotoenable(Integer outphotoenable) {
		this.outphotoenable = outphotoenable;
	}
	public Long getMerchantid() {
		return merchantid;
	}
	public void setMerchantid(Long merchantid) {
		this.merchantid = merchantid;
	}
	public Long getPrometerid() {
		return prometerid;
	}
	public void setPrometerid(Long prometerid) {
		this.prometerid = prometerid;
	}
	public Long getDistributid() {
		return distributid;
	}
	public void setDistributid(Long distributid) {
		this.distributid = distributid;
	}
	public Integer getCompanyfrom() {
		return companyfrom;
	}
	public void setCompanyfrom(Integer companyfrom) {
		this.companyfrom = companyfrom;
	}
	
	
	
}

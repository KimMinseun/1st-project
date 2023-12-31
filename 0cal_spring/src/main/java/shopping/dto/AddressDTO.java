package shopping.dto;

import member.dto.MemberDTO;

public class AddressDTO {

	private int del_key;
	private String receiver_name="";
	private String del_phone="";
	private String del_post="";
	private String del_address="";
	private String del_postcode="";
	private String del_detailaddress="";
	private MemberDTO memberDTO;
	private String del_reg_date="";
	private String id="";
	
	public AddressDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getDel_key() {
		return del_key;
	}

	public void setDel_key(int del_key) {
		this.del_key = del_key;
	}

	public String getReceiver_name() {
		return receiver_name;
	}

	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}

	public String getDel_phone() {
		return del_phone;
	}

	public void setDel_phone(String del_phone) {
		this.del_phone = del_phone;
	}

	public String getDel_post() {
		return del_post;
	}

	public void setDel_post(String del_post) {
		this.del_post = del_post;
	}

	public String getDel_address() {
		return del_address;
	}

	public void setDel_address(String del_address) {
		this.del_address = del_address;
	}

	public String getDel_reg_date() {
		return del_reg_date;
	}

	public void setDel_reg_date(String del_reg_date) {
		this.del_reg_date = del_reg_date;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	
	public String getDel_postcode() {
		return del_postcode;
	}

	public void setDel_postcode(String del_postcode) {
		this.del_postcode = del_postcode;
	}

	public String getDel_detailaddress() {
		return del_detailaddress;
	}

	public void setDel_detailaddress(String del_detailaddress) {
		this.del_detailaddress = del_detailaddress;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}

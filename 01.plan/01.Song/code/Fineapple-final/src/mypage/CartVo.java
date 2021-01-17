package mypage;

public class CartVo{
	private Integer code;
	private String name;
	private Integer price;
	private String description;
	private String pictureUrl;
	private String linkUrl;
	private Integer cnt; //수량

	
	
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureUrl) {
		this.pictureUrl = pictureUrl;
	}
	
	@Override 
	public String toString() {
		return "CartVo [code=" + code + ", name=" + name + ", price=" + price + ", description=" + description
                + ", pictureUrl=" + pictureUrl + ", linkUrl=" + linkUrl + "]";
	}
}

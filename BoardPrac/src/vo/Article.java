package vo;

public class Article {
	private int num;
	private String title;
	private String text;
	private String author;
	private int views;
	private String indate;
	
	public Article() {}
	
	public Article(String title, String text, String author) {
		this.num = 0;
		this.title = title;
		this.text = text;
		this.author = author;
		this.views = 0;
		this.indate = null;
	}
	public Article(int num, String title, String text, String author, int views, String indate) {
		this.num = num;
		this.title = title;
		this.text = text;
		this.author = author;
		this.views = views;
		this.indate = indate;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	@Override
	public String toString() {
		return "Article[num: " + num + ", title: " + title + ", text: " + text + ", author: " +
				author + ", views: " + views + ", indate: " + indate;
	}
}

package smp.cd.dog_main.model;

public class DogMainDTO {
	private String dog_variety;
	private String dog_weight;
	private String dog_furcolor;
	private String dog_furtype;
	private String dog_src;
	private String dog_character;
	
	public DogMainDTO() {}
	public DogMainDTO(String dog_variety, String dog_weight, String dog_furcolor, String dog_furtype, String dog_src, String dog_character) {
		this.dog_variety = dog_variety;
		this.dog_weight = dog_weight;
		this.dog_furcolor = dog_furcolor;
		this.dog_furtype = dog_furtype;
		this.dog_src = dog_src;
		this.dog_character = dog_character;
	}
	
	public String getDog_variety() {
		return dog_variety;
	}
	public void setDog_variety(String dog_variety) {
		this.dog_variety = dog_variety;
	}
	public String getDog_weight() {
		return dog_weight;
	}
	public void setDog_weight(String dog_weight) {
		this.dog_weight = dog_weight;
	}
	public String getDog_furcolor() {
		return dog_furcolor;
	}
	public void setDog_furcolor(String dog_furcolor) {
		this.dog_furcolor = dog_furcolor;
	}
	public String getDog_furtype() {
		return dog_furtype;
	}
	public void setDog_furtype(String dog_furtype) {
		this.dog_furtype = dog_furtype;
	}
	public String getDog_src() {
		return dog_src;
	}
	public void setDog_src(String dog_src) {
		this.dog_src = dog_src;
	}
	public String getDog_character() {
		return dog_character;
	}
	public void setDog_character(String dog_character) {
		this.dog_character = dog_character;
	}
	
	
}

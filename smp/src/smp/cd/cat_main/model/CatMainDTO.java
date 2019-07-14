package smp.cd.cat_main.model;

public class CatMainDTO {
	private String cat_variety;
	private String cat_weight;
	private String cat_furcolor;
	private String cat_furtype;
	private String cat_src;
	private String cat_character;
	
	public CatMainDTO() {}

	public CatMainDTO(String cat_variety, String cat_weight, String cat_furcolor, String cat_furtype, String cat_src,
			String cat_character) {
		super();
		this.cat_variety = cat_variety;
		this.cat_weight = cat_weight;
		this.cat_furcolor = cat_furcolor;
		this.cat_furtype = cat_furtype;
		this.cat_src = cat_src;
		this.cat_character = cat_character;
	}

	public String getCat_variety() {
		return cat_variety;
	}

	public void setCat_variety(String cat_variety) {
		this.cat_variety = cat_variety;
	}

	public String getCat_weight() {
		return cat_weight;
	}

	public void setCat_weight(String cat_weight) {
		this.cat_weight = cat_weight;
	}

	public String getCat_furcolor() {
		return cat_furcolor;
	}

	public void setCat_furcolor(String cat_furcolor) {
		this.cat_furcolor = cat_furcolor;
	}

	public String getCat_furtype() {
		return cat_furtype;
	}

	public void setCat_furtype(String cat_furtype) {
		this.cat_furtype = cat_furtype;
	}

	public String getCat_src() {
		return cat_src;
	}

	public void setCat_src(String cat_src) {
		this.cat_src = cat_src;
	}

	public String getCat_character() {
		return cat_character;
	}

	public void setCat_character(String cat_character) {
		this.cat_character = cat_character;
	}
}

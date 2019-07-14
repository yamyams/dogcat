package smp.cd.cat_main.model;

public class CatMainSQL {
	public static final String sqlS = "select * from CAT order by cat_variety";
	public static final String sqlSL = "select * from CAT where CAT_VARIETY LIKE ? order by CAT_VARIETY";
}

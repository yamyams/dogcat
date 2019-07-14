package smp.cd.dog_main.model;

public class DogMainSQL {
	public static final String sqlS = "select * from DOG order by DOG_VARIETY";
	public static final String sqlSL = "select * from DOG where DOG_VARIETY LIKE ? order by DOG_VARIETY";
}

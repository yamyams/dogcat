package smp.cd.login.model;

public class MemberSQL {
	public static final String sqlCheckID = "select * from member where id=?";
	public static final String sqlJoin = "insert into member values(?,?,?,?,?, 0,sysdate)";
}

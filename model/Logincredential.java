package model;

public class Logincredential 
{
	private	String uname,passswd;
//jdbc code result set for our own password
	public boolean checkLogin()
	{
		if(uname.equals("SREENI") && passswd.equals("1234"))
			return true;
		return false;
		
	}
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassswd() {
		return passswd;
	}

	public void setPassswd(String passswd) {
		this.passswd = passswd;
	}
	
}

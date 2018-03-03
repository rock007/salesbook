public class PBApplicationEntryPoint
{

	[System.Diagnostics.DebuggerStepThrough]
	[System.STAThread]
	static void Main()
	{
		c__dotnetform.ApplicationName = "dotnetform";
		Sybase.PowerBuilder.PBSessionBase.HasPBExtensions = false;
		Sybase.PowerBuilder.PBSessionBase.MainAssembly = System.Reflection.Assembly.GetExecutingAssembly();
		Sybase.PowerBuilder.Win.PBSession session = Sybase.PowerBuilder.Win.PBSession.CreateSession(
			typeof(c__dotnetform), 
			@"dotnetform.pbd");
		c__dotnetform.GetCurrentApplication().dotnetform = c__dotnetform.GetCurrentApplication();
		session.RunWinForm();
	}
}
 
//**************************************************************************
//
//                        Sybase Inc. 
//
//    THIS IS A TEMPORARY FILE GENERATED BY POWERBUILDER. IF YOU MODIFY 
//    THIS FILE, YOU DO SO AT YOUR OWN RISK. SYBASE DOES NOT PROVIDE 
//    SUPPORT FOR .NET ASSEMBLIES BUILT WITH USER-MODIFIED CS FILES. 
//
//**************************************************************************

#line 1 "d:\\sam\\code\\pb12\\salemanmis\\dotnetform.pbl\\w_main.srw"
#line hidden
#line 1 "w_main"
#line hidden
[Sybase.PowerBuilder.PBGroupAttribute("w_main",Sybase.PowerBuilder.PBGroupType.Window,"","d:\\sam\\code\\pb12\\salemanmis\\dotnetform.pbl",null,"dotnetform")]
[Sybase.PowerBuilder.PBFieldInfoCollectionAttribute("Width",3378, typeof(Sybase.PowerBuilder.PBInt),
"Height",1408, typeof(Sybase.PowerBuilder.PBInt),
"TitleBar",true, typeof(Sybase.PowerBuilder.PBBoolean),
"Title","Untitled", typeof(Sybase.PowerBuilder.PBString),
"ControlMenu",true, typeof(Sybase.PowerBuilder.PBBoolean),
"MinBox",true, typeof(Sybase.PowerBuilder.PBBoolean),
"MaxBox",true, typeof(Sybase.PowerBuilder.PBBoolean),
"Resizable",true, typeof(Sybase.PowerBuilder.PBBoolean),
"BackColor",67108864, typeof(Sybase.PowerBuilder.PBLong),
"Icon","AppIcon!", typeof(Sybase.PowerBuilder.PBString),
"Center",true, typeof(Sybase.PowerBuilder.PBBoolean))]
public class c__w_main : Sybase.PowerBuilder.Win.PBWindow
{
	#line hidden
	public c__w_main.c__st_1 st_1 = null;
	public c__w_main.c__pb_1 pb_1 = null;
	public c__w_main.c__cb_1 cb_1 = null;

	#line hidden
	[Sybase.PowerBuilder.PBEventAttribute("create")]
	public override void create()
	{
		#line hidden
		#line hidden
		this.st_1 = (c__st_1)this.CreateInstance(this, "c__st_1");
		#line hidden
		#line hidden
		this.pb_1 = (c__pb_1)this.CreateInstance(this, "c__pb_1");
		#line hidden
		#line hidden
		this.cb_1 = (c__cb_1)this.CreateInstance(this, "c__cb_1");
		#line hidden
		#line hidden
		this.Control.AssignFrom((Sybase.PowerBuilder.PBArray)( new Sybase.PowerBuilder.PBBoundedArray(typeof(Sybase.PowerBuilder.Win.PBDragObject),  new Sybase.PowerBuilder.PBArray.ArrayBounds(new int[2]{1, 3},false), new Sybase.PowerBuilder.Win.PBDragObject[3]{
		#line hidden
		(Sybase.PowerBuilder.Win.PBDragObject)(this.st_1),(Sybase.PowerBuilder.Win.PBDragObject)(this.pb_1),(Sybase.PowerBuilder.Win.PBDragObject)(this.cb_1) })));
		#line hidden
	}

	#line hidden
	[Sybase.PowerBuilder.PBEventAttribute("destroy")]
	public override void destroy()
	{
		#line hidden
		#line hidden
		Sybase.PowerBuilder.Win.PBSession.CurrentSession.DestroyObject(this.st_1);
		#line hidden
		#line hidden
		Sybase.PowerBuilder.Win.PBSession.CurrentSession.DestroyObject(this.pb_1);
		#line hidden
		#line hidden
		Sybase.PowerBuilder.Win.PBSession.CurrentSession.DestroyObject(this.cb_1);
		#line hidden
	}

	#line 1 "w_main.st_1"
	#line hidden
[Sybase.PowerBuilder.PBFieldInfoCollectionAttribute("X",1550, typeof(Sybase.PowerBuilder.PBInt),
"Y",76, typeof(Sybase.PowerBuilder.PBInt),
"Width",672, typeof(Sybase.PowerBuilder.PBInt),
"Height",76, typeof(Sybase.PowerBuilder.PBInt),
"TextSize",-12, typeof(Sybase.PowerBuilder.PBInt),
"Weight",400, typeof(Sybase.PowerBuilder.PBInt),
"FaceName","Tahoma", typeof(Sybase.PowerBuilder.PBString),
"TextColor",33554432, typeof(Sybase.PowerBuilder.PBLong),
"BackColor",67108864, typeof(Sybase.PowerBuilder.PBLong),
"Text","威威威威我人有的和", typeof(Sybase.PowerBuilder.PBString),
"FocusRectangle",false, typeof(Sybase.PowerBuilder.PBBoolean))]
	public class c__st_1 : Sybase.PowerBuilder.Win.PBStaticText
	{
		#line hidden

		void _init()
		{
			X = new Sybase.PowerBuilder.PBInt(1550);
			#line hidden
			Y = new Sybase.PowerBuilder.PBInt(76);
			#line hidden
			Width = new Sybase.PowerBuilder.PBInt(672);
			#line hidden
			Height = new Sybase.PowerBuilder.PBInt(76);
			#line hidden
			TextSize = new Sybase.PowerBuilder.PBInt(-12);
			#line hidden
			Weight = new Sybase.PowerBuilder.PBInt(400);
			#line hidden
			FontCharSet = (new Sybase.PowerBuilder.PBFontCharSetValue(Sybase.PowerBuilder.PBFontCharSet.Ansi));
			#line hidden
			FontPitch = (new Sybase.PowerBuilder.PBFontPitchValue(Sybase.PowerBuilder.PBFontPitch.Variable));
			#line hidden
			FontFamily = (new Sybase.PowerBuilder.PBFontFamilyValue(Sybase.PowerBuilder.PBFontFamily.Swiss));
			#line hidden
			FaceName = new Sybase.PowerBuilder.PBString("Tahoma");
			#line hidden
			TextColor = new Sybase.PowerBuilder.PBLong(33554432);
			#line hidden
			BackColor = new Sybase.PowerBuilder.PBLong(67108864);
			#line hidden
			Text = new Sybase.PowerBuilder.PBString("威威威威我人有的和");
			#line hidden
			FocusRectangle = new Sybase.PowerBuilder.PBBoolean(false);
			#line hidden

			OnInitialUpdate();
		}

		public c__st_1()
		{
			_init();
		}

	}


	#line 1 "w_main.pb_1"
	#line hidden
[Sybase.PowerBuilder.PBFieldInfoCollectionAttribute("X",507, typeof(Sybase.PowerBuilder.PBInt),
"Y",268, typeof(Sybase.PowerBuilder.PBInt),
"Width",110, typeof(Sybase.PowerBuilder.PBInt),
"Height",96, typeof(Sybase.PowerBuilder.PBInt),
"TabOrder",10, typeof(Sybase.PowerBuilder.PBInt),
"TextSize",-12, typeof(Sybase.PowerBuilder.PBInt),
"Weight",400, typeof(Sybase.PowerBuilder.PBInt),
"FaceName","Tahoma", typeof(Sybase.PowerBuilder.PBString),
"Text","none", typeof(Sybase.PowerBuilder.PBString),
"OriginalSize",true, typeof(Sybase.PowerBuilder.PBBoolean),
"PictureName","Animation!", typeof(Sybase.PowerBuilder.PBString))]
	public class c__pb_1 : Sybase.PowerBuilder.Win.PBPictureButton
	{
		#line hidden

		void _init()
		{
			X = new Sybase.PowerBuilder.PBInt(507);
			#line hidden
			Y = new Sybase.PowerBuilder.PBInt(268);
			#line hidden
			Width = new Sybase.PowerBuilder.PBInt(110);
			#line hidden
			Height = new Sybase.PowerBuilder.PBInt(96);
			#line hidden
			TabOrder = new Sybase.PowerBuilder.PBInt(10);
			#line hidden
			TextSize = new Sybase.PowerBuilder.PBInt(-12);
			#line hidden
			Weight = new Sybase.PowerBuilder.PBInt(400);
			#line hidden
			FontCharSet = (new Sybase.PowerBuilder.PBFontCharSetValue(Sybase.PowerBuilder.PBFontCharSet.Ansi));
			#line hidden
			FontPitch = (new Sybase.PowerBuilder.PBFontPitchValue(Sybase.PowerBuilder.PBFontPitch.Variable));
			#line hidden
			FontFamily = (new Sybase.PowerBuilder.PBFontFamilyValue(Sybase.PowerBuilder.PBFontFamily.Swiss));
			#line hidden
			FaceName = new Sybase.PowerBuilder.PBString("Tahoma");
			#line hidden
			Text = new Sybase.PowerBuilder.PBString("none");
			#line hidden
			OriginalSize = new Sybase.PowerBuilder.PBBoolean(true);
			#line hidden
			PictureName = new Sybase.PowerBuilder.PBString("Animation!");
			#line hidden
			HTextAlign = (new Sybase.PowerBuilder.PBAlignmentValue(Sybase.PowerBuilder.PBAlignment.Left));
			#line hidden

			OnInitialUpdate();
		}

		public c__pb_1()
		{
			_init();
		}

	}


	#line 1 "w_main.cb_1"
	#line hidden
[Sybase.PowerBuilder.PBFieldInfoCollectionAttribute("X",2144, typeof(Sybase.PowerBuilder.PBInt),
"Y",696, typeof(Sybase.PowerBuilder.PBInt),
"Width",457, typeof(Sybase.PowerBuilder.PBInt),
"Height",132, typeof(Sybase.PowerBuilder.PBInt),
"TabOrder",10, typeof(Sybase.PowerBuilder.PBInt),
"TextSize",-12, typeof(Sybase.PowerBuilder.PBInt),
"Weight",400, typeof(Sybase.PowerBuilder.PBInt),
"FaceName","Tahoma", typeof(Sybase.PowerBuilder.PBString),
"Text","确定", typeof(Sybase.PowerBuilder.PBString))]
	public class c__cb_1 : Sybase.PowerBuilder.Win.PBCommandButton
	{
		#line hidden

		void _init()
		{
			X = new Sybase.PowerBuilder.PBInt(2144);
			#line hidden
			Y = new Sybase.PowerBuilder.PBInt(696);
			#line hidden
			Width = new Sybase.PowerBuilder.PBInt(457);
			#line hidden
			Height = new Sybase.PowerBuilder.PBInt(132);
			#line hidden
			TabOrder = new Sybase.PowerBuilder.PBInt(10);
			#line hidden
			TextSize = new Sybase.PowerBuilder.PBInt(-12);
			#line hidden
			Weight = new Sybase.PowerBuilder.PBInt(400);
			#line hidden
			FontCharSet = (new Sybase.PowerBuilder.PBFontCharSetValue(Sybase.PowerBuilder.PBFontCharSet.Ansi));
			#line hidden
			FontPitch = (new Sybase.PowerBuilder.PBFontPitchValue(Sybase.PowerBuilder.PBFontPitch.Variable));
			#line hidden
			FontFamily = (new Sybase.PowerBuilder.PBFontFamilyValue(Sybase.PowerBuilder.PBFontFamily.Swiss));
			#line hidden
			FaceName = new Sybase.PowerBuilder.PBString("Tahoma");
			#line hidden
			Text = new Sybase.PowerBuilder.PBString("确定");
			#line hidden

			OnInitialUpdate();
		}

		public c__cb_1()
		{
			_init();
		}

	}


	void _init()
	{
		Width = new Sybase.PowerBuilder.PBInt(3378);
		#line hidden
		Height = new Sybase.PowerBuilder.PBInt(1408);
		#line hidden
		TitleBar = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		Title = new Sybase.PowerBuilder.PBString("Untitled");
		#line hidden
		ControlMenu = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		MinBox = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		MaxBox = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		Resizable = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		BackColor = new Sybase.PowerBuilder.PBLong(67108864);
		#line hidden
		Icon = new Sybase.PowerBuilder.PBString("AppIcon!");
		#line hidden
		Center = new Sybase.PowerBuilder.PBBoolean(true);
		#line hidden
		this.CreateEvent += new Sybase.PowerBuilder.PBEventHandler(this.create);
		this.DestroyEvent += new Sybase.PowerBuilder.PBEventHandler(this.destroy);
	}

	public c__w_main()
	{
		_init();
	}

}
 
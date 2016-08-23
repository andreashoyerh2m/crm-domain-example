artifact Startup 
{
    include "**/business/common/**startup**"
	
	connector default 
	{
	    include "**/SetupFactories"
	}
	
	connect to Framework
}

artifact Application
{
    include "**/ddaexample/**"
	
	apply "./layers.arc"
	
	extend Business
	{
        apply "./business.arc"
	}
	
	connect to Framework
}

artifact Framework
{
    include "**/dda/**"
	
	apply "./layers.arc"
}

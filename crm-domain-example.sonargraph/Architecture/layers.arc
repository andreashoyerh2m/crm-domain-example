

artifact Business
{
    include "**/business/**"
	
	connect to Integration
}

artifact Integration
{
    include "**/integration/**"
}

public artifact Foundation
{
    include "**/foundation/**"
}

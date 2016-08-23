exposed artifact Controller
{
    include "**/controller/**"
	connect to Domain, DataServiceInterface, Service
}

exposed artifact Data
{
    include "**/data/**"
	connect to DataServiceInterface
}

exposed artifact Domain
{
    include "**/domain/**"
	connect to DataServiceInterface
}

exposed artifact DataServiceInterface
{
    include "**/dsi/**"
}

exposed artifact Service
{
    include "**/service/**"
	
	interface default
	{
	    include all
		exclude "**/*DtoVal"
	}
}


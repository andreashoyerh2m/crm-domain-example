artifact User
{
    include "**/business/user/**"
    apply "./component.arc"
}	

artifact Contact
{
    include "**/business/contact/**"
    apply "./component.arc"
}

connection-scheme C2C
{
    connect Controller to target.Controller, target.Domain, target.Service, target.DataServiceInterface
	connect Data to target.Data, target.DataServiceInterface
	connect Domain to target.Domain, target.DataServiceInterface
	connect DataServiceInterface to target.DataServiceInterface
	connect Service to target.Service
}

artifact Request
{
    include "**/business/request/**"
    apply "./component.arc"
	
	connect to User using C2C
}


artifact Customer
{
    include "**/business/customer/**"
	apply "./component.arc"
	
//	connect to User, Contact  //simple connection

/*    connect Controller to User.Controller, User.Domain, User.Service, User.DataServiceInterface
	connect Data to User.Data, User.DataServiceInterface
	connect Domain to User.Domain, User.DataServiceInterface
	connect DataServiceInterface to User.DataServiceInterface
	connect Service to User.Service
	
	//Notice the duplication?
	connect Controller to Contact.Controller, Contact.Domain, Contact.Service, Contact.DataServiceInterface
	connect Data to Contact.Data, Contact.DataServiceInterface
	connect Domain to Contact.Domain, Contact.DataServiceInterface
	connect DataServiceInterface to Contact.DataServiceInterface
	connect Service to Contact.Service
*/	

    connect to User, Contact using C2C //using a connection scheme omits the duplication
}

artifact DistributionPartner
{
    include "**/business/distributionpartner/**"
	apply "./component.arc"
	
	connect to Customer, Request, Contact, User using C2C
}


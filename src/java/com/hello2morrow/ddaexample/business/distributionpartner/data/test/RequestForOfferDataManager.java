/**
 * 23.05.2005 17:28:23 - generated 'data-manager-test (class hierarchy)' for root class 'com.hello2morrow.ddaexample.business.request.domain.Request'
 */

package com.hello2morrow.ddaexample.business.distributionpartner.data.test;

import com.hello2morrow.dda.business.common.dsi.DataSupplierIf;
import com.hello2morrow.ddaexample.business.distributionpartner.dsi.RequestForOfferDsi;

public class RequestForOfferDataManager extends com.hello2morrow.ddaexample.business.request.data.test.RequestDataManager
        implements com.hello2morrow.ddaexample.business.distributionpartner.dsi.RequestForOfferDmi
{
    public DataSupplierIf createDataSupplier(Class dataSupplierInterfaceClass, boolean isPersistent)
    {
        assert dataSupplierInterfaceClass != null;
        assert RequestForOfferDsi.class.equals(dataSupplierInterfaceClass) : "wrong class = " + dataSupplierInterfaceClass.getName();

        DataSupplierIf created = null;

        if (isPersistent)
        {
            created = new com.hello2morrow.ddaexample.business.distributionpartner.data.test.RequestForOfferDataSupplier();
            persistentDataSupplierCreated(created);
        }
        else
        {
            created = new com.hello2morrow.ddaexample.business.distributionpartner.data.trans.RequestForOfferDataSupplier();
        }

        return created;
    }

}
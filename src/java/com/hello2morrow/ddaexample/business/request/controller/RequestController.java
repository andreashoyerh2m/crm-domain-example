package com.hello2morrow.ddaexample.business.request.controller;

import com.hello2morrow.dda.foundation.common.exception.BusinessException;
import com.hello2morrow.dda.foundation.common.exception.TechnicalException;
import com.hello2morrow.ddaexample.business.request.domain.Request;
import com.hello2morrow.ddaexample.business.request.service.RequestControllerServiceIf;
import com.hello2morrow.ddaexample.business.request.service.RequestDto;
import com.hello2morrow.ddaexample.business.user.controller.UserController;
import com.hello2morrow.ddaexample.business.user.service.ContextDto;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * @dda-generate-service
 */
public final class RequestController implements RequestControllerServiceIf
{
    private static Logger s_Logger = LogManager.getLogger(RequestController.class);

    /**
     * @dda-service RETRIEVE_REQUESTS_CMD = "Request::RetrieveRequestsCmd"
     */
    public RequestDto[] retrieveRequests(ContextDto contextDto) throws BusinessException, TechnicalException
    {
        UserController.checkPermission(contextDto, RequestControllerServiceIf.RETRIEVE_REQUESTS_CMD);
        Request[] requests = Request.findAllRequests();
        return RequestDtoMapper.createDtosFromDomainObjects(requests);
    }
}
package com.dongweirj.controller;

import com.dongweirj.dto.CBoardActionLog;
import com.dongweirj.dto.User;
import com.dongweirj.services.AuthenticationService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Pattern;

/**
 * Created by zyong on 2017/9/28.
 */
public class BaseController {

    Logger LOG = LoggerFactory.getLogger(this.getClass());

    @Autowired
    protected AuthenticationService authenticationService;

    protected User user;

    @Value("${log.negativeFilter}")
    protected String negativeFilter;

    @Value("${log.positveFilter}")
    protected String positveFilter;

    @ModelAttribute
    public void initalAuthUser(HttpServletRequest request) {
        String url = request.getRequestURL().toString();
        user = authenticationService.getCurrentUser();
        String log = new CBoardActionLog(user, url).toString();

        boolean isNegtiveMatch = false, isPositveMatch = true;

        if (StringUtils.isNotBlank(positveFilter)) {
            isPositveMatch = Pattern.compile(positveFilter).matcher(log).find();
        }

        if (StringUtils.isNotBlank(negativeFilter)) {
            isNegtiveMatch = Pattern.compile(negativeFilter).matcher(log).find();
        }

        if (user != null && !isNegtiveMatch && isPositveMatch) {
            LOG.info(log);
        }
    }
}

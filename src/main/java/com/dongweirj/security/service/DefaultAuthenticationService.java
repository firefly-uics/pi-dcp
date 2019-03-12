package com.dongweirj.security.service;

import com.dongweirj.services.AuthenticationService;
import com.dongweirj.dto.User;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * Created by dw on 2016/12/14.
 */
public class DefaultAuthenticationService implements AuthenticationService {

    @Override
    public User getCurrentUser() {
        SecurityContext context = SecurityContextHolder.getContext();
        if (context == null) {
            return null;
        }
        Authentication authentication = context.getAuthentication();
        if (authentication == null) {
            return null;
        }
        User user = (User) authentication.getPrincipal();
        if (user == null) {
            return null;
        }
        return user;
    }

}

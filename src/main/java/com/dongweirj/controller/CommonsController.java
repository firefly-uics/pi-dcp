package com.dongweirj.controller;


import com.alibaba.fastjson.JSONObject;
import com.dongweirj.dto.DashboardMenu;
import com.dongweirj.dto.User;
import com.dongweirj.services.AdminSerivce;
import com.dongweirj.services.MenuService;
import com.dongweirj.services.PersistService;
import com.dongweirj.services.ServiceStatus;
import com.dongweirj.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by dw on 2016/7/25.
 */
@RestController
@RequestMapping("/commons")
public class CommonsController extends BaseController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private AdminSerivce adminSerivce;

    @Autowired
    private PersistService persistService;

    @RequestMapping(value = "/getUserDetail")
    public User getUserDetail() {
        return authenticationService.getCurrentUser();
    }

    @RequestMapping(value = "/getMenuList")
    public List<DashboardMenu> getMenuList() {
        return menuService.getMenuList();
    }

    @RequestMapping(value = "/changePwd")
    public ServiceStatus changePwd(@RequestParam(name = "curPwd") String curPwd, @RequestParam(name = "newPwd") String newPwd, @RequestParam(name = "cfmPwd") String cfmPwd) {
        return adminSerivce.changePwd(user.getUserId(), curPwd, newPwd, cfmPwd);
    }

    @RequestMapping(value = "/persist")
    public String persist(@RequestBody String dataStr) {
        JSONObject data = JSONObject.parseObject(dataStr);
        return persistService.persistCallback(data.getString("persistId"), data.getJSONObject("data"));
    }

}

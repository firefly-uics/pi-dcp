package com.dongweirj.dao;

import com.dongweirj.pojo.DashboardUser;
import com.dongweirj.pojo.DashboardUserRole;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by dw on 2016/12/2.
 */
@Repository
public interface UserDao {
    int save(DashboardUser user);

    int deleteUserById(String userId);

    List<DashboardUser> getUserList();

    int update(DashboardUser user);

    int saveUserRole(List<DashboardUserRole> list);

    int deleteUserRole(Map<String, Object> param);

    List<DashboardUserRole> getUserRoleList();

    DashboardUser getUserByLoginName(String loginName);

    int saveNewUser(String userId, String user_name, String loginName);

    int updateUserPassword(String userId, String passowrd, String newPassword);

    int deleteUserRoleByRoleId(String roleId);

    int deleteUserRoles(Map<String, Object> param);

}

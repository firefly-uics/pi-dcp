package com.dongweirj.dao;

import com.dongweirj.pojo.DashboardRole;
import com.dongweirj.pojo.DashboardRoleRes;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dw on 2016/12/6.
 */
@Repository
public interface RoleDao {
    int save(DashboardRole role);

    List<DashboardRole> getRoleList(String userId);

    List<DashboardRole> getRoleListAll();

    int update(DashboardRole role);

    List<DashboardRoleRes> getRoleResList();

    int saveRoleRes(DashboardRoleRes item);

    int deleteRoleRes(String roleId);

    int deleteRoleResByResId(Long resId,String resType);

    List<Long> getRoleResByResIds(String userId, String resType);

    DashboardRole getRole(String roleId);

    int deleteRole(String roleId);

    List<DashboardRoleRes> getUserRoleResList(String userId, String resType);
}

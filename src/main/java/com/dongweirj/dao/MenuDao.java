package com.dongweirj.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dw on 2016/12/21.
 */
@Repository
public interface MenuDao {
    List<Long> getMenuIdByUserRole(String userId);

    List<Long> getMenuIdByRoleAdmin(String userId);
}

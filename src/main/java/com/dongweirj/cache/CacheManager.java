package com.dongweirj.cache;

/**
 * Created by dw on 2016/11/7.
 */
public interface CacheManager<T> {

    void put(String key, T data, long expire);

    T get(String key);

    void remove(String key);
}

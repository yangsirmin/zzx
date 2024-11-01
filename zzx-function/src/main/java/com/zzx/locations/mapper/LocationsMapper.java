package com.zzx.locations.mapper;

import java.util.List;
import com.zzx.locations.domain.Locations;

/**
 * 领取地点Mapper接口
 * 
 * @author ybc
 * @date 2024-10-18
 */
public interface LocationsMapper 
{
    /**
     * 查询领取地点
     * 
     * @param id 领取地点主键
     * @return 领取地点
     */
    public Locations selectLocationsById(Long id);

    /**
     * 查询领取地点列表
     * 
     * @param locations 领取地点
     * @return 领取地点集合
     */
    public List<Locations> selectLocationsList(Locations locations);

    /**
     * 新增领取地点
     * 
     * @param locations 领取地点
     * @return 结果
     */
    public int insertLocations(Locations locations);

    /**
     * 修改领取地点
     * 
     * @param locations 领取地点
     * @return 结果
     */
    public int updateLocations(Locations locations);

    /**
     * 删除领取地点
     * 
     * @param id 领取地点主键
     * @return 结果
     */
    public int deleteLocationsById(Long id);

    /**
     * 批量删除领取地点
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLocationsByIds(Long[] ids);
}

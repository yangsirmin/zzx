package com.zzx.locations.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zzx.locations.mapper.LocationsMapper;
import com.zzx.locations.domain.Locations;
import com.zzx.locations.service.ILocationsService;

/**
 * 领取地点Service业务层处理
 * 
 * @author ybc
 * @date 2024-10-18
 */
@Service
public class LocationsServiceImpl implements ILocationsService 
{
    @Autowired
    private LocationsMapper locationsMapper;

    /**
     * 查询领取地点
     * 
     * @param id 领取地点主键
     * @return 领取地点
     */
    @Override
    public Locations selectLocationsById(Long id)
    {
        return locationsMapper.selectLocationsById(id);
    }

    /**
     * 查询领取地点列表
     * 
     * @param locations 领取地点
     * @return 领取地点
     */
    @Override
    public List<Locations> selectLocationsList(Locations locations)
    {
        return locationsMapper.selectLocationsList(locations);
    }

    /**
     * 新增领取地点
     * 
     * @param locations 领取地点
     * @return 结果
     */
    @Override
    public int insertLocations(Locations locations)
    {
        return locationsMapper.insertLocations(locations);
    }

    /**
     * 修改领取地点
     * 
     * @param locations 领取地点
     * @return 结果
     */
    @Override
    public int updateLocations(Locations locations)
    {
        return locationsMapper.updateLocations(locations);
    }

    /**
     * 批量删除领取地点
     * 
     * @param ids 需要删除的领取地点主键
     * @return 结果
     */
    @Override
    public int deleteLocationsByIds(Long[] ids)
    {
        return locationsMapper.deleteLocationsByIds(ids);
    }

    /**
     * 删除领取地点信息
     * 
     * @param id 领取地点主键
     * @return 结果
     */
    @Override
    public int deleteLocationsById(Long id)
    {
        return locationsMapper.deleteLocationsById(id);
    }
}
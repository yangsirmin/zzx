package com.zzx.categories.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zzx.categories.mapper.CategoriesMapper;
import com.zzx.categories.domain.Categories;
import com.zzx.categories.service.ICategoriesService;

/**
 * 物品种类Service业务层处理
 * 
 * @author ybc
 * @date 2024-10-18
 */
@Service
public class CategoriesServiceImpl implements ICategoriesService 
{
    @Autowired
    private CategoriesMapper categoriesMapper;

    /**
     * 查询物品种类
     * 
     * @param id 物品种类主键
     * @return 物品种类
     */
    @Override
    public Categories selectCategoriesById(Long id)
    {
        return categoriesMapper.selectCategoriesById(id);
    }

    /**
     * 查询物品种类列表
     * 
     * @param categories 物品种类
     * @return 物品种类
     */
    @Override
    public List<Categories> selectCategoriesList(Categories categories)
    {
        return categoriesMapper.selectCategoriesList(categories);
    }

    /**
     * 新增物品种类
     * 
     * @param categories 物品种类
     * @return 结果
     */
    @Override
    public int insertCategories(Categories categories)
    {
        return categoriesMapper.insertCategories(categories);
    }

    /**
     * 修改物品种类
     * 
     * @param categories 物品种类
     * @return 结果
     */
    @Override
    public int updateCategories(Categories categories)
    {
        return categoriesMapper.updateCategories(categories);
    }

    /**
     * 批量删除物品种类
     * 
     * @param ids 需要删除的物品种类主键
     * @return 结果
     */
    @Override
    public int deleteCategoriesByIds(Long[] ids)
    {
        return categoriesMapper.deleteCategoriesByIds(ids);
    }

    /**
     * 删除物品种类信息
     * 
     * @param id 物品种类主键
     * @return 结果
     */
    @Override
    public int deleteCategoriesById(Long id)
    {
        return categoriesMapper.deleteCategoriesById(id);
    }
}
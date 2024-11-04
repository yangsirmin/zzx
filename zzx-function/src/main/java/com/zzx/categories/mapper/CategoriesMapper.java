package com.zzx.categories.mapper;

import java.util.ArrayList;
import java.util.List;
import com.zzx.categories.domain.Categories;

/**
 * 物品种类Mapper接口
 * 
 * @author ybc
 * @date 2024-10-18
 */
public interface CategoriesMapper 
{
    /**
     * 查询物品种类
     * 
     * @param id 物品种类主键
     * @return 物品种类
     */
    public Categories selectCategoriesById(Long id);

    /**
     * 查询物品种类列表
     * 
     * @param categories 物品种类
     * @return 物品种类集合
     */
    public List<Categories> selectCategoriesList(Categories categories);

    /**
     * 新增物品种类
     * 
     * @param categories 物品种类
     * @return 结果
     */
    public int insertCategories(Categories categories);

    /**
     * 修改物品种类
     * 
     * @param categories 物品种类
     * @return 结果
     */
    public int updateCategories(Categories categories);

    /**
     * 删除物品种类
     * 
     * @param id 物品种类主键
     * @return 结果
     */
    public int deleteCategoriesById(Long id);

    /**
     * 批量删除物品种类
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCategoriesByIds(Long[] ids);

    ArrayList<Categories> selectListByIds(Long[] ids);
}

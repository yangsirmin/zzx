package com.zzx.items.mapper;

import java.util.List;
import com.zzx.items.domain.Items;
import org.apache.ibatis.annotations.Select;

/**
 * 物品管理Mapper接口
 *
 * @author ybc
 * @date 2024-11-01
 */
public interface ItemsMapper
{
    /**
     * 查询物品管理
     *
     * @param id 物品管理主键
     * @return 物品管理
     */
    public Items selectItemsById(Long id);

    /**
     * 查询物品管理列表
     *
     * @param items 物品管理
     * @return 物品管理集合
     */
    public List<Items> selectItemsList(Items items);

    /**
     * 新增物品管理
     *
     * @param items 物品管理
     * @return 结果
     */
    public int insertItems(Items items);

    /**
     * 修改物品管理
     *
     * @param items 物品管理
     * @return 结果
     */
    public int updateItems(Items items);

    /**
     * 删除物品管理
     *
     * @param id 物品管理主键
     * @return 结果
     */
    public int deleteItemsById(Long id);

    /**
     * 批量删除物品管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteItemsByIds(Long[] ids);

    /**
     * 根据种类名称查询是否有关联物品
     * @param category
     * @return
     */
    @Select("select count(id) from ybc_zzx.tb_items where category = #{category}")
    int selectByCategoriesName(String category);


    /**
     * 根据多个种类名称查询是否有关联物品
     * @param categoryNames
     * @return
     */
    int selectByCategoriesNames(String[] categoryNames);

    /**
     * 根据地点名称查询是否有关联物品
     * @param localationsNames
     * @return
     */
    int selectByLocationsNames(String[] localationsNames);

    /**
     * 通过ids批量查询物品
     * @param ids
     * @return
     */
    int[] selectItemsByIds(Long[] ids);
}

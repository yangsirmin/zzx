package com.zzx.items.service;

import java.util.List;
import com.zzx.items.domain.Items;

/**
 * 物品管理Service接口
 *
 * @author ybc
 * @date 2024-11-01
 */
public interface IItemsService
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
     * 批量删除物品管理
     *
     * @param ids 需要删除的物品管理主键集合
     * @return 结果
     */
    public int deleteItemsByIds(Long[] ids);

    /**
     * 删除物品管理信息
     *
     * @param id 物品管理主键
     * @return 结果
     */
    public int deleteItemsById(Long id);

    /**
     * 查询用户物品列表
     * @param items
     * @return
     */
    List<Items> selectUserItemsList(Items items);
}

package com.zzx.items.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zzx.items.mapper.ItemsMapper;
import com.zzx.items.domain.Items;
import com.zzx.items.service.IItemsService;

/**
 * 物品管理Service业务层处理
 *
 * @author ybc
 * @date 2024-11-01
 */
@Service
public class ItemsServiceImpl implements IItemsService
{
    @Autowired
    private ItemsMapper itemsMapper;

    /**
     * 查询物品管理
     *
     * @param id 物品管理主键
     * @return 物品管理
     */
    @Override
    public Items selectItemsById(Long id)
    {
        return itemsMapper.selectItemsById(id);
    }

    /**
     * 查询物品管理列表
     *
     * @param items 物品管理
     * @return 物品管理
     */
    @Override
    public List<Items> selectItemsList(Items items)
    {
        return itemsMapper.selectItemsList(items);
    }

    /**
     * 新增物品管理
     *
     * @param items 物品管理
     * @return 结果
     */
    @Override
    public int insertItems(Items items)
    {
        return itemsMapper.insertItems(items);
    }

    /**
     * 修改物品管理
     *
     * @param items 物品管理
     * @return 结果
     */
    @Override
    public int updateItems(Items items)
    {
        return itemsMapper.updateItems(items);
    }

    /**
     * 批量删除物品管理
     *
     * @param ids 需要删除的物品管理主键
     * @return 结果
     */
    @Override
    public int deleteItemsByIds(Long[] ids)
    {
        return itemsMapper.deleteItemsByIds(ids);
    }

    /**
     * 删除物品管理信息
     *
     * @param id 物品管理主键
     * @return 结果
     */
    @Override
    public int deleteItemsById(Long id)
    {
        return itemsMapper.deleteItemsById(id);
    }
}

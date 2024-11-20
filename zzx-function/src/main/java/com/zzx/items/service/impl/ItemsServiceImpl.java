package com.zzx.items.service.impl;

import java.util.List;

import com.zzx.common.core.domain.entity.SysUser;
import com.zzx.common.core.domain.model.LoginUser;
import com.zzx.common.enums.AppHttpCodeEnum;
import com.zzx.common.exception.ServiceException;
import com.zzx.handle.CustomException;
import com.zzx.handle.ExceptionCatch;
import com.zzx.system.mapper.SysUserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @Autowired
    private SysUserRoleMapper sysUserRoleMapper;

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
        LoginUser sysUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        items.setUserId(sysUser.getUserId());
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
        LoginUser loginUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        int roleId = sysUserRoleMapper.selectUserRoleByUserId(loginUser.getUserId());
        if (roleId == 1 || roleId == 100){
            return itemsMapper.updateItems(items);
        }
        if (items.getUserId() != loginUser.getUserId()){
            throw new RuntimeException("请误随意修改他人的物品");
        }
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
        LoginUser loginUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        int roleId = sysUserRoleMapper.selectUserRoleByUserId(loginUser.getUserId());
        if (roleId == 1 || roleId == 100){
            return itemsMapper.deleteItemsByIds(ids);
        }
        int[] userIds = itemsMapper.selectItemsByIds(ids);
        for (int userId : userIds) {
            if (userId != loginUser.getUserId()) {
                throw new RuntimeException("请勿随意删除他人的物品");
//                throw new CustomException(AppHttpCodeEnum.PLEASE_DEL_OR_EDIT_ITEMS);
            }
        }
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

    /**
     * 查询用户物品列表
     *
     * @param items
     * @return
     */
    @Override
    public List<Items> selectUserItemsList(Items items) {
        LoginUser sysUser = (LoginUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        items.setUserId(sysUser.getUserId());
        return itemsMapper.selectItemsList(items);
    }
}

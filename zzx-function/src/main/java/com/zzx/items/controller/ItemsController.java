package com.zzx.items.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.zzx.common.annotation.Log;
import com.zzx.common.core.controller.BaseController;
import com.zzx.common.core.domain.AjaxResult;
import com.zzx.common.enums.BusinessType;
import com.zzx.items.domain.Items;
import com.zzx.items.service.IItemsService;
import com.zzx.common.utils.poi.ExcelUtil;
import com.zzx.common.core.page.TableDataInfo;

/**
 * 物品管理Controller
 *
 * @author ybc
 * @date 2024-11-01
 */
@RestController
@Api(tags = "物品管理")
@RequestMapping("/items/items")
public class ItemsController extends BaseController
{
    @Autowired
    private IItemsService itemsService;

    /**
     * 查询物品管理列表
     */
    @ApiOperation("查询物品管理列表")
    @PreAuthorize("@ss.hasPermi('items:items:list')")
    @GetMapping("/list")
    public TableDataInfo list(Items items)
    {
        startPage();
        List<Items> list = itemsService.selectItemsList(items);
        return getDataTable(list);
    }

    /**
     * 查询用户物品管理列表
     */
    @ApiOperation("查询物品管理列表")
    @PreAuthorize("@ss.hasPermi('items:items:list')")
    @GetMapping("user/list")
    public TableDataInfo userList(Items items)
    {
        startPage();
        List<Items> list = itemsService.selectUserItemsList(items);
        return getDataTable(list);
    }

    /**
     * 导出物品管理列表
     */
    @ApiOperation("导出物品管理列表")
    @PreAuthorize("@ss.hasPermi('items:items:export')")
    @Log(title = "物品管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Items items)
    {
        List<Items> list = itemsService.selectItemsList(items);
        ExcelUtil<Items> util = new ExcelUtil<Items>(Items.class);
        util.exportExcel(response, list, "物品管理数据");
    }

    /**
     * 获取物品管理详细信息
     */
    @ApiOperation("获取物品管理详细信息")
    @PreAuthorize("@ss.hasPermi('items:items:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(itemsService.selectItemsById(id));
    }

    /**
     * 新增物品管理
     */
    @ApiOperation("新增物品管理")
    @PreAuthorize("@ss.hasPermi('items:items:add')")
    @Log(title = "物品管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Items items)
    {
        return toAjax(itemsService.insertItems(items));
    }

    /**
     * 修改物品管理
     */
    @ApiOperation("修改物品管理")
    @PreAuthorize("@ss.hasPermi('items:items:edit')")
    @Log(title = "物品管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Items items)
    {
        return toAjax(itemsService.updateItems(items));
    }

    /**
     * 删除物品管理
     */
    @ApiOperation("删除物品管理")
    @PreAuthorize("@ss.hasPermi('items:items:remove')")
    @Log(title = "物品管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(itemsService.deleteItemsByIds(ids));
    }
}

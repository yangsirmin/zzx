package com.zzx.categories.controller;

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
import com.zzx.categories.domain.Categories;
import com.zzx.categories.service.ICategoriesService;
import com.zzx.common.utils.poi.ExcelUtil;
import com.zzx.common.core.page.TableDataInfo;

/**
 * 物品种类Controller
 * 
 * @author ybc
 * @date 2024-10-18
 */
@RestController
@Api(tags = "物品种类")
@RequestMapping("/categories/categories")
public class CategoriesController extends BaseController
{
    @Autowired
    private ICategoriesService categoriesService;

    /**
     * 查询物品种类列表
     */
    @ApiOperation("查询物品种类列表")
    @PreAuthorize("@ss.hasPermi('categories:categories:list')")
    @GetMapping("/list")
    public TableDataInfo list(Categories categories)
    {
        startPage();
        List<Categories> list = categoriesService.selectCategoriesList(categories);
        return getDataTable(list);
    }

    /**
     * 导出物品种类列表
     */
    @ApiOperation("导出物品种类列表")
    @PreAuthorize("@ss.hasPermi('categories:categories:export')")
    @Log(title = "物品种类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Categories categories)
    {
        List<Categories> list = categoriesService.selectCategoriesList(categories);
        ExcelUtil<Categories> util = new ExcelUtil<Categories>(Categories.class);
        util.exportExcel(response, list, "物品种类数据");
    }

    /**
     * 获取物品种类详细信息
     */
    @ApiOperation("获取物品种类详细信息")
    @PreAuthorize("@ss.hasPermi('categories:categories:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(categoriesService.selectCategoriesById(id));
    }

    /**
     * 新增物品种类
     */
    @ApiOperation("新增物品种类")
    @PreAuthorize("@ss.hasPermi('categories:categories:add')")
    @Log(title = "物品种类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Categories categories)
    {
        return toAjax(categoriesService.insertCategories(categories));
    }

    /**
     * 修改物品种类
     */
    @ApiOperation("修改物品种类")
    @PreAuthorize("@ss.hasPermi('categories:categories:edit')")
    @Log(title = "物品种类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Categories categories)
    {
        return toAjax(categoriesService.updateCategories(categories));
    }

    /**
     * 删除物品种类
     */
    @ApiOperation("删除物品种类")
    @PreAuthorize("@ss.hasPermi('categories:categories:remove')")
    @Log(title = "物品种类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(categoriesService.deleteCategoriesByIds(ids));
    }
}

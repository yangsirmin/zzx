package com.zzx.locations.controller;

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
import com.zzx.locations.domain.Locations;
import com.zzx.locations.service.ILocationsService;
import com.zzx.common.utils.poi.ExcelUtil;
import com.zzx.common.core.page.TableDataInfo;

/**
 * 领取地点Controller
 * 
 * @author ybc
 * @date 2024-10-18
 */
@RestController
@Api(tags = "领取地点")
@RequestMapping("/locations/locations")
public class LocationsController extends BaseController
{
    @Autowired
    private ILocationsService locationsService;

    /**
     * 查询领取地点列表
     */
    @ApiOperation("查询领取地点列表")
    @PreAuthorize("@ss.hasPermi('locations:locations:list')")
    @GetMapping("/list")
    public TableDataInfo list(Locations locations)
    {
        startPage();
        List<Locations> list = locationsService.selectLocationsList(locations);
        return getDataTable(list);
    }

    /**
     * 导出领取地点列表
     */
    @ApiOperation("导出领取地点列表")
    @PreAuthorize("@ss.hasPermi('locations:locations:export')")
    @Log(title = "领取地点", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Locations locations)
    {
        List<Locations> list = locationsService.selectLocationsList(locations);
        ExcelUtil<Locations> util = new ExcelUtil<Locations>(Locations.class);
        util.exportExcel(response, list, "领取地点数据");
    }

    /**
     * 获取领取地点详细信息
     */
    @ApiOperation("获取领取地点详细信息")
    @PreAuthorize("@ss.hasPermi('locations:locations:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(locationsService.selectLocationsById(id));
    }

    /**
     * 新增领取地点
     */
    @ApiOperation("新增领取地点")
    @PreAuthorize("@ss.hasPermi('locations:locations:add')")
    @Log(title = "领取地点", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Locations locations)
    {
        return toAjax(locationsService.insertLocations(locations));
    }

    /**
     * 修改领取地点
     */
    @ApiOperation("修改领取地点")
    @PreAuthorize("@ss.hasPermi('locations:locations:edit')")
    @Log(title = "领取地点", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Locations locations)
    {
        return toAjax(locationsService.updateLocations(locations));
    }

    /**
     * 删除领取地点
     */
    @ApiOperation("删除领取地点")
    @PreAuthorize("@ss.hasPermi('locations:locations:remove')")
    @Log(title = "领取地点", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(locationsService.deleteLocationsByIds(ids));
    }
}

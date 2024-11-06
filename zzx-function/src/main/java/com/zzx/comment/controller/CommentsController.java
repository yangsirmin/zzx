package com.zzx.comment.controller;

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
import com.zzx.comment.domain.Comments;
import com.zzx.comment.service.ICommentsService;
import com.zzx.common.utils.poi.ExcelUtil;
import com.zzx.common.core.page.TableDataInfo;

/**
 * 用户评论Controller
 *
 * @author ybc
 * @date 2024-11-04
 */
@RestController
@Api(tags = "用户评论")
@RequestMapping("/comment/comment")
public class CommentsController extends BaseController
{
    @Autowired
    private ICommentsService commentsService;

    /**
     * 查询用户评论列表
     */
    @ApiOperation("查询用户评论列表")
    @PreAuthorize("@ss.hasPermi('comment:comments:list')")
    @GetMapping("/list")
    public TableDataInfo list(Comments comments)
    {
        startPage();
        List<Comments> list = commentsService.selectCommentsList(comments);
        return getDataTable(list);
    }

    /**
     * 导出用户评论列表
     */
    @ApiOperation("导出用户评论列表")
    @PreAuthorize("@ss.hasPermi('comment:comments:export')")
    @Log(title = "用户评论", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Comments comments)
    {
        List<Comments> list = commentsService.selectCommentsList(comments);
        ExcelUtil<Comments> util = new ExcelUtil<Comments>(Comments.class);
        util.exportExcel(response, list, "用户评论数据");
    }

    /**
     * 获取用户评论详细信息
     */
    @ApiOperation("获取用户评论详细信息")
    @PreAuthorize("@ss.hasPermi('comment:comments:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(commentsService.selectCommentsById(id));
    }

    /**
     * 新增用户评论
     */
    @ApiOperation("新增用户评论")
    @PreAuthorize("@ss.hasPermi('comment:comments:add')")
    @Log(title = "用户评论", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Comments comments)
    {
        return toAjax(commentsService.insertComments(comments));
    }

    /**
     * 修改用户评论
     */
    @ApiOperation("修改用户评论")
    @PreAuthorize("@ss.hasPermi('comment:comments:edit')")
    @Log(title = "用户评论", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Comments comments)
    {
        return toAjax(commentsService.updateComments(comments));
    }

    /**
     * 删除用户评论
     */
    @ApiOperation("删除用户评论")
    @PreAuthorize("@ss.hasPermi('comment:comments:remove')")
    @Log(title = "用户评论", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(commentsService.deleteCommentsByIds(ids));
    }
}

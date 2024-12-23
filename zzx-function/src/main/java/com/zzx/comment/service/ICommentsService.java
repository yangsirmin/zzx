package com.zzx.comment.service;

import java.util.List;
import com.zzx.comment.domain.Comments;

/**
 * 用户评论Service接口
 *
 * @author ybc
 * @date 2024-11-04
 */
public interface ICommentsService
{
    /**
     * 查询用户评论
     *
     * @param id 用户评论主键
     * @return 用户评论
     */
    public Comments selectCommentsById(Long id);

    /**
     * 查询用户评论列表
     *
     * @param comments 用户评论
     * @return 用户评论集合
     */
    public List<Comments> selectCommentsList(Comments comments);

    /**
     * 新增用户评论
     *
     * @param comments 用户评论
     * @return 结果
     */
    public int insertComments(Comments comments);

    /**
     * 修改用户评论
     *
     * @param comments 用户评论
     * @return 结果
     */
    public int updateComments(Comments comments);

    /**
     * 批量删除用户评论
     *
     * @param ids 需要删除的用户评论主键集合
     * @return 结果
     */
    public int deleteCommentsByIds(Long[] ids);

    /**
     * 删除用户评论信息
     *
     * @param id 用户评论主键
     * @return 结果
     */
    public int deleteCommentsById(Long id);
}

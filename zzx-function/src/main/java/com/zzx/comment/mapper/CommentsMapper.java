package com.zzx.comment.mapper;

import java.util.List;
import com.zzx.comment.domain.Comments;

/**
 * 用户评论Mapper接口
 * 
 * @author ybc
 * @date 2024-10-18
 */
public interface CommentsMapper 
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
     * 删除用户评论
     * 
     * @param id 用户评论主键
     * @return 结果
     */
    public int deleteCommentsById(Long id);

    /**
     * 批量删除用户评论
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteCommentsByIds(Long[] ids);
}

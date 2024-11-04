package com.zzx.comment.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zzx.comment.mapper.CommentsMapper;
import com.zzx.comment.domain.Comments;
import com.zzx.comment.service.ICommentsService;

/**
 * 用户评论Service业务层处理
 *
 * @author ybc
 * @date 2024-11-04
 */
@Service
public class CommentsServiceImpl implements ICommentsService
{
    @Autowired
    private CommentsMapper commentsMapper;

    /**
     * 查询用户评论
     *
     * @param id 用户评论主键
     * @return 用户评论
     */
    @Override
    public Comments selectCommentsById(Long id)
    {
        return commentsMapper.selectCommentsById(id);
    }

    /**
     * 查询用户评论列表
     *
     * @param comments 用户评论
     * @return 用户评论
     */
    @Override
    public List<Comments> selectCommentsList(Comments comments)
    {
        return commentsMapper.selectCommentsList(comments);
    }

    /**
     * 新增用户评论
     *
     * @param comments 用户评论
     * @return 结果
     */
    @Override
    public int insertComments(Comments comments)
    {
        return commentsMapper.insertComments(comments);
    }

    /**
     * 修改用户评论
     *
     * @param comments 用户评论
     * @return 结果
     */
    @Override
    public int updateComments(Comments comments)
    {
        return commentsMapper.updateComments(comments);
    }

    /**
     * 批量删除用户评论
     *
     * @param ids 需要删除的用户评论主键
     * @return 结果
     */
    @Override
    public int deleteCommentsByIds(Long[] ids)
    {
        return commentsMapper.deleteCommentsByIds(ids);
    }

    /**
     * 删除用户评论信息
     *
     * @param id 用户评论主键
     * @return 结果
     */
    @Override
    public int deleteCommentsById(Long id)
    {
        return commentsMapper.deleteCommentsById(id);
    }
}

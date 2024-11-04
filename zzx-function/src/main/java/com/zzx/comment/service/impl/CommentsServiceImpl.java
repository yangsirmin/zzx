package com.zzx.comment.service.impl;

import java.util.List;

import com.zzx.common.core.domain.entity.SysUser;
import com.zzx.system.mapper.SysUserMapper;
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

    @Autowired
    private SysUserMapper userMapper;
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
        List<Comments> commentsList = commentsMapper.selectCommentsList(comments);
        Long[] userIds = new Long[commentsList.size()];
        for (int i = 0; i < commentsList.size(); i++) {
            userIds[i] = commentsList.get(i).getUserId();
        }
        //查询用户信息
        SysUser[] users = userMapper.selectUserByIds(userIds);
        //把用户头像和昵称设置进去
        for (int i = 0; i < commentsList.size(); i++) {
            for (int j = 0; j < users.length; j++) {
                if (commentsList.get(i).getUserId().equals(users[j].getUserId())){
                    commentsList.get(i).setNikeName(users[j].getNickName());
                    commentsList.get(i).setAvatar(users[j].getAvatar());
                }
            }
        }
        return commentsList;
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

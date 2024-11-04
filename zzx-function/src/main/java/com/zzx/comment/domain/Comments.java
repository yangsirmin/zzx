package com.zzx.comment.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.zzx.common.annotation.Excel;
import com.zzx.common.core.domain.BaseEntity;

/**
 * 用户评论对象 tb_comments
 *
 * @author ybc
 * @date 2024-11-04
 */
public class Comments extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 评论ID，自动增长 */
    private Long id;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String content;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date createdAt;

    /** 更新时间 */
    private Date updatedAt;

    /** 外键关联用户表 */
    private Long userId;

    /**
     * 用户昵称
     */
    private String nikeName;

    /**
     * 用户头像
     * @param id
     */
    private String avatar;
    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setContent(String content)
    {
        this.content = content;
    }

    public String getContent()
    {
        return content;
    }
    public void setCreatedAt(Date createdAt)
    {
        this.createdAt = createdAt;
    }

    public Date getCreatedAt()
    {
        return createdAt;
    }
    public void setUpdatedAt(Date updatedAt)
    {
        this.updatedAt = updatedAt;
    }

    public Date getUpdatedAt()
    {
        return updatedAt;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("content", getContent())
                .append("createdAt", getCreatedAt())
                .append("updatedAt", getUpdatedAt())
                .append("userId", getUserId())
                .toString();
    }

    public String getNikeName() {
        return nikeName;
    }

    public void setNikeName(String nikeName) {
        this.nikeName = nikeName;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}

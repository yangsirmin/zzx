package com.zzx.items.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.zzx.common.annotation.Excel;
import com.zzx.common.core.domain.BaseEntity;

/**
 * 物品管理对象 tb_items
 *
 * @author ybc
 * @date 2024-11-01
 */
public class Items extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品ID，自动增长 */
    private Long id;

    /** 物品名称 */
    @Excel(name = "物品名称")
    private String itemName;

    /** 物品种类 */
    @Excel(name = "物品种类")
    private String category;

    /** 物品描述 */
    @Excel(name = "物品描述")
    private String description;

    /** 发现地点 */
    @Excel(name = "发现地点")
    private String locationFound;

    /** 发现日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发现日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date dateFound;

    /** 物品状态 */
    @Excel(name = "物品状态")
    private Long status;

    /** 创建时间 */
    private Date createdAt;

    /** 更新时间 */
    private Date updatedAt;

    /** 外键关联用户表 */
    private Long userId;

    /** 图片 */
    @Excel(name = "图片")
    private String image;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setItemName(String itemName)
    {
        this.itemName = itemName;
    }

    public String getItemName()
    {
        return itemName;
    }
    public void setCategory(String category)
    {
        this.category = category;
    }

    public String getCategory()
    {
        return category;
    }
    public void setDescription(String description)
    {
        this.description = description;
    }

    public String getDescription()
    {
        return description;
    }
    public void setLocationFound(String locationFound)
    {
        this.locationFound = locationFound;
    }

    public String getLocationFound()
    {
        return locationFound;
    }
    public void setDateFound(Date dateFound)
    {
        this.dateFound = dateFound;
    }

    public Date getDateFound()
    {
        return dateFound;
    }
    public void setStatus(Long status)
    {
        this.status = status;
    }

    public Long getStatus()
    {
        return status;
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
    public void setImage(String image)
    {
        this.image = image;
    }

    public String getImage()
    {
        return image;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("itemName", getItemName())
                .append("category", getCategory())
                .append("description", getDescription())
                .append("locationFound", getLocationFound())
                .append("dateFound", getDateFound())
                .append("status", getStatus())
                .append("createdAt", getCreatedAt())
                .append("updatedAt", getUpdatedAt())
                .append("userId", getUserId())
                .append("image", getImage())
                .toString();
    }
}

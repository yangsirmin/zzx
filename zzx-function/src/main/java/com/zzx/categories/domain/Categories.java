package com.zzx.categories.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.zzx.common.annotation.Excel;
import com.zzx.common.core.domain.BaseEntity;

/**
 * 物品种类对象 tb_categories
 *
 * @author ybc
 * @date 2024-10-18
 */
public class Categories extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 类别ID，自动增长 */
    private Long id;

    /** 物品种类 */
    @Excel(name = "物品种类")
    private String categoryName;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setCategoryName(String categoryName)
    {
        this.categoryName = categoryName;
    }

    public String getCategoryName()
    {
        return categoryName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("categoryName", getCategoryName())
            .toString();
    }
}

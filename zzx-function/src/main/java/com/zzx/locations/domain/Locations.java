package com.zzx.locations.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.zzx.common.annotation.Excel;
import com.zzx.common.core.domain.BaseEntity;

/**
 * 领取地点对象 tb_locations
 * 
 * @author ybc
 * @date 2024-10-18
 */
public class Locations extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 地点ID，自动增长 */
    private Long id;

    /** 地点名称 */
    @Excel(name = "地点名称")
    private String name;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String address;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("address", getAddress())
            .toString();
    }
}

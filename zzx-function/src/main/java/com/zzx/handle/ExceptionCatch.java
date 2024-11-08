package com.zzx.handle;


import com.zzx.common.core.domain.AjaxResult;
import com.zzx.common.enums.AppHttpCodeEnum;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice  //控制器增强类
public class ExceptionCatch {

    /**
     * 处理不可控异常
     * @param e
     * @return
     */
    @ExceptionHandler(Exception.class)
    @ResponseBody
    public AjaxResult exception(Exception e){
        e.printStackTrace();
        return AjaxResult.error(AppHttpCodeEnum.SERVER_ERROR);
//        return AjaxResult.error(AppHttpCodeEnum.MATERIAL_ITEMS_DEL_FAIL);
    }

    /**
     * 处理可控异常  自定义异常
     * @param e
     * @return
     */
    @ExceptionHandler(value = CustomException.class)
    @ResponseBody
    public AjaxResult exception(CustomException e){
        return AjaxResult.error(e.getAppHttpCodeEnum());
    }
}

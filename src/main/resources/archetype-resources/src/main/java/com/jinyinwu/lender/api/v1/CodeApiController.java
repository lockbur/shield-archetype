package com.jinyinwu.lender.api.v1;

import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * 字典code
 * Created by wangkun23 on 2017/5/8.
 */
@RestController
@RequestMapping("/api/v1/codes")
public class CodeApiController {

    /**
     * http://localhost:8080/api/v1/codes/43/codevalues
     *
     * @param codeId
     * @return
     */
    @RequestMapping("/{codeId}/codevalues")
    public ResponseData codevalues(@PathVariable("codeId") Integer codeId) {
        ResponseData result = ResponseData.success();
        return result;
    }
}

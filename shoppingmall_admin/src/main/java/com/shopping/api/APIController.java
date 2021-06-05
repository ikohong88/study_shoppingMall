package com.shopping.api;

import java.util.LinkedHashMap;
import java.util.Map;

import com.shopping.service.SellerService;
import com.shopping.vo.SellerInfoVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class APIController {
    @Autowired
    SellerService s_service;

    @PostMapping("/seller/regist")
    public Map<String, Object> postSellerRegist(
        @RequestBody SellerInfoVO vo
    ) {
        Map<String,Object> resultMap = new LinkedHashMap<String,Object>();
        s_service.insertSeller(vo);
        System.out.println(vo);
        return resultMap;
    }
}

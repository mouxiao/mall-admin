package com.mall.platform.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
public class IndexClass {

    @RequestMapping({"","/menu"})
    public List<String> getMenu(){
        String arr [] = new String[]{"菜单一","菜单二"};

        return  Arrays.asList(arr);
    }

}

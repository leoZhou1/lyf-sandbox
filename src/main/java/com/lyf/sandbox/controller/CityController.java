package com.lyf.sandbox.controller;

import com.lyf.sandbox.domain.ApiInfo;
import com.lyf.sandbox.domain.City;
import com.lyf.sandbox.service.ApiInfoService;
import com.lyf.sandbox.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CityController {

    @Autowired
    private CityService cityService;
    @Autowired
    private ApiInfoService apiInfoService;

    @RequestMapping(value = "/api/city/{id}", method = RequestMethod.GET)
    public String findOneCity(Model model, @PathVariable("id") Long id) {
        model.addAttribute("city", cityService.findCityById(id));
        return "city";
    }

    @RequestMapping(value = "/api/city", method = RequestMethod.GET)
    public String findAllCity(Model model) {
        List<City> cityList = cityService.findAllCity();
        List<ApiInfo> list  = apiInfoService.getApiInfoList();
        model.addAttribute("cityList",cityList);
        model.addAttribute("apiList",list);
        return "cityList";
    }
}

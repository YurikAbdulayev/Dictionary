package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import services.DictionaryService;

/**
 * Created by anri on 30.04.16.
 */
@Controller
@RequestMapping(value = "/test")
public class TestController {

    @Autowired
    DictionaryService dictionaryService;

    @RequestMapping(method = RequestMethod.GET)
    public String getAllInfTest(ModelMap model) {
        model.addAttribute("words", dictionaryService.getWords());

        return "test";
    }

}

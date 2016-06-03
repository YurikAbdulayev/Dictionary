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
@RequestMapping(value = "/dictionary")
public class TestController {

    @Autowired
    DictionaryService dictionaryService;

//    @RequestMapping(method = RequestMethod.GET, value = "/{id}")
//    public String getAllInfTest(ModelMap model,@PathVariable int id) {
//        model.addAttribute("words", dictionaryService.getWords());
//
//        return "redirect:/test";
//    }Вытягивать по id


//    @RequestMapping(method = RequestMethod.GET, value = "/{id}")
//    public String getAllInfTest(ModelMap model,@RequestParam String param) {
//        model.addAttribute("words", dictionaryService.getWords());
//
//        return "redirect:/test";
////    }вытягивать по по куску
//@RequestMapping(method = RequestMethod.GET, value = "/{id}")
//    public String getAllInfTest(ModelMap model, Word word) {
//        model.addAttribute("words", dictionaryService.getWords());
//
//        return "redirect:/test";
//    }
    @RequestMapping(method = RequestMethod.GET)
    public String getAllInfTest(ModelMap model) {
        model.addAttribute("words", dictionaryService.getWords());

        return "redirect:/test";
    }

}

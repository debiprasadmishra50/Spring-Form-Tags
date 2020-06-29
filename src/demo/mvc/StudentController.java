package demo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		// Create Student Object
		Student theStudent = new Student();
		
		// add object to model
		model.addAttribute("student", theStudent);
		
		return "showform";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		
		//log the input data
		System.out.println("Name : "+theStudent.getFirstName()+" "+theStudent.getLastName());
		System.out.println(theStudent.getCountry());
		System.out.println(theStudent.getFavouriteLanguage());
		return "studentconfirmation";
	}
}

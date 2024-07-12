package cz.czechitas.java2webapps.ukol5.registration;

import jakarta.validation.Valid;
import jakarta.validation.ValidationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Random;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

    private final Random random = new Random();

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("formular");
        modelAndView.addObject("form", new RegistrationForm());
        return modelAndView;
    }

    @PostMapping("/")
    public Object formular(@Valid @ModelAttribute("form") RegistrationForm form, BindingResult bindingResult) {

        try {
            form.getVek();
        } catch (ValidationException e) {
            bindingResult.addError(new FieldError("e", "datumNarozeni", e.getMessage()));
        }

        if (bindingResult.hasErrors()) {
            return "/formular";
        }
        int kodObjednavky = Math.abs(random.nextInt(100000));

        return new ModelAndView("/objednano")
                .addObject("kod", kodObjednavky)
                .addObject("formData", form);
    }

}

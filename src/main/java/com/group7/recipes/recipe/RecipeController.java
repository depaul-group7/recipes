package com.group7.recipes.recipe;

import jakarta.servlet.http.HttpSession;

import java.util.List;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.group7.recipes.security.User;
import com.group7.recipes.security.UserDetailsImpl;
import com.group7.recipes.security.UserRepository;
import com.group7.recipes.security.UserRole;
import com.group7.recipes.security.UserRoleRepository;
import com.group7.recipes.security.UserRoleType;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping
@Log4j2
public class RecipeController {
    @Autowired
    private RecipeRepository repo;
    @Autowired
    private UserRepository userRepo;
    @Autowired
    private UserRoleRepository userRoleRepo;

    @GetMapping("/")
    public String list(Model model, HttpSession session) {
        // just show public recipes
        List<Recipe> list = repo.findByIsPrivate(false);
        log.info("length of the list: " + list.size());
        boolean isAdmin = isAdmin();
        log.info("isAdmin:" + isAdmin);
        model.addAttribute("recipes", list);
        model.addAttribute("isAdmin", isAdmin);
        // model.addAttribute("isCreatorOrAdmin", isCreatorOrAdmin);

        return "recipe/overview";
    }

    public boolean isAdmin() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetailsImpl userImpl = (UserDetailsImpl) auth.getPrincipal();
        long userId = userImpl.getId();
        User user = userRepo.findById(userId).orElse(null);
        Set roleSet = user.getRoles();
        UserRole adminRole = userRoleRepo.findByName(UserRoleType.ROLE_ADMIN).orElse(null);
        log.info("roleSet:" + roleSet);
        boolean isAdmin = roleSet.contains(adminRole);
        log.info("isAdmin:" + isAdmin);
        return isAdmin;
    }

    public boolean isCreator(Recipe recipe) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetailsImpl userImpl = (UserDetailsImpl) auth.getPrincipal();
        long userId = userImpl.getId();
        User user = userRepo.findById(userId).orElse(null);
        boolean isCreator = user.getId() == userId;
        log.info("isCreator:" + isCreator);
        return isCreator;
    }

    @GetMapping("/recipeoftag")
    public String listByTag(@RequestParam int[] tagids, Model model, HttpSession session) {
        // just show public recipes
        for (int i = 0; i < tagids.length; i++) {
            log.info("tagids index " + i + ": " + tagids[i]);
        }
        List<Recipe> list = repo.findByIsPrivate(false);
        for (int tagid: tagids) {
            list = list.stream().filter(recipe -> (recipe.getRecipetags().stream().anyMatch(tag -> (tag.getTags().getTag_id() == tagid)))).collect(Collectors.toList());
        }
        log.info("length of the list: " + list.size());
        boolean isAdmin = isAdmin();
        log.info("isAdmin:" + isAdmin);
        model.addAttribute("recipes", list);
        model.addAttribute("isAdmin", isAdmin);
        // model.addAttribute("isCreatorOrAdmin", isCreatorOrAdmin);

        return "recipe/overview";
    }

    // show recipes belong to the user
    @GetMapping("/recipe/userpage")
    public String PersonalList(Model model, HttpSession session) {
        // just show public recipes
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetailsImpl userImpl = (UserDetailsImpl) auth.getPrincipal();
        long userId = userImpl.getId();
        log.info("User name: " + userImpl.getUsername());
        User user = userRepo.findById(userId).orElse(null);
        log.info("User id: " + user.getId());
        List<Recipe> list = repo.findByCreator(user);
        log.info("length of the list: " + list.size());
        model.addAttribute("recipes", list);
        if (list.size() == 0) {
            return "recipe/noRecipePage";
        }
        return "recipe/overview";
    }

    @GetMapping("/recipe/{id}")
    public String detail(@PathVariable("id") Long id, Model model, HttpSession session) {
        Recipe recipe = repo.findById(id).orElse(null);
        boolean isAdmin = isAdmin();
        boolean isCreator = isCreator(recipe);
        model.addAttribute("recipe", recipe);
        model.addAttribute("showDelete", isAdmin || isCreator);
        return "recipe/detail";
    }

    @GetMapping("/recipe/delete/{id}")
    public String delete(@PathVariable("id") Long id, Model model, HttpSession session) {
        repo.deleteById(id);
        return "redirect:/";
    }

}

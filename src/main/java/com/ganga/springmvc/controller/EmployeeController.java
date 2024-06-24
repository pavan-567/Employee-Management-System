package com.ganga.springmvc.controller;

import com.ganga.springmvc.dao.EmployeeDAO;
import com.ganga.springmvc.entity.Employee;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {

    private EmployeeDAO employeeDAO;

    @Autowired
    public EmployeeController(EmployeeDAO employeeDAO) {
        this.employeeDAO = employeeDAO;
    }

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/employees")
    public String employees(Model model) {
        List<Employee> employees = employeeDAO.getEmployees();
        model.addAttribute("employees", employees);
        model.addAttribute("employeesCount", employees.size());
        model.addAttribute("temp", 14);
        return "employees";
    }

    @GetMapping("/create")
    public String createEmployee(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee-form";
    }

    @PostMapping("/process")
    public String processEmployee(@Valid @ModelAttribute Employee employee, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println(bindingResult.getAllErrors());
            System.out.println("==============================");
            return "employee-form";
        }
        employeeDAO.createEmployee(employee);
        return "redirect:/employees";
    }

    @GetMapping("/edit/{id}")
    public String editEmployee(@PathVariable("id") int id, Model model) {
        Employee employee = employeeDAO.getEmployee(id);

        model.addAttribute("employee", employee);
        return "employee-form";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable("id") int id) {
        employeeDAO.deleteEmployee(id);
        System.out.println("I am Here!");
        return "redirect:/employees";
    }
}

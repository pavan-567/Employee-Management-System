package com.ganga.springmvc.controller;

import com.ganga.springmvc.dao.EmployeeDAO;
import com.ganga.springmvc.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
        System.out.println(employees);
        model.addAttribute("employees", employees);
        return "employees";
    }
}

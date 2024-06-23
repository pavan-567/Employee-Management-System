package com.ganga.springmvc.dao;

import com.ganga.springmvc.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> getEmployees();
}

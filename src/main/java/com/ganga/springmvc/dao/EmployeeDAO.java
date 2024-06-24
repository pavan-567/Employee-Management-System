package com.ganga.springmvc.dao;

import com.ganga.springmvc.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    List<Employee> getEmployees();
    void createEmployee(Employee employee);
    Employee getEmployee(int id);
    void deleteEmployee(int id);
}

package com.ganga.springmvc.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "first_name")
    @NotNull(message = " Is Required")
    @NotBlank(message = " First Name Cannot Be Empty")
    @Size(min = 3, message = " First Name Must Be Above 3 Characters")
    private String firstName;

    @Column(name = "last_name")
    @NotNull(message = "Is Required")
    @NotBlank(message = "Last Name Cannot Be Empty")
    @Size(min = 3, message = "Last Name Must Be Above 3 Characters")
    private String lastName;

    @Column(name = "email")
    @NotNull(message = "Is Required")
    @Pattern(regexp = "^[a-zA-Z0-9_.±]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$", message = "Invalid Email")
    private String email;

    @Column(name = "gender")
    @NotNull(message = "Is Required")
    private String gender;

    @Column(name = "designation")
    @NotBlank(message = " Is Required")
    @Size(min = 3,message = " Should Be Above 3 Letters")
    private String designation;

    @Column(name = "salary")
    @NotBlank(message = "Is Required")
    @Size(min = 3,message = " Should Be Above 3 Letters")
    private String salary;

    @Column(name = "address")
    @NotBlank(message = "Is Required")
    @Size(min = 3,message = " Should Be Above 3 Letters")
    private String address;


    public Employee(int id, String firstName, String lastName, String email, String gender, String designation, String salary, String address) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.designation = designation;
        this.salary = salary;
        this.address = address;
    }

    public Employee(String firstName, String lastName, String email, String gender, String designation, String salary, String address) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.gender = gender;
        this.designation = designation;
        this.salary = salary;
        this.address = address;
    }

    public Employee() {
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", gender='" + gender + '\'' +
                ", designation='" + designation + '\'' +
                ", salary='" + salary + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

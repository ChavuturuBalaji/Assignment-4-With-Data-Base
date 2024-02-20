package org.example.Assignment4.Service;

import org.example.Assignment4.Model.Employee;

import java.util.List;


public interface EmpSerInter {
    public String add(Employee employee);
    public Employee update(Employee employee);
    public Employee getEmployee(int id);
    public Employee delete(int id);
    public List<Employee> employees();
    public List<Employee> deleteByName(String name);

}

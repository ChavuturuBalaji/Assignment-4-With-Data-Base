package org.example.Assignment4.Service.Impl;

import org.example.Assignment4.Model.Employee;
import org.example.Assignment4.Repository.EmpRepo;
import org.example.Assignment4.Service.EmpSerInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class EmpSerImpl implements EmpSerInter {

    @Autowired
    EmpRepo empRepo;

    public EmpSerImpl() {
    }

    @Override
    public Employee add(Employee employee) {
        if(empRepo.existsById(employee.getId())){
            return null;
        }
        return empRepo.save(employee);
    }

    @Override
    public Employee update(Employee employee) {
        return empRepo.save(employee);
    }

    @Override
    public Employee getEmployee(int id) {
        if(empRepo.existsById(id)){
            return empRepo.findById(id).get();
        }
        return null;
    }

    @Override
    public Employee delete(int id) {
        if(empRepo.existsById(id)){
            Employee emp = empRepo.findById(id).get();
            empRepo.deleteById(id);
            return  emp;
        }
        return null;
    }

    @Override
    public List<Employee> employees() {
        return empRepo.findAll();
    }
}

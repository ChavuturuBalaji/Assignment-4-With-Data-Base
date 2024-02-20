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
    public String add(Employee employee) {
        try {
            int i = Integer.parseInt(String.valueOf(employee.getId()));
            System.out.println("i:- "+ i);
        }
        catch (NumberFormatException e){
            return "invalid";
        }
        if(empRepo.existsById(employee.getId())){
            return "duplicate";
        }
        else if (employees().stream().anyMatch(i -> i.getName().equalsIgnoreCase(employee.getName()))) {
            return "notAdded";
        }
        else if (employee == null || employee.getId() <= 0 || employee.getRole().isBlank() || employee.getName().isBlank() || employee.getSalary()<10000) {
            return "null";
        }

        System.out.println("5");
        empRepo.save(employee);
        return "added";
    }

    @Override
    public Employee update(Employee employee) {
        Employee empUpdate = empRepo.findById(employee.getId()).get();
        empUpdate.setName(employee.getName());
        empUpdate.setRole(employee.getRole());
        empUpdate.setSalary(employee.getSalary());
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

    @Override
    public List<Employee> deleteByName(String name) {
        List<Employee> emplDeleteByName = empRepo.findAll().stream().filter(i -> i.getName().equalsIgnoreCase(name)).toList();

        if(emplDeleteByName.size() == 1){
            int id = emplDeleteByName.stream().findFirst().get().getId();
            empRepo.deleteById(id);
            return emplDeleteByName;
        }
        return emplDeleteByName;
    }


}

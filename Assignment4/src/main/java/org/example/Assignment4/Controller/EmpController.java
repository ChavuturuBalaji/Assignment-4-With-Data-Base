package org.example.Assignment4.Controller;

import org.example.Assignment4.Model.Employee;
import org.example.Assignment4.Service.Impl.EmpSerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class EmpController {
    @Autowired
    EmpSerImpl empSer;

    @RequestMapping("/home")
    public String home(){
        return "home";
    }

    @RequestMapping("/add")
    public String add(ModelMap model){
        Employee employee = new Employee();
        model.put("employee",employee);
        return "add";
    }

    @RequestMapping("/get")
    public String get(){
        return "get";
    }

    @RequestMapping("/delete")
    public String delete(){
        return "delete";
    }

    @RequestMapping("/update")
    public String update(){
        return "update";
    }

    @RequestMapping("/updateDetails")
    public String updateDetails(@RequestParam("id") int id, ModelMap model){
        Employee empUpd = empSer.getEmployee(id);
        model.put("empUpd",empUpd);
        return "updateDetails";
    }


    @PostMapping("/store")
    public String add(@ModelAttribute("employee")  @RequestBody Employee employee, ModelMap model){
        Employee emp = empSer.add(employee);
        if(emp==null){
            return "notAdded";
        }
        model.put("emp",emp);
        return "added";
    }

    @GetMapping("/Employee/delete")
    public String delete(@RequestParam("id") int id,ModelMap model){
        Employee empDel = empSer.delete(id);
        model.put("empDel",empDel);
        return "deleted";
    }

    @GetMapping("/Employee/get")
    public String get(@RequestParam("id") int id, ModelMap model){
        Employee empGet = empSer.getEmployee(id);
        model.put("empGet",empGet);
        return "found";
    }


    @GetMapping("/all")
    public String getAll(ModelMap model){
        List<Employee> employees = empSer.employees();
        model.put("employees",employees);
        return "all";
    }

    @PostMapping("/Employee/update")
    public String update(@ModelAttribute("empUpd")@RequestBody Employee employee,ModelMap model){
        Employee empUpdate  = empSer.getEmployee(employee.getId());
        empUpdate.setName(employee.getName());
        empUpdate.setRole(employee.getRole());
        empUpdate.setSalary(employee.getSalary());
        model.put("empUpdate",empUpdate);
        System.out.println(empUpdate.getName() + " " + empUpdate.getId());
        empSer.update(empUpdate);
        return "updated";
    }

}

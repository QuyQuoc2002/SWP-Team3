/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dao.StaffDAO;
import entity.Staff;
import java.util.List;

/**
 *
 * @author DELL
 */
public class StaffService {

    private StaffDAO staffDAO = new StaffDAO();

    public List<Staff> getAll(int apartmentId) {
        return staffDAO.getAll(apartmentId);
    }

    public Staff getOne(int staffId) {
        return staffDAO.getOne(staffId);
    }

    public boolean update(Staff obj, int staffId) {
        return staffDAO.update(obj, staffId);
    }
    
    public boolean delete(int staffId) {
        return staffDAO.delete(staffId);
    }
}

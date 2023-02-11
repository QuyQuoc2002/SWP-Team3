/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

/**
 *
 * @author Laputa
 */

import dao.RoomDAO;
import entity.Room;
import java.util.List;

public class RoomService {
    private RoomDAO roomDAO = new RoomDAO();
    
    public List<Room> getAll(int floorId, int apartmentId) {
        return roomDAO.getAll(floorId,apartmentId);
    }
    
    public List<Room> getAll( int apartmentId) {
        return roomDAO.getAll(apartmentId);
    }
    
    public Room getOne(int roomId, int apartmentId) {
        return roomDAO.getOne(roomId,apartmentId);
    }
    
    public boolean add(Room obj) {
        return roomDAO.add(obj);
    }
    
    public boolean updateRooms(List<Room> list) {
        return roomDAO.updateRooms(list);
    }
    
    public boolean delete(int roomId, int floorId) {
        return roomDAO.delete(roomId, floorId);
    }
    
}
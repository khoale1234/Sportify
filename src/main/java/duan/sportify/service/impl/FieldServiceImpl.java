package duan.sportify.service.impl;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import duan.sportify.dao.FieldDAO;
import duan.sportify.dao.SportTypeDAO;
import duan.sportify.entities.Field;
import duan.sportify.entities.Sporttype;
import duan.sportify.service.DistanceService;
import duan.sportify.service.FieldService;


@SuppressWarnings("unused")
@Service
public class FieldServiceImpl implements FieldService{
	@Autowired
	SportTypeDAO sportTypeDAO;
	@Autowired
	FieldDAO fieldDAO;
	@Autowired
    private DistanceService distanceService;
	@Override
	public List<Field> findAll() {
		// TODO Auto-generated method stub
		return fieldDAO.findAll();
	}
	@Override
	public Field findById(Integer id) {
		// TODO Auto-generated method stub
		return fieldDAO.findById(id).get();
	}
	@Override
	public List<Field> findBySporttypeId(String cid) {
		// TODO Auto-generated method stub
		return fieldDAO.findBySporttypeId(cid);
	}
	@Override
	public Field create(Field fields) {
		// TODO Auto-generated method stub
		return fieldDAO.save(fields);
	}

	@Override
	public Field update(Field fields) {
		// TODO Auto-generated method stub
		return fieldDAO.save(fields);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		fieldDAO.deleteById(id);
	}
	@Override
	public List<Field> findSearch(String dateInput, String categorySelect, Integer shiftSelect) {
		// TODO Auto-generated method stub
		return fieldDAO.findSearch(dateInput, categorySelect, shiftSelect);
	}
	@Override
	public List<Field> findFieldById(Integer id) {
		// TODO Auto-generated method stub
		return fieldDAO.findFieldById(id);
	}
	@Override
	public String findNameSporttypeById(Integer id) {
		// TODO Auto-generated method stub
		return fieldDAO.findNameSporttypeById(id);
	}
	@Override
	public String findIdSporttypeById(Integer id) {
		// TODO Auto-generated method stub
		return fieldDAO.findIdSporttypeById(id);
	}
	@Override
	public List<Field> findBySporttypeIdlimit3(String cid) {
		// TODO Auto-generated method stub
		return fieldDAO.findBySporttypeIdlimit3(cid);
	}
	@Override
	public Boolean checkAvailableByTimeAndDate(String fieldName, int shiftId, LocalDate playDate){
		Field field=fieldDAO.findAvailableFieldsByShiftAndDate(fieldName,shiftId,playDate);
		if (field != null) {
			return true;
		}
		return false;
	}
	@Override
	public Field findByFieldName(String fieldName) {
		// TODO Auto-generated method stub
		Field fieldByName= fieldDAO.findFieldByNamefield(fieldName);
		return fieldByName;
	}
	@Override 
	public List<Field> suggestFieldsByHistory(String username){
		return fieldDAO.findSuggestedFieldsByUsername(username);
	}
	@Override
	public List<Field> findPopularFields(){
		return fieldDAO.findPopularFields();
	}
	@Override
    public List<Field> findFieldsNearUser(double userLat, double userLon, double maxDistance, String sportType) {
		Sporttype s = sportTypeDAO.findByCategoryname(sportType);
		if (s == null) {
			return new ArrayList<>(); // Trả về danh sách rỗng nếu không tìm thấy loại thể thao
		}
        List<Field> allFields = fieldDAO.findBySporttypeId(s.getSporttypeid()); // Lấy tất cả các sân theo loại thể thao
		if (allFields.isEmpty()) {
			return new ArrayList<>(); // Trả về danh sách rỗng nếu không tìm thấy sân nào
		}
        List<Field> nearbyFields = new ArrayList<>();

        for (Field field : allFields) {
            double distance = distanceService.calculateDistance(userLat, userLon, field.getLatitude(), field.getLongitude());
            if (distance <= maxDistance) { // Chỉ lấy các sân trong khoảng cách tối đa
                field.setDistance(distance); // Lưu khoảng cách vào đối tượng Field
                nearbyFields.add(field);
            }
        }

        // Sắp xếp danh sách sân theo khoảng cách tăng dần
        nearbyFields.sort(Comparator.comparingDouble(Field::getDistance));
        return nearbyFields;
    }
}

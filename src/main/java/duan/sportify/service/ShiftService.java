package duan.sportify.service;

import java.sql.Time;
import java.time.LocalTime;
import java.util.List;

import org.springframework.stereotype.Service;

import duan.sportify.entities.Shifts;


@Service
public interface ShiftService {
	
	Shifts create(Shifts shifts);

	Shifts update(Shifts shifts);

	void delete(Integer id);
	
	Shifts findById(Integer id);

	List<Shifts> findAll();
	List<Shifts> findShiftById(Integer id);
	List<Shifts> findShiftDate(Integer id,String date);
	
	List<Shifts> findShiftsByName(String name);
	Shifts findShiftByName(String name);
	Shifts findShiftByTime(LocalTime inputTime);
}

package duan.sportify.dao;

import java.sql.Time;
import java.time.LocalTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import duan.sportify.entities.Shifts;

public interface ShiftDAO extends JpaRepository<Shifts, Integer>{
		@Query(value="select * from shifts where shifts.shiftid LIKE ?1",nativeQuery = true)
		List<Shifts> findShiftById(Integer id);
		
		@Query(value="select * from shifts where nameshift LIKE :name",nativeQuery = true)
		List<Shifts> findShiftsByName(String name);
		@Query(value="SELECT * FROM shifts s WHERE s.shiftid NOT IN ( SELECT b.shiftid FROM bookingdetails b WHERE b.fieldid = :id AND b.playdate = :date )",nativeQuery = true)
		List<Shifts> findShiftDate(Integer id,String date);
		@Query(value="select * from shifts where nameshift LIKE :name",nativeQuery = true)
		Shifts findShiftByName(String name);
		@Query("SELECT s FROM Shifts s WHERE :inputTime >= s.starttime AND :inputTime <= s.endtime")
		Shifts findShiftsByTime(@Param("inputTime") LocalTime inputTime);
}



package duan.sportify.dao;

import java.util.List;
import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import duan.sportify.entities.Categories;

public interface CategoryDAO extends JpaRepository<Categories, Integer>{
	// Viết theo kiểu tối giản để gọi truy vấn tìm theo id
	Categories findByCategoryid(Integer categoryid);
	// Tìm kiếm danh mục trong quản trị
	@Query(value = "SELECT * FROM categories WHERE (categoryname LIKE CONCAT('%',:categoryname,'%') OR :categoryname IS NULL)", nativeQuery = true)
	List<Categories> searchCategoryAdmin(@Param("categoryname") Optional<String> categoryname);
}
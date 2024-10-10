package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import klu.model.Courses;
import klu.model.StudentCourseMapping;

public interface StudentCourseMappingRepository extends JpaRepository<StudentCourseMapping, Long>{
	@Query("select c from Courses c join StudentCourseMapping scm on c.courseid = scm.course.courseid where scm.student.id = :studentId")
	public List<Courses> findCoursesByStudentId(@Param("studentId") long studentId);


}

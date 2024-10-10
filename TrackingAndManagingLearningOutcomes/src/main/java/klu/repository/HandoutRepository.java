package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.Courses;
import klu.model.Handout;

public interface HandoutRepository extends JpaRepository<Handout, Long> {
    List<Handout> findByCourse(Courses course);
}

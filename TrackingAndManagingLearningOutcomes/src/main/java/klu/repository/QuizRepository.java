package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.Courses;
import klu.model.Quiz;

public interface QuizRepository extends JpaRepository<Quiz, Long> {
    List<Quiz> findByCourse(Courses course);
}

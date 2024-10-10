package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import klu.model.Courses;
import klu.model.Quiz;
import klu.repository.QuizRepository;
import klu.repository.CourseRepository;
import org.springframework.http.ResponseEntity;

@RestController
@RequestMapping("/quiz")
public class QuizController {

    @Autowired
    private QuizRepository quizRepository;

    @Autowired
    private CourseRepository courseRepository;

    @PostMapping("/add")
    public ResponseEntity<Quiz> addQuiz(@RequestBody Quiz quiz) {
        Courses course = courseRepository.findById(quiz.getCourse().getCourseid()).orElse(null);
        if (course == null) {
            return ResponseEntity.notFound().build();
        }

        quiz.setCourse(course);
        Quiz savedQuiz = quizRepository.save(quiz);
        return ResponseEntity.ok(savedQuiz);
    }
}

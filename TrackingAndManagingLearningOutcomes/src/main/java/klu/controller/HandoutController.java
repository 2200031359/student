package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import klu.model.Courses;
import klu.model.Handout;
import klu.repository.HandoutRepository;
import klu.repository.CourseRepository;
import org.springframework.http.ResponseEntity;

@RestController
@RequestMapping("/handout")
public class HandoutController {

    @Autowired
    private HandoutRepository handoutRepository;

    @Autowired
    private CourseRepository courseRepository;

    @PostMapping("/add")
    public ResponseEntity<Handout> addHandout(@RequestBody Handout handout) {
        Courses course = courseRepository.findById(handout.getCourse().getCourseid()).orElse(null);
        if (course == null) {
            return ResponseEntity.notFound().build();
        }

        handout.setCourse(course);
        Handout savedHandout = handoutRepository.save(handout);
        return ResponseEntity.ok(savedHandout);
    }
}

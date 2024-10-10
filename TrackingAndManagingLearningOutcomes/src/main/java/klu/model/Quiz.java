package klu.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Table;

@Entity
@Table(name = "quizzes")
public class Quiz {

    @Id
    @Column(name = "quizid")
    private Long quizid;

    @ManyToOne
    @JoinColumn(name = "courseid")
    private Courses course;

    @Column(name = "quizname")
    private String quizname;

    @Column(name = "quizdescription")
    private String quizdescription;

    // Getters and Setters
    public Long getQuizid() {
        return quizid;
    }

    public void setQuizid(Long quizid) {
        this.quizid = quizid;
    }

    public Courses getCourse() {
        return course;
    }

    public void setCourse(Courses course) {
        this.course = course;
    }

    public String getQuizname() {
        return quizname;
    }

    public void setQuizname(String quizname) {
        this.quizname = quizname;
    }

    public String getQuizdescription() {
        return quizdescription;
    }

    public void setQuizdescription(String quizdescription) {
        this.quizdescription = quizdescription;
    }
}

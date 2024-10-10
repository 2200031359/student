package klu.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Column;
import jakarta.persistence.Table;

@Entity
@Table(name = "handouts")
public class Handout {

    @Id
    @Column(name = "handoutid")
    private Long handoutid;

    @ManyToOne
    @JoinColumn(name = "courseid")
    private Courses course;

    @Column(name = "handoutname")
    private String handoutname;

    @Column(name = "handoutfile")
    private String handoutfile; // You may store the file path or URL

    // Getters and Setters
    public Long getHandoutid() {
        return handoutid;
    }

    public void setHandoutid(Long handoutid) {
        this.handoutid = handoutid;
    }

    public Courses getCourse() {
        return course;
    }

    public void setCourse(Courses course) {
        this.course = course;
    }

    public String getHandoutname() {
        return handoutname;
    }

    public void setHandoutname(String handoutname) {
        this.handoutname = handoutname;
    }

    public String getHandoutfile() {
        return handoutfile;
    }

    public void setHandoutfile(String handoutfile) {
        this.handoutfile = handoutfile;
    }
}

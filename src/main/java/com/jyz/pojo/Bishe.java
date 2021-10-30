package com.jyz.pojo;

public class Bishe {
    private int id;
    private String subject;
    private String nature;
    private String shape;
    private String whethernew;
    private String whetheroffc;
    private String reason;
    private String source;
    private String teacher;

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getShape() {
        return shape;
    }

    public void setShape(String shape) {
        this.shape = shape;
    }

    public String getWhethernew() {
        return whethernew;
    }

    public void setWhethernew(String whethernew) {
        this.whethernew = whethernew;
    }

    public String getWhetheroffc() {
        return whetheroffc;
    }

    public void setWhetheroffc(String whetheroffc) {
        this.whetheroffc = whetheroffc;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    @Override
    public String toString() {
        return "Bishe{" +
                "id=" + id +
                ", subject='" + subject + '\'' +
                ", nature='" + nature + '\'' +
                ", shape='" + shape + '\'' +
                ", whethernew='" + whethernew + '\'' +
                ", whetheroffc='" + whetheroffc + '\'' +
                ", reason='" + reason + '\'' +
                ", source='" + source + '\'' +
                '}';
    }
}

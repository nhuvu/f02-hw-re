public class Student {
    private String name;
    private String number;
    private double score;

    public Student(String name, String number, double score) {
        this.name = name;
        this.number = number;
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Student: " + this.name
                + "\nStudent No.: " + this.number
                +"\nAverage Score: " + this.score;
    }
}

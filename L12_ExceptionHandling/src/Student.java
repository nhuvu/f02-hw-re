public class Student {
    private String name;
    private String studentNo;
    private int age;
    private double averagePoint;
    private String phone;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public double getAveragePoint() {
        return averagePoint;
    }

    public void setAveragePoint(double averagePoint) {
        this.averagePoint = averagePoint;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Student(String name, String studentNo, int age, double averagePoint, String phone) {
        this.name = name;
        this.studentNo = studentNo;
        this.age = age;
        this.averagePoint = averagePoint;
        this.phone = phone;
    }

    public Student(){

    }

    @Override
    public String toString() {
        return "MSSV: " + this.studentNo + "- Họ tên: " + this.name + "- Tuổi: " + this.age + "- Điểm trung bình: " + this.averagePoint;
    }
}

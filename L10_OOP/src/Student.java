public class Student {
    private String firstName;
    private String lastName;
    private String middleName;
    private String address;
    private String email;
    private String phoneNum;
    private String number;

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Student(String firstName, String middleName, String lastName, String address, String number, String phoneNum, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.middleName = middleName;
        this.address = address;
        this.number = number;
        this.phoneNum = phoneNum;
        this.email = email;
    }

    String goToSchool(){
        return this + "\n -->đi học";
    }

    String doHomework(){
        return this +  "\n --> làm bài tập";
    }

    String takeExam(){
        return this + "\n --> làm bài thi";
    }

    String payTuition(){
        return this + "\n --> đóng học phí";
    }

    @Override
    public String toString() {
        return "Sinh viên: " + this.firstName + " " + this.middleName + " " + this
                .lastName
                + "\nMSSV: " + this.number
                +"\nEmail: " + this.email
                +"\nSố điện thoại: " + this.phoneNum;
    }

}

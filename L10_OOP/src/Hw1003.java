public class Hw1003 {
    public static void main(String[] args) {
        Student student = new Student("Trần", "Đức", "Thịnh",
                "123 test address", "BCBSV1234", "0987654321", "test@mail.com");
        System.out.printf(student.goToSchool() + "\n\n");
        System.out.printf(student.doHomework() + "\n\n");
        System.out.printf(student.takeExam() + "\n\n");
        System.out.printf(student.payTuition());
    }


}

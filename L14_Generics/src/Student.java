public class Student<E,T> implements Identifiable<E>{
    private E id;
    private String name;
    private T grade;

    public Student(E id, String name, T grade) {
        this.id = id;
        this.name = name;
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Student: " + this.name + " - Grade: " + this.grade;
    }

    @Override
    public E getId() {
        return this.id;
    }
}

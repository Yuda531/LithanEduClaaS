public class Student {
    // for initialise student and get the score
    String name;
    static int score;
    static int wrongAnswer;
    static int correctAmount;
    static int wrongAmount;
    public Student(String input) {
        this.name = input;
        Main.s = this;
    }
    public static int getScore() {
        return score;
    }
    public void setName(String name) {
        this.name = name;
    }
}

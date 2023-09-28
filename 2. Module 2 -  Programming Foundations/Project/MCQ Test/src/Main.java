import java.util.InputMismatchException;
import java.util.Scanner;
public class Main {
    static Scanner scan;
    public static Student s;
    public static void main(String[] args) {
        // The test will run in here
        writeName();
        selectMCQ();
        showResult();
    }
    public static void writeName() {
        // to fulfill the name
        System.out.print("Welcome to MCQ Test! \n\nPlease enter your name: ");
        scan = new Scanner(System.in);
        String name = scan.nextLine();
        Student students = new Student(name);
        students.setName(name);
        System.out.println("Hi " + students.name + " Good Luck \n");
    }
    private static void selectMCQ() {
        try {
            StartTest test1 = new StartTest();
            test1.chooseTheTest();
        } catch (InputMismatchException e){
            System.out.println("Error You Can only Input Correct Number");
        }

    }
    private static void showResult() {
        int finalScore = Student.getScore();
        String name = s.name;
        System.out.println("Name: " + name + "\nYou answered "+ Student.correctAmount + " Questions Right, " + Student.wrongAmount + " Question Wrong for a total of 10 Questions " + "\nScore: " + finalScore +"0%");
        System.out.println("\nThank you for attending The Test \nHave a nice day ");
    }
}

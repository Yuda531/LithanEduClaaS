import java.io.*;
import java.util.Objects;
import java.util.Scanner;

public class FileReaderMCQ {
    // This is the source file
    // Using BufferedReader for reading the file
    BufferedReader reader;
    public void startTest(String fileName) {
        // Displaying the question
        try {
            reader = new BufferedReader(new FileReader(fileName));
            String output = ""; // for csv file
            System.out.println("\nPlease answer this question..\n");
            while ((output = reader.readLine()) != null) {
                String[] data = output.split(","); //String array for store the data. split = pemisah
                System.out.printf("%s", data[0]); // make question into array/formatting data directly to array
                System.out.println();
                // for displaying option
                String a = data[1];
                String b = data[2];
                String c = data[3];
                String d = data[4];
                System.out.printf("   A.%s \n   B.%s \n   C.%s \n   D.%s", a, b, c, d, data[5], data[6]);
                System.out.println("\n");
                // validation option
                boolean optionTest = true;
                String getAnswer = null;
                while (optionTest){
                    Scanner answer = new Scanner(System.in);
                    // for displaying answer
                    System.out.print("Your answer: ");
                    getAnswer = answer.nextLine();
                    if (Objects.equals(getAnswer, "a") || Objects.equals(getAnswer, "b") || Objects.equals(getAnswer, "c") || Objects.equals(getAnswer, "d")){
                        optionTest = false;
                    } else {
                        System.out.println("\nYou can only input A,B,C,D\n");
                    }
                }
                if (getAnswer.equalsIgnoreCase(data[5])) { // when user input capital or not. it will ignore that
                    System.out.println("Correct Answer");
                    Student.score++;
                    Student.correctAmount++;
                    System.out.println();
                }
                else {
                    System.out.println("Wrong Answer. The Correct Answer is " + data[6]);
                    Student.wrongAnswer++;
                    Student.wrongAmount++;
                    System.out.println();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

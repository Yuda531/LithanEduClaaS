import java.io.File;
import java.util.Objects;
import java.util.Scanner;

public class StartTest extends FileReaderMCQ {
    //For Choosing the test
    FileReaderMCQ read = new FileReaderMCQ();
    Scanner choice;
    File directoryPath = new File("MCQ");
    private void showFiles(File[] files) {
        for (int i = 0; i < files.length; i++){
            System.out.println("Here The MCQ Set: " + files[i].getName().replace(".csv", " ") + "(choose " + (i + 1) + ")");
        }
    }
    public void chooseTheTest() {
        showFiles(Objects.requireNonNull(directoryPath.listFiles()));
        choice = new Scanner(System.in);
        String[] f = directoryPath.list();
        int userChoice = 0;
        boolean trueChoice = true;
        while (trueChoice){
            System.out.print("\nInput The Number: ");
            userChoice = choice.nextInt();
            System.out.println();
            if (userChoice == 0 || userChoice < 0 || userChoice > Objects.requireNonNull(f).length){
                System.out.println("Please Input The Correct Number!");
            } else {
                trueChoice = false;
            }
        }
        String path = "MCQ/" + f[userChoice - 1]; // index start from 0 so when we input 1 will minus 1 = 0
        read.startTest(path);
    }
}

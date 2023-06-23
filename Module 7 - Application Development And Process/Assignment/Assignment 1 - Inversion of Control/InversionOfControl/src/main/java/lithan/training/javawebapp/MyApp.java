package lithan.training.javawebapp;

import java.util.InputMismatchException;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyApp {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");

        Scanner scan = new Scanner(System.in);
        int mode = 0;
        boolean validInput = false;
        while (!validInput) {
            try {
                System.out.println("Choose the payment method you want to use:");
                System.out.println("1. Google Pay");
                System.out.println("2. Credit Card");
                mode = scan.nextInt();
                if (mode == 1 || mode == 2) {
                    validInput = true;
                } else {
                    System.out.println("Invalid input. Please enter 1 or 2.");
                }
            } catch (InputMismatchException e) {
                System.out.println("Invalid input. Please enter a number.");
                scan.nextLine(); // consume the invalid input
            }
        }

        String paymentMethod = "";
        boolean paymentSuccess = false;
        BillingService billService = null;

        if (mode == 1) {
            billService = (BillingService) context.getBean("google-pay-service");
            paymentMethod = "Google Pay";
            paymentSuccess = billService.completePayment();
        } else if (mode == 2) {
            billService = (BillingService) context.getBean("credit-card-service");
            paymentMethod = "Credit Card";
            paymentSuccess = billService.completePayment();
        }

        if (paymentSuccess) {
            System.out.println("Payment with " + paymentMethod + " is Successful.");
        }
    }
}


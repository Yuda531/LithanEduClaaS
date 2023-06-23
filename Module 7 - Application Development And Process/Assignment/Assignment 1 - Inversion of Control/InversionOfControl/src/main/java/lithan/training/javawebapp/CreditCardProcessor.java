package lithan.training.javawebapp;

public class CreditCardProcessor implements PaymentProcessor {
	 public boolean process() {
		 System.out.println("Processing of Credit Card Payment...");
	 return true;
	 }
	}


package lithan.training.javawebapp;

public class GooglePayProcessor implements PaymentProcessor {
	
	public boolean process() {
		System.out.println("Google Pay payment processing is underway...");
		 return true;
		 }

}

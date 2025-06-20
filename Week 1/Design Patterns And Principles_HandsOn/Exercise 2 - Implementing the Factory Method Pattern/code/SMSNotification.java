package designpatterns.factorymethod;

public class SMSNotification implements Notification {
	public void notifyUser() {
        System.out.println("Sending SMS Notification");
    }
}

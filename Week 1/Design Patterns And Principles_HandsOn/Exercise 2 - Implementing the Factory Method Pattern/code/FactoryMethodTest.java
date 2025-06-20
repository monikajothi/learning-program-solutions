package designpatterns.factorymethod;

public class FactoryMethodTest {
    public static void main(String[] args) {

        NotificationFactory factory;

        factory = new SMSFactory();
        Notification sms = factory.createNotification();
        sms.notifyUser();

        factory = new EmailFactory();
        Notification email = factory.createNotification();
        email.notifyUser();
    }
}

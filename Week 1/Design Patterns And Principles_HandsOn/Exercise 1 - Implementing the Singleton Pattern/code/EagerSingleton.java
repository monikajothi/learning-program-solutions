package designpatterns.singleton;

public class EagerSingleton {
	private static final EagerSingleton instance = new EagerSingleton();

    private EagerSingleton() {
        System.out.println("Eager Singleton Instance Created");
    }

    public static EagerSingleton getInstance() {
        return instance;
    }
}

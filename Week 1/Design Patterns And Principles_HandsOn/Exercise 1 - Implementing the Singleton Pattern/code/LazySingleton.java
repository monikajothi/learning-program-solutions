package designpatterns.singleton;

public class LazySingleton {
	private static LazySingleton instance;

    private LazySingleton() {
        System.out.println("Lazy Singleton Instance Created");
    }

    public static LazySingleton getInstance() {
        if (instance == null) {
            instance = new LazySingleton();
        }
        return instance;
    }
}

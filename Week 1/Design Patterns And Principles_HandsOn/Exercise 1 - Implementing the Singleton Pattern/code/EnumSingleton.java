package designpatterns.singleton;

public enum EnumSingleton {
    INSTANCE;

    public void show() {
        System.out.println("Enum Singleton Instance Accessed");
    }
}

package designpatterns.singleton;

public class SingletonTest {
    public static void main(String[] args) {

        System.out.println("==== Eager Singleton ====");
        EagerSingleton eager1 = EagerSingleton.getInstance();
        EagerSingleton eager2 = EagerSingleton.getInstance();

        System.out.println("==== Lazy Singleton ====");
        LazySingleton lazy1 = LazySingleton.getInstance();
        LazySingleton lazy2 = LazySingleton.getInstance();

        System.out.println("==== Thread-Safe Singleton ====");
        ThreadSafeSingleton ts1 = ThreadSafeSingleton.getInstance();
        ThreadSafeSingleton ts2 = ThreadSafeSingleton.getInstance();

        System.out.println("==== Double-Checked Singleton ====");
        DoubleCheckedSingleton dc1 = DoubleCheckedSingleton.getInstance();
        DoubleCheckedSingleton dc2 = DoubleCheckedSingleton.getInstance();

        System.out.println("==== Bill Pugh Singleton ====");
        BillPughSingleton bp1 = BillPughSingleton.getInstance();
        BillPughSingleton bp2 = BillPughSingleton.getInstance();

        System.out.println("==== Enum Singleton ====");
        EnumSingleton enum1 = EnumSingleton.INSTANCE;
        EnumSingleton enum2 = EnumSingleton.INSTANCE;
        enum1.show();
    }
}

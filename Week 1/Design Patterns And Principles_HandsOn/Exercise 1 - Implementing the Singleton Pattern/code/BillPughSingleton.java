package designpatterns.singleton;

public class BillPughSingleton {
    private BillPughSingleton() {
        System.out.println("Bill Pugh Singleton Instance Created");
    }

    private static class Holder {
        private static final BillPughSingleton INSTANCE = new BillPughSingleton();
    }

    public static BillPughSingleton getInstance() {
        return Holder.INSTANCE;
    }
}

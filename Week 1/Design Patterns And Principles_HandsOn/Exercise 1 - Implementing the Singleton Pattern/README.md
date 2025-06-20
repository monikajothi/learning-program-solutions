# 🧠 Singleton Pattern – Java Design Patterns

This module contains **6 optimized implementations** of the **Singleton Design Pattern** using Java SE, built for deep understanding and practical execution in Eclipse IDE.

---

## 📌 Objective

> Ensure a class has only one instance and provide a global point of access to it.

---

## 🛠️ Variants Implemented

| Variant                  | Description                                               |
|--------------------------|-----------------------------------------------------------|
| Eager Initialization     | Object created at class load time                         |
| Lazy Initialization      | Object created when needed (not thread-safe)              |
| Thread-Safe Singleton    | Synchronized method to make lazy init thread-safe         |
| Double-Checked Locking   | Thread-safe and optimized using `volatile` + `sync block` |
| Bill Pugh Singleton      | Uses static inner class for lazy + thread-safe loading    |
| Enum Singleton           | Most robust against reflection and serialization          |

---

## 📚 Use Cases

- Database Connection Manager
- Logger (Log4j, SLF4J)
- Configuration Loader
- Spring Beans (default scope)


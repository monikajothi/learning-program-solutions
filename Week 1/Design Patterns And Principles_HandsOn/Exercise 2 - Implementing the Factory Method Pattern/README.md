# 🧠 Factory Method Pattern – Java Design Patterns

This module demonstrates the **Factory Method Design Pattern** using Java SE. The pattern enables subclasses to decide which class to instantiate at runtime.

---

## 📌 Objective

> Define an interface for creating an object, but let subclasses alter the type of objects that will be created.

---

## 🛠️ Components

| Component            | Role                                                  |
|----------------------|--------------------------------------------------------|
| `Notification`       | Product interface                                      |
| `SMSNotification`    | Concrete implementation of `Notification`             |
| `EmailNotification`  | Another concrete class of `Notification`              |
| `NotificationFactory`| Abstract creator class                                 |
| `SMSFactory`         | Concrete factory producing `SMSNotification`          |
| `EmailFactory`       | Concrete factory producing `EmailNotification`        |
| `FactoryMethodTest`  | Test class to demonstrate usage                        |

---

## 📚 Use Cases

- Notification systems (SMS, Email, Push)
- Spring's `BeanFactory`
- Java's `Calendar.getInstance()`

---

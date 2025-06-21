# Financial Forecasting Tool (Java)

This project demonstrates a simple financial forecasting tool that calculates the **future value of an investment** using a **recursive algorithm**, based on a fixed annual growth rate.

## 📌 Project Overview

- **Purpose**: Predict future value given present value, growth rate, and number of years.
- **Approach**: Recursive computation that applies compound growth year over year.

## 📦 Project Structure

FinancialForecasting/ └── src/ └── com/forecast/recursive/ ├── FinancialForecast.java └── Main.java


## 🚀 Features

- Calculates future value using:
  - Present value (e.g., ₹150,000)
  - Annual growth rate (e.g., 7%)
  - Forecast period in years (e.g., 10 years)
- Simple, elegant use of **recursion** to compute compound growth.

## 🧮 Formula Used

The recursive function models the formula:
FutureValue(n) = FutureValue(n - 1) × (1 + growthRate)


## 🧪 Sample Output

Projected Future Value after 10 years: 295072.70


## 🔍 Technologies

- Java (JDK 8 or higher)
- Eclipse IDE or any Java-supported environment

## 📝 How to Run

1. Open Eclipse.
2. Create a new project called `FinancialForecasting`.
3. Inside `src`, create the package: `com.forecast.recursive`.
4. Add the two classes:
   - `FinancialForecast.java` (recursive logic)
   - `Main.java` (test runner)
5. Run `Main.java` as a Java application.
6. Console will display the calculated future value.

## 📈 Complexity Analysis

| Operation | Complexity |
|-----------|------------|
| Time      | O(n)       |
| Space     | O(n)       |

This is acceptable for moderate `n`. For very large values or more complex financial models, **iterative methods or memoization** are recommended.

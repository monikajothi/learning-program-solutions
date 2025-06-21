# E-commerce Search Demo (Java)

This project demonstrates the implementation and comparison of **linear search** and **binary search** techniques in the context of a simple e-commerce platform. Products are modeled as Java objects and stored in an array for search operations.

## 📦 Project Structure
EcommerceSearchDemo/ 
└── src/
└── com/ecommerce/search/
  ├── Product.java 
  ├── SearchUtils.java 
  └── Main.java


## 🚀 Features

- **Linear Search**: Searches through the product array sequentially.
- **Binary Search**: Performs efficient search on a sorted array of products by name.
- **Product Representation**: Each product has an ID, name, and category.

## 🔍 Technologies Used

- Java (JDK 8+)
- Eclipse IDE

## 🧪 How to Run

1. Open Eclipse.
2. Import the project or create a new Java project and copy in the files under `com.ecommerce.search`.
3. Right-click on `Main.java` → Run As → Java Application.
4. Output will display the result of both linear and binary search.

## 📝 Example Output
Linear Search Result: Product{id=105, name='Mouse', category='Electronics'}
Binary Search Result: Product{id=105, name='Mouse', category='Electronics'}


## 📈 Performance Analysis

| Algorithm       | Best Case | Average Case | Worst Case |
|----------------|-----------|--------------|------------|
| Linear Search   | O(1)      | O(n)         | O(n)       |
| Binary Search   | O(1)      | O(log n)     | O(log n)   |

Binary search offers faster results on **sorted datasets**, while linear search is simpler and better for **unsorted** or **small** arrays.

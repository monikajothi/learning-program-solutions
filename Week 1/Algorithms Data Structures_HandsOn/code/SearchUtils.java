package com.ecommerce.search;

import java.util.Arrays;
import java.util.Comparator;

public class SearchUtils {

    public static Product linearSearch(Product[] products, String targetName) {
        for (Product product : products) {
            if (product.getProductName().equalsIgnoreCase(targetName)) {
                return product;
            }
        }
        return null;
    }

    public static Product binarySearch(Product[] products, String targetName) {
        Arrays.sort(products, Comparator.comparing(Product::getProductName, String.CASE_INSENSITIVE_ORDER));
        int low = 0, high = products.length - 1;

        while (low <= high) {
            int mid = (low + high) / 2;
            String midName = products[mid].getProductName();
            int comparison = midName.compareToIgnoreCase(targetName);

            if (comparison == 0) {
                return products[mid];
            } else if (comparison < 0) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return null;
    }
} 
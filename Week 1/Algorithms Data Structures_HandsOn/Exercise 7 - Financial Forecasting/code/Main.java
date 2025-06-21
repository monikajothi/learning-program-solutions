package com.forecast.recursive;

public class Main {
    public static void main(String[] args) {
        double presentValue = 150000.0;
        double annualGrowthRate = 0.07; 
        int forecastYears = 10;

        double futureValue = FinancialForecast.forecast(presentValue, annualGrowthRate, forecastYears);
        System.out.printf("Projected Future Value after %d years: ₹%.2f%n", forecastYears, futureValue);
    }
}
package com.example.simplecalculator.model;

public class Calculate extends Exception{
    public static String cal(double op1, double op2, String operator){
        double result;
        String txtResult;
        switch (operator){
            case "+":
                result = op1 + op2;
                break;
            case "-":
                result = op1 - op2;
                break;
            case "*":
                result = op1 * op2;
                break;
            case "/":
                if (op2 != 0){
                    result = op1 * op2;
                } else {
                    throw new ArithmeticException("Divide by 0!");
                }
                break;
            default:
                throw new RuntimeException("Invalid operation");
        }
        txtResult = String.valueOf(result);
        return txtResult;
    }
}

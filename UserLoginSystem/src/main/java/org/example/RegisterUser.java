package org.example;

import java.util.Scanner;
import java.util.regex.Pattern;

public class RegisterUser {


    public boolean passwordValidator(String password) {
        boolean b = Pattern.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\\W)(?!.* ).{8,16}$",password);
        return b;
    }
}

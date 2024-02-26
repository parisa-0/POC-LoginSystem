package org.example;

import java.util.Scanner;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {


        Scanner scanner = new Scanner(System.in);
        System.out.println("Please provide your username?");
        String user = scanner.nextLine();

        DatabaseLibrary obj = new DatabaseLibrary();
        RegisterUser ru = new RegisterUser();


        if (!user.equalsIgnoreCase(obj.findUser(user))){
            System.out.println("Username not found, would you like to register? Y/N");
            if(scanner.nextLine().equalsIgnoreCase("Y")) {
                System.out.println("Please provide a username");
                String un = scanner.nextLine();

                for(int i = 0; i < 3; i++) {
                    System.out.println("Please provide a password with at least one uppercase letter, one numeric value and special character");
                    String pwd = scanner.nextLine();
                    if(ru.passwordValidator(pwd)) {
                        obj.insertUser(un);
                        obj.updatePassword(un,pwd);
                        System.out.println("You have successfully logged in!");
                        break;
                    }
                }
            }
            else {
                scanner.close();
            }
        }

        else {
            for(int i = 0; i < 3; i++) {
                System.out.println("Please provide your password");
                String pwd = scanner.nextLine();
                if(pwd.equals(obj.findPassword(pwd))) {
                    System.out.println("You have successfully logged in!");
                    break;
                }
            }
        }
    }
}
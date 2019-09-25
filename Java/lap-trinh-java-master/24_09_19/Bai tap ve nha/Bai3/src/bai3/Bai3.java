
package bai3;

import java.util.Scanner;

public class Bai3 {

    /**
     * Đề bài: Viết ct giải PTB2
     */
    public static void main(String[] args) {
        float a,b,c, delta;
        Scanner input = new Scanner(System.in);
        
        //Nhap gia tri
        System.out.println("PT: ax^2 + bx + c = 0");
        System.out.print("\nNhap a = ");
        a = input.nextInt();
        System.out.print("Nhap b = ");
        b = input.nextInt();
        System.out.print("Nhap c = ");
        c = input.nextInt();
        
        //giai pt
        if(a == 0)
        {
            System.out.println("\nPhuong trinh có 1 nghiem x = " + -c/b );
        }
        else
        {
            delta = (b*b) - 4*a*c;
            if(delta < 0)
                System.out.println("\nPhuong trinh vo nghiem");
            else if(delta == 0)
                System.out.println("\nPhuong trinh có nghiem kep x1 = x2 = " + -b/(2*a) );
            else
            {
                System.out.println("\nPhuong trinh có 2 nghiem:");
                System.out.println("\tx1 = " + (-b + Math.sqrt(delta))/(2*a) );
                System.out.println("\tx2 = " + (-b - Math.sqrt(delta))/(2*a) );
            }
        }   
    }
    
}

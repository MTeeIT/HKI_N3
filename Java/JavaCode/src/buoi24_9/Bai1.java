/**
     * Đề: Viết chuong trinh nhập vào 3 số nguyên a,b,c và in ra số nguyên lớn nhất
    */
package buoi24_9;

import java.util.Scanner;

public class Bai1 {

    public static void main(String[] args) {
        int a,b,c;
        Scanner input = new Scanner(System.in);
        
        //Nhap gia tri
        System.out.print("Nhap a = ");
        a = input.nextInt();
        System.out.print("Nhap b = ");
        b = input.nextInt();
        System.out.print("Nhap c = ");
        c = input.nextInt();
        
        //tim gia tri lon nhat
        int max = a;
        if(b > max)
            max = b;
        if(c > max)
            max = c;
    //Kq
        System.out.println("\nGia tri lơn nhat la: " + max);
        
    }
    
}

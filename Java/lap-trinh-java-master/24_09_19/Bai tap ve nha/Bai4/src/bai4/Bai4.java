
package bai4;

import java.util.Scanner;

public class Bai4 {

    /**
     * Đề bài: Kiểm tra n có phải là số nguyên tố không?
    */
    public static void main(String[] args) {
        int n;
        Scanner input = new Scanner(System.in);
        
        //Nhap gia tri
        System.out.print("Nhap n = ");
        n = input.nextInt();
                
        if(ktSNT(n))
            System.out.println("\nDay la so nguyen to");
        else
            System.out.println("\nDay khong la so nguyen to");
    }
    
    public static boolean ktSNT(int n)
    {
        if(n<2)
            return false;
        for(int i=2; i < n; i++)
        {
            if(n % i == 0)
                return false;
        }
        return true;
    }
       
}

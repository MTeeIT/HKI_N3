
package bai2;

import java.util.Scanner;

public class Bai2 {

    /**
     * Đề bài: Viết ct tính tổng S = 1 + 1/2 + 1/3 + ... + 1/n. Với n nhập vào từ bàn phím
     */
    public static void main(String[] args) {
        int n;
        Scanner input = new Scanner(System.in);
        
        //Nhap gia tri
        do
        {
           System.out.print("Nhap n = ");
           n = input.nextInt();
           if(n<1) System.out.println("\nNhap gia tri lon hon 0");
        }while(n<1);
        
        //tinh tong S
        float tong = 1f;
        for(int i=2; i <= n; i++)
        {
            tong += (1.0/i);
        }
        
        //in ket qua
        System.out.println("\nTong la: " + tong);
    }
    
}

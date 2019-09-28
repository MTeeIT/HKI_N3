
package buoi28_9;

import java.util.Scanner;


/**
 *Liệt kê SNT trong khoảng m,n
 * @author MTee
 */
public class LietKeSNT {
    public static void main(String[] args) {
        Scanner input = new Scanner (System.in);
          
        int m,n,SLSNT =0;
        //Nhap gia tri
        do {            
            System.out.print("\nNhap m bat dau : ");
            m=input.nextInt();
            if (m > 1000) System.out.println("\nGia tri khong hop le!");
        } while (m > 1000);
        do{
           System.out.print("\nNhap n ket thuc : ");
            n=input.nextInt();
            if (n > 1000 || m > n) System.out.println("\nGia tri khong hop le!");
        } while (n > 1000);
       // Tim SNT
        System.out.println("\nCac SNT trong khoang"+m+"den"+n+":");
        for (int i=m+1; i< n;i++) 
        {
            if (ktSNT(i)==true)
            {
                SLSNT++;
                System.out.print(" "+i);
            }
        }
        if (SLSNT==0)
            System.out.println("\nKhong co SNT"); 
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

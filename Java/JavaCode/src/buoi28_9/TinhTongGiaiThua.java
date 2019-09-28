
package buoi28_9;

import java.util.Scanner;

/**
 *Viet ct tinh tong giai thua
 * @author MTee
 */
public class TinhTongGiaiThua {
    public static void main(String[] args) {
        int n ;
        long S=0;
        Scanner input = new Scanner(System.in);
         
        System.out.println(" S = 1!+ 2! + 3! +.......+n!");
         do
        {
            System.out.println("Nhap gia tri n = ");
            n = input.nextInt();
            if (n < 0) System.out.println("\nGia tri khong hop le !");
        }while (n < 0);
         for (int i=1;i<=n;i++)
         {
             S += tinhGiaiThua(i);
         }
     System.out.println("Tong S = "+S);
    }
    public static long tinhGiaiThua(int n)
    {
        long KQ = 1;
         if(n == 0 || n == 1)
           KQ = 1;
        else
        { 
            for(int i = 2; i<=n; i++ )
                KQ *=i;
        }
     return KQ; 
    }
}

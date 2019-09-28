
package buoi28_9;

import java.util.Scanner;

/**
 *Viet ct tinh gia thua
 * @author MTee
 */
public class TinhGiaiThua {
    public static void main(String[] args) {
        int n;
        long KQ =1;
        Scanner input =  new Scanner(System.in);
       
        do
        {
            System.out.println("Nhap gia tri n = ");
            n = input.nextInt();
            if (n < 0) System.out.println("\nGia tri khong hop le !");
        }while (n < 0);
        
        if(n == 0 || n == 1)
            KQ = 1;
        else
        { 
            for(int i = 2; i<=n; i++ )
                KQ *=i;
        }
         System.out.println("\nKet qua " +n+"!="+KQ);   
    }
    
}

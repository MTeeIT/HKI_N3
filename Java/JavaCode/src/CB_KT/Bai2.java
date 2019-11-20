package CB_KT;

import java.util.Scanner;

/**
 *
 * @author MTee
 */
public class Bai2 {
    public static void main(String[] args)
   {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Nhập số n: ");
        int n = sc.nextInt();
        
        float ketQua=0;
        for(int i=1; i<=n; i++)
        {
            ketQua += 1.0/i;
        }
        
        System.out.println("=> Kết quả = " +ketQua);
}
}

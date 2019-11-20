package CB_KT;

import java.util.Scanner;

/**
 *
 * @author MTee
 */
public class Bai1 {
    public static void main(String[] args)
    {
        int a,b,c;
        Scanner SN = new Scanner(System.in);
        
        System.out.println("Nhap so a:");
        a = SN.nextInt();
        System.out.println("Nhap so b:");
        b = SN.nextInt();
        System.out.println("Nhap so c:");
        c = SN.nextInt();
        
        int max = a;
        if(b > max)
            max = b;
        if(c > max)
            max = c;
        System.out.println("So lon nhat la "+max);
        
}
}

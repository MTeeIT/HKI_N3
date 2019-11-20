package CB_KT;

import java.util.Scanner;

/**
 *
 * @author MTee
 */
public class Bai4 {
    public static void main(String[] args)
    {
        int n;
        Scanner SC = new Scanner(System.in);
        
        System.out.println("Nhap n:");
        n = SC.nextInt();
        
        if(ktSNT(n)== true)
        System.out.println("n la SNT");
        else
            System.out.println("n k la SNT");
        

}
    
    public static boolean ktSNT(int n)
    {
        if( n < 2)
            return false;
      else
        {
            for(int i = 2; i < n; i++)
            {
                if(n%i==0)
                    return false;
            }
        }
        return true;
    }
}

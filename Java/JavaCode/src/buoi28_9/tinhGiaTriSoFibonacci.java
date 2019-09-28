
package buoi28_9;

import java.util.Scanner;

/**
 * Viet ct tinh so Fibonacci F: F(0)=1 ,F(1)=1
 * F(n)=F(n-1) + F(n-2)
 * @author MTee
 */
public class tinhGiaTriSoFibonacci 
{
    public static void main(String[] args) {
        int n;
        Scanner input = new Scanner(System.in);
        
        do 
        {            
          System.out.println("Fibonacci thu = ");
            n = input.nextInt();
            if (n < 0) System.out.println("\nGia tri khong hop le !");
        }while (n < 0);  
        System.out.println("\nF("+n+")="+fibonacci(n));
    }
    public static int fibonacci(int viTri)
    {
        int giaTriTruoc = 1, giaTriSau = 1, tam;
        if(viTri ==0 || viTri == 1)
            return 1;
        else 
        {
            for(int i = 2;i <= viTri; i++)
            {
                tam=giaTriSau;
                giaTriSau+=giaTriTruoc;
                giaTriTruoc=tam;
            }
        }
        return giaTriSau;
    }
}
 
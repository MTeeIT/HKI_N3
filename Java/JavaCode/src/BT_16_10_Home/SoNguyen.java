package BT_16_10_Home;

import java.util.Scanner;

/**
 * Cau 1: Làm việc với số nguyên 1. Viết phương thức int add (int a, int b) trả
 * về tổng của a và b. 2. Viết phương thức int mult (int a, int b) trả về phép
 * nhân của a với b. 3. Viết phương thức int max (int a, int b) trả về giá trị
 * lớn nhất của a và b. 4. Viết phương thức int min (int a, int b, int c) trả về
 * mức tối thiểu của a, b và c. 5. Viết phương thức int gcd (int a, int b) trả
 * về chia chung lớn hơn của a và b.
 *
 * @author MTee
 */
public class SoNguyen {

    public static void main(String[] args)
    {
        int a, b, c;
        Scanner input = new Scanner(System.in);
//Nhap gia tri
        System.out.print("Nhap a = ");
        a = input.nextInt();
        System.out.print("Nhap b = ");
        b = input.nextInt();
        System.out.print("Nhap c = ");
        c = input.nextInt();

        SoNguyen sn = new SoNguyen();
        System.out.println("a = " + a + " ; b = " + b + " ; c = " + c);
        System.out.println("Add(a,b)  = " + sn.add(a, b));
        System.out.println("Mult(a,b)  = " + sn.mult(a, b));
        System.out.println("Max(a,b)  = " + sn.max(a, b));
        System.out.println("Min(a,b,c)  = " + sn.min(a, b, c));
        System.out.println("Gcd(a,b)  = " + sn.gcd(a, b));
    }

    public static int add(int a, int b)
    {
        return a + b;
    }

    public static int mult(int a, int b)
    {
        return a * b;
    }

    public static int max(int a, int b)
    {
        if (a > b)
            return a;
        else
            return b;
    }

    public static int min(int a, int b, int c)
    {
        if (a < b && a < c)
            return a;
        else if (b < c)
            return b;
        else
            return c;
    }

    public int gcd(int a, int b)
    {
        int max = this.max(a, b);
        for (int i = max; i > 0; i--)
        {
            if (a % i == 0 && b % i == 0)
                return i;
        }
        return 1;
    }

}

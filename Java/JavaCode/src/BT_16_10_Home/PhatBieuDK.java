package BT_16_10_Home;

import java.util.Scanner;

/**
 * 1. Viết phương thức yêu cầu người dùng nhập 2 số nguyên và trả về: a. Tổng a
 * và b nếu cả hai số nguyên là số chẵn. b. Phép nhân của a với b nếu cả hai số
 * nguyên là số lẻ. c. Khác, bình phương của mỗi số nguyên. 2. Viết phương thức
 * cho phép nhập thông tin từ bàn phím.
 *
 * @author MTee
 */
public class PhatBieuDK {

    public static void main(String[] args)
    {
        int a, b;
        Scanner input = new Scanner(System.in);

        //Nhap gia tri
        System.out.print("Nhap a = ");
        a = input.nextInt();
        System.out.print("Nhap b = ");
        b = input.nextInt();
        //goi ham
        dieuKien(a, b);

    }

    //Tổng nếu a, b là số chẵn
    public static void dieuKien(int a, int b)
    {
        if (a % 2 == 0 && b % 2 == 0)
        {
            System.out.println("Tổng hai số nguyên a + b = " + (a + b));
        }
        if (a % 2 != 0 && b % 2 != 0)
        {
            System.out.println("Tích hai số nguyên a x b = " + (a * b));
        }
        if (a % 2 == 0 && b % 2 != 0 || a % 2 != 0 && b % 2 == 0)
        {
            System.out.println("Tổng bình phương hai số = " + (a * a + b * b));
        }
    }
}

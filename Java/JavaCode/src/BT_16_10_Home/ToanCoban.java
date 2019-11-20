package BT_16_10_Home;

import java.util.Scanner;

/**
 * Viết chương trình áp dụng phép toán số học giữa 2 số nguyên được nhập từ
 * phím. \ Sử dụng menu (DOS) cơ bản để lựa chọn toán hạng: Cho ví dụ như menu
 * bên dưới, nếu nhập hai số: 2 và 1 sau đó chọn 1: 1. cộng 2. trừ 3. nhân 4.
 * chia Ví dụ: chọn 1: Đầu ra: 2 + 1 = 3
 *
 * @author MTee
 */
public class ToanCoban {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int a, b;
        //Nhap gia tri
        System.out.print("Nhap a = ");
        a = input.nextInt();
        System.out.print("Nhap b = ");
        b = input.nextInt();
        //Chọn chức năng
        System.out.println("1.Cộng\n2.Trừ\n3.Nhân\n4.Chia");
        System.out.println("Chọn cái gì? ");

        int chon = input.nextInt();
        switch (chon) {
            case 1:
                Sum(a, b);
                break;
            case 2:
                Sub(a, b);
                break;
            case 3:
                Mult(a, b);
                break;
            case 4:
                Div(a, b);
                break;
            default:
                System.out.println("Không có !");
        }
    }

    public static void Sum(int a, int b) // hoặc Addition
    {
        System.out.println(" Tổng hai số " + a + " + " + b + " = " + (a + b));
    }

    public static void Sub(int a, int b) // Subtraction
    {
        System.out.println(" Hiệu hai số " + a + " - " + b + " = " + (a - b));
    }

    public static void Mult(int a, int b) //Multiplication
    {
        System.out.println(" Tích hai số " + a + " * " + b + " = " + (a * b));
    }

    public static void Div(int a, int b) //Division
    {
        System.out.println(" Thương hai số " + a + " : " + b + " = " + ((float) a / b));
    }
}

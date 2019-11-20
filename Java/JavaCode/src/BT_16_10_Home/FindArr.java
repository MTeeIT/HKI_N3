package BT_16_10_Home;

import java.util.Scanner;

/**
 * - Tìm kiếm mảng 1. Viết phương thức tìm kiếm một giá trị nguyên đã cho trong
 * một mảng số nguyên. Thực hiện: thực hiện tìm kiếm trên mảng, tức là: lặp qua
 * mảng từ đầu và so sánh từng phần tử với giá trị tìm kiếm. Trả về chỉ số của
 * giá trị nếu nó được tìm thấy, khác trả về -1. 2. Hiện thực một phương thức
 * tương tự để tìm kiếm một giá trị trong mảng hai chiều.
 *
 * @author MTee
 */
public class FindArr {

    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);

        System.out.println("Nhập vào độ dài của mảng: ");
        int size = input.nextInt();

        int[] array = new int[size];

        FindArr arr = new FindArr();
        for (int i = 0; i < size; i++)
        {
            System.out.println("Nhập vào phần tử thứ " + i + ": ");
            array[i] = input.nextInt();   // nhập giá trị cho phần tử
        }
        for (int i = 0; i < size; i++)
        {
            System.out.print(" " + array[i]);
        }

        System.out.print("\nSố cần tìm là: ");
        int k = input.nextInt();
        int flag = 0;
        for (int i = 0; i < array.length; i++)
        {
            if (array[i] == k)
            {
                System.out.println("So can tim xuat hien tai vi tri: " + i);
                break;
            }
            flag = 1;
        }
        if (flag == 0)
            System.out.println("KTT");
    }
}

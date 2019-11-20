package BT_16_10_Home;

import java.util.Scanner;

/**
 * Làm việc với mảng số nguyên 
 * 1. Viết một phương thức int min (int [] mảng)trả
 * về giá trị nhỏ nhất được lưu trữ trong mảng 
 * 2. Viết phương thức int find (int [] mảng, int value)trả về vị trí xuất hiện đầu tiên của giá trị trong mảng.
 * Nếu không tìm thấy giá trị, phương thức trả về -1. 
 * 3. Viết một phương thức int sumArray (int [] mảng)trả về tổng của tất cả các phần tử trong mảng.
 * 4.Viết một phương thức void printArray (int [] mảng)in các giá trị được lưu trong mảng. 
 * 5. Viết một phương thức int [] ReverseArray (int [] mảng)trả về
 * một mảng mới lưu trữ các phần tử của mảng được đưa ra làm đối số. 
 * 6. Viết một phương thức chính để kiểm tra các phương pháp trên.
 *
 *
 * @author MTee
 */
public class MangSoNguyen {

    public static void main(String[] args)
    {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập vào độ dài của mảng: ");
        int size = scanner.nextInt();

        int[] array = new int[size];
        MangSoNguyen arr = new MangSoNguyen();
        for (int i = 0; i < size; i++)
        {
            System.out.println("Nhập vào phần tử thứ " + i + ": ");
            array[i] = scanner.nextInt();   // nhập giá trị cho phần tử
        }

        // hiển thị giá trị các phần tử trong mảng
        for (int i = 0; i < size; i++)
        {
            System.out.println("Phần tử thứ " + i + ": " + array[i]);
        }
        //min
        System.out.println("\nSố nhỏ nhất = " + arr.min(array));

        //sum   
        System.out.println("\nTổng Mảng = " + arr.sumArray(array));

        //find
        System.out.print("\nSố cần tìm là: ");
        Scanner input = new Scanner(System.in);
        int value = arr.find(array, input.nextInt());
        if (value != -1)
        {
            System.out.println("Vị trí số cần tìm là: " + value);
        }
        else
        {
            System.out.println("Không tìm thấy vị trí số cần tìm!");
        }

        //in mảng
        System.out.println("\nMảng số nguyên: ");
        arr.printArray(array);

        //Giá trị đảo mảng
        System.out.println("\nMảng đã được đảo: ");
        for (int i = 0; i < ReverseArray(array).length; i++)
        {
            System.out.print(ReverseArray(array)[i] + " ");
        }

    }

    //Gia tri nho nhất
    public static int min(int array[])
    {
        int min = array[0];
        for (int i = 0; i < array.length; i++)
        {
            if (array[i] < min)
            {
                min = array[i];
            }
        }
        return min;
    }

    //Trả về vị trí xuất hiện
    public static int find(int array[], int value)
    {
        for (int i = 0; i < array.length; i++)
        {
            if (array[i] == value)
            {
                return i;
            }
        }
        return -1;
    }

    //Tổng Tất cả phần Tử
    public static int sumArray(int array[])
    {
        int sumArr = 0;
        for (int i = 0; i < array.length; i++)
        {
            sumArr += array[i];
        }
        return sumArr;
    }

    //in các giá trị được lưu trong mảng
    public static void printArray(int array[])
    {
        for (int i = 0; i < array.length; i++)
        {
            System.out.print("  " + array[i]);
        }
    }

    //Đảo mảng
    public static int[] ReverseArray(int[] arr)
    {
        int reArray[] = new int[arr.length];

        int j = arr.length - 1;
        for (int i = 0; i < arr.length; i++)
        {
            reArray[j] = arr[i];
            j--;
        }
        return reArray;
    }
}

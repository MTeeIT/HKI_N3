
// show cái package mà mình lưu cái file .class
package buoi24_9;
//tự mò tắt check spell đi

// lệnh import các gói thư viện tương tự như include trong C++
import java.util.Scanner;

public class Bai2 {
    // hàm main nhớ kỹ các từ khoá
    public static void main(String[] args) {// cái template khi mình tạo hàm main có hay ko cũng dc. Nhưng đa số để tránh lỗi
        int n;
   
        // Gọi lớp Scanner để tạo đối tượng nhập
        // (System.in): System là lệnh hệ thống, in là đầu vào
        Scanner input = new Scanner(System.in);
        
        //Nhap gia tri
        do
        {
           // out là chuẩn đầu ra, print: xuất trên 1 dòng, println: xuất rồi xuống dòng
           System.out.print("Nhap n = ");
           // gán giá trị cho biên n bằng đối tượng input chấm tới nextInt() ->(cái này cũng chư hiểu rõ)
           n = input.nextInt(); 
           if(n<1) System.out.println("\nNhap gia tri lon hon 0");
        }while(n<1);
        //Tong S
        float tong = 1f;
        for(int i=2; i <= n; i++)
        {
            tong += (1.0/i);
        }
        //Kq
        System.out.println("\nTong la: " + tong);
        // tron java nó vậi ă. Muốn hiển thị giá trị của biến, chuõi  thì dùng +<biến>
        // còn gì nữa ko
    }
    
}

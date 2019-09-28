
package buoi28_9;

import java.util.Scanner;

/**
 *Tinh tong cac phan tu trong 1 so nguyen
 * VD 23456 = 2+3+4+5+6
 * @author MTee
 */
public class tongPhanTuTrongSoNguyen 
{
    public static void main(String[] args) {
        int SoNguyen = 0, Tong = 0, tam;
     
        Scanner input = new Scanner(System.in);
        //Nhap gia tri vao 
        do
        {
            System.out.println("Nhap so nguyen = ");
            SoNguyen = input.nextInt();
            if (SoNguyen < 0) System.out.println("\nGia tri khong hop le !");
        }while (SoNguyen < 0);
        
        tam = SoNguyen;
while(tam > 10)
        {
            Tong+= tam % 10;
            tam /= 10;
        }
        Tong+=tam;
        System.out.println("Tong cac phan tu cua so nguyen " +SoNguyen+ " = "+Tong);
    }
}

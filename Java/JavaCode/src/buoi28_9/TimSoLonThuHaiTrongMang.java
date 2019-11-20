package buoi28_9;

import java.util.Scanner;
/**
 *Viet chuong trinh tim so lon thu hai trong mang cac so nguyen
 * @author MTee
 */
public class TimSoLonThuHaiTrongMang 
{
    public static void main(String[] args)
  {
    int sophantu;
    
      Scanner input = new Scanner(System.in);
    
      do 
        {          
            System.out.print("Nhap so phan tu mang = ");
            sophantu = input.nextInt();
            if (sophantu <= 0) System.out.println("Gia tri khong hop le !");
        }while (sophantu <= 0);
      
       int mangSoNguyen[] = new int[sophantu];// cấp phát vùng nhớ cho mảng

      nhapMang(mangSoNguyen, sophantu);
      xuatMang(mangSoNguyen);
      timSoLonThuHai(mangSoNguyen);
      
  }
    
    public static void nhapMang(int mangSoNguyen[],int sophantu)
    {
        Scanner input = new Scanner(System.in);
        for(int i=0; i<sophantu ;i++)
        {
            System.out.print("A["+(i+1)+"]=");
            mangSoNguyen[i]= input.nextInt();
        }
    }
    
    public static void xuatMang(int mangSoNguyen[])
    {
        System.out.println("Gia tri mang : ");
        for(int i=0;i < mangSoNguyen.length;i++)
        {
            System.out.print(" " + mangSoNguyen[i]);
        }
    }
    public static void timSoLonThuHai(int mangSoNguyen[])
    {
        int max = mangSoNguyen[0], maxx = mangSoNguyen[0];
        
      for(int i=0;i < mangSoNguyen.length;i++)
      {
          if(mangSoNguyen[i] > max)
              max = mangSoNguyen[i];
      }
      int flag = 0;
            for(int i=0;i < mangSoNguyen.length; i++)
            {
                if(mangSoNguyen[i] != max)
                {
                    maxx = mangSoNguyen[i];
                    flag = 1;
                    break;
                }
            }
            if(flag == 0)
                System.out.println("\nKhong co so lon thu hai trong mang!");
            else
            {
                for(int j = 0; j < mangSoNguyen.length; j++)
                {
                    if(mangSoNguyen[j] > maxx && mangSoNguyen[j] != max)
                        maxx = mangSoNguyen[j];
                }
                System.out.println("So lon thu hai: " +maxx);
            }
    }
    
}
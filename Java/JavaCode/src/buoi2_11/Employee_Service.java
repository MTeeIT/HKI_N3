package buoi2_11;

import java.util.Scanner;

/**
 * 1/Khai báo một mảng toàn cục là 1 Array chứa các đối tượng Employee
 * 2/Viết một phương thức nhập Nhân viên từ bàn phím, phương thức trả về NV vừa nhập
 * 3/Viết phương thức nhập vào một mảng chứa các đối tượng Employee
 * 4/Viết phương thức tìm kiếm Employee, tham số là một mảng chứa Employee, tham số thứ hai là một giá trị INT.
 * Phương thức trả về đối tượng Employee đầu tiên có trong mảng mà có ID = tham số thứ 2
 * 5/Viết phương thức sắp xếp mảng tham số là 1 mảng chứa các Employee,SX theo ID tăng dần
 * @author MTee
 */
public class Employee_Service {

    private Employee Arr[];

    public Employee[] getArr()
    {
        return Arr;
    }
    private int n;

    public Employee nhapNV()
    {
        Employee em = new Employee();
        em.input();
        return em;
    }

   public void nhapMangNV()
    {
        System.out.println("Nhập số lượng Nhân viên: ");
        Scanner input = new Scanner(System.in);
        n = input.nextInt();
        Arr = new Employee[n];
        for (int i = 0; i < n; i++)
        {
            System.out.println("Nhập Nhân viên thứ " +(i+1)+":");
            Arr[i] = new Employee();
            Arr[i].input();
        }
    }
   
   public Employee findEmployee(Employee employeeArr[], int ID)
   {
       for (int i = 0; i < employeeArr.length; i++)
       {
           if(employeeArr[i].getId() == ID)
           {
               System.out.println("Employee cần tìm là: ");
               return employeeArr[i];
           }
       }
       System.out.println("Không tìm thấy Employee");
       return null;
   }
   public void output()
    {
        System.out.println("Thông tin Nhân viên:");
        for (int i = 0; i < n; i++)
        {
            Arr[i].output(Arr[i]);
        }
    }
   
   public void sxEmployee(Employee employeeArr[])
   {
       for(int i = 0; i < employeeArr.length -1; i++)
           for ( int j = i + 1;j < employeeArr.length; j++)
           {
               if( employeeArr[i].getId() > employeeArr[j].getId())
               {
                    Employee tam = new Employee();
                    
                    tam = employeeArr[i];
                    employeeArr[i] = employeeArr[j];
                    employeeArr[j] = tam;               
               }
           }
               
   }
}

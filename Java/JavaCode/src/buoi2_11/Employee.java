package buoi2_11;

import java.util.Scanner;

/**
 * Thiết kế lớp Employee với các thuộc tính: id(int), name(string), basic_sal,
 * email, phone a) Viết các get, set b) Viết phương thức nhập thông tin Employee
 * từ bàn phím c) Viết phương thức tính lương tổng: "Sum_of_sal". Phương thức
 * nhận một tham số nguyên index: Lương tổng = basic_sal*index. Phương thức trả
 * về lương tổng d) Viết phương thức in thông tin 1 employee ra màn hình. Phương
 * thức có tham số là employee cần in e) Viết thêm 1 constructor cho phép thiết
 * lập tất cả các giá trị thuộc tính của employee
 *
 * @author MTee
 */
    public class Employee {

    public static void main(String[] args)
    {
        Employee nv1 = new Employee();
        Employee nv2 = new Employee(2, "Vo Le Khanh Duy", 3600, "123@gmail.com", "0123456789");

        System.out.println("\nNhap thong tin nhan vien 1:");
        nv1.input();

        nv1.output(nv1);
        System.out.println(" \"Tong Luong\": " + nv1.Sum_of_sal(50));

       
    }

    private int id;
    private String name;
    private float basic_sal;
    private String email;
    private String phone;

    public Employee()
    {

    }

    public Employee(int id, String name, float basic_sal, String email, String phone)
    {
        this.id = id;
        this.name = name;
        this.basic_sal = basic_sal;
        this.email = email;
        this.phone = phone;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public float getBasic_sal()
    {
        return basic_sal;
    }

    public void setBasic_sal(float basic_sal)
    {
        this.basic_sal = basic_sal;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public void input()
    {
        Scanner ip = new Scanner(System.in);
        System.out.print("\nNhap id: ");
        id = ip.nextInt();
        ip.nextLine();
        System.out.print("\nNhap ho ten: ");
        name = ip.nextLine();
        System.out.print("\nNhap luong co ban: ");
        basic_sal = ip.nextFloat();
        ip.nextLine();
        System.out.print("\nNhap email: ");
        email = ip.nextLine();
        System.out.print("\nNhap sdt: ");
        phone = ip.nextLine();
    }

    public float Sum_of_sal(int index)
    {
        return (index * basic_sal);
    }

    public void output(Employee nhanVien)
    {
        System.out.println("ID:" + nhanVien.getId());
        System.out.println("Name:" + nhanVien.getName());
        System.out.println("Basic_sal:" + nhanVien.getBasic_sal());
        System.out.println("Email:" + nhanVien.getEmail());
        System.out.println("Phone:" + nhanVien.getPhone());
    }
}

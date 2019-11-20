package BT_29_10;

import java.util.Scanner;

/**
 *
 * @author MTee
 */
public class Constructor {

    public String getID()
    {
        return ID;
    }

    public String getName()
    {
        return Name;
    }

    public String getPhone()
    {
        return Phone;
    }

    public String getAddress()
    {
        return Address;
    }

    public String getSex()
    {
        return Sex;
    }

    public float getMoney()
    {
        return Money;
    }
    
    
    private static String ID;
    private static String Name;
    private static String Phone;
    private static String Address;
    private static String Sex;
    private static float Money,DToan,DLy,DHoa;
    
    

    

    public Constructor()
    {
    }
    public Constructor(String _ID, String _Name, String _Phone, String _Address, String _Sex, float _Money)
    {
        ID = _ID;
        Name = _Name;
        Phone = _Phone;
        Address = _Address;
        Sex = _Sex;
        Money = _Money;
    }
    public static void Nhap(){
         Scanner sc = new Scanner(System.in);
        System.out.println("\nEnter ID  of Rùiocschos:");
        ID = sc.nextLine();
        System.out.println("\nEnter Name of Rùiocschos:");
        Name = sc.nextLine();
        System.out.println("\nEnter Phone of  Rùiocschos::");
        Phone = sc.nextLine();
        System.out.println("\nEnter Address of  Rùiocschos::");
        Address = sc.nextLine();
        System.out.println("\nEnter Sex of Rùiocschos::");
        Sex = sc.nextLine();
        System.out.println("\nEnter Money of  Rùiocschos::");
        Money = sc.nextFloat();
    }
    public static float DTB()
    {
        float KQDTB;
        Scanner sc = new Scanner (System.in);
        System.out.println("Điểm Toán của Rùi: ");
        DToan = sc.nextFloat();
        System.out.println("Điểm Lý của Rùi: ");
        DLy = sc.nextFloat();
        System.out.println("Điểm Hoá của Rùi: ");
        DHoa = sc.nextFloat();
        
        KQDTB = (DToan+DLy+DHoa)/3;
         return KQDTB;
    }
}

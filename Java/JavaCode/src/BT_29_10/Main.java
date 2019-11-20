package BT_29_10;


/**
 *
 * @author MTee
 */
public class Main {
    public static void main(String[] args){
        Constructor cs = new Constructor();
        Constructor.Nhap();
        System.out.println("*********Thông tin giá Rùi ngày 29/10 :*********");
        System.out.println("\nID: "+cs.getID());
        System.out.println("\nName: "+cs.getName());
        System.out.println("\nSex: "+cs.getSex());
        System.out.println("\nPhone: "+cs.getPhone());
        System.out.println("\nAddress: "+cs.getAddress());
        System.out.println("\nMoney: "+cs.getMoney());
      
        System.out.println("Điểm TB của Rùi là: "+Constructor.DTB());
}
    
    
}

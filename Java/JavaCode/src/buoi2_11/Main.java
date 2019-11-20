package buoi2_11;

/**
 *
 * @author MTee
 */
public class Main {

    public static void main(String[] args)
    {
        Employee_Service ES = new Employee_Service();
     
        
        ES.nhapMangNV();
       ES.output();
       Employee em = new Employee();
       em = ES.findEmployee(ES.getArr(),2);
       ES.sxEmployee(ES.getArr());
      ES.output();
//em.output(em);
       
        
      
    }
}

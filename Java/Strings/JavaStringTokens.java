import java.io.*;
    import java.util.*;



    public class Solution {

      
        public static void main(String[] args) 
        {

      
          Scanner scan = new Scanner(System.in);
          String str=scan.nextLine();
            str=str.trim();
            if(str.length()==0 || str==null) System.out.println("0");
            else {
                String[] res = str.split("[ !,?.\\_'@]+");
		      System.out.println(res.length);
		      for(int i=0;i<res.length;i++)
		          System.out.println(res[i]);

            }
          
        }
    }

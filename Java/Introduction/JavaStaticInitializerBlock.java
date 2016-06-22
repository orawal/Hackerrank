public static boolean flag = false;
public static Scanner sc = new Scanner(System.in);
public static int B = sc.nextInt();
public static int H = sc.nextInt();
static {
    if(B > 0 && H > 0) flag = true;
    else {
        System.out.println("java.lang.Exception: Breadth and height must be positive");
        flag = false;
    }
}

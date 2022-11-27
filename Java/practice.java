// 標準入力とループ処理
import java.util.*;

// 1行目にデータの個数が整数で表示され、2行目以降の文字列データを出力する
public class practice {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int count = sc.nextInt();

    String data;
    for(int i = 0; i < count; i++) {
      data = sc.next();
      System.out.println(data);
    }

  
  }
}
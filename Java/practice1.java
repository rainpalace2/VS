// 標準入力とループ処理(複数データを読み込む)
import java.util.*;

// 標準入力で2つの整数が与えられる
// 1つ目の数値から2つ目の数値までを、1ずつ増加させながら、1行ずつ順番に出力する
public class practice1 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int num1 = sc.nextInt();
    int num2 = sc.nextInt();

    for(int i = num1; i <= num2; i++) {
      System.out.println(i);
    }
  }
}
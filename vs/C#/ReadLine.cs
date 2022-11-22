// 標準入力
using System;
public class program {
  public static void Main() {
    // 標準入力から受け取った値（文字列）を入れる変数を準備
    var data = "";
    // data変数に標準入力から受け取った値を代入する
    data = Console.ReadLine();
    Console.WriteLine("hello " + data);

    var data1 = 0;
    // int.Parseメソッドは文字列の数字を計算できる数値に変換する
    data1 = int.Parse(Console.ReadLine());
    Console.WriteLine(data1 * 2);
  

   // ReadLineメソッドは１行ずつデータを読み込む
   // 複数のデータを読み込むにはReadLineメソッドを複数回実行する必要がある
   var count = 0;
   count = int.Parse(Console.ReadLine());
   Console.WriteLine("データ個数" + count);
   var data2 = "";
   for(var i = 0; i < count; i++) {
    data = Console.ReadLine();
    Console.WriteLine("hello " + data2);
   }
 }
}
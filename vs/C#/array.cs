using System;
using System.Collections;

public class Array {
  public static void Main() {
    string[] team = {"勇者", "戦士", "魔法使い"};
    // Console.WriteLine(team.Length);

    // jobはループ内で使う変数
    // teamは取り出したい配列の変数名
    // in teamからjobへ一つずつ要素が送られる
    foreach (string job in team) {
      Console.WriteLine(job);
    }
  }
}
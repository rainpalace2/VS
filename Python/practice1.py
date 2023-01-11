# 1行の入力
s = input()
print(s)

# 10行の入力
for i in range(10):
    s = input()
    print(s)

# 半角スペース区切りでの分割
s = "one two three four five"
t = s.split()

for i in range(5):
  # split関数の返り値はリスト型
    print(t[i])

# 1行の整数の入力
n = int(input())
print(n)

# 2つの整数の半角スペース区切りの入力
a, b = map(int, input().split(" "))
print(a)
print(b)

# 5つの整数の半角スペース区切りの入力
n = list(map(int, input().split()))

for i in range(5):
    print(n[i])
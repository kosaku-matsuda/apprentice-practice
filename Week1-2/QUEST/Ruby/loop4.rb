# 4. 総和
# 2つの整数 x と y が与えられ、x から y までの足し算の結果を出力する関数 sum を定義してください。

#stepを使ったのも書いてみました。
def sum(x, y)
  sum = 0
  x.step(y, 1) do |i|
    sum += i
  end
  puts sum
end

sum(10, 80)

# x.step(y, 1)のところに例えばx = 1, y = 4 とすると
# 1,2,3,4という配列ができてそれをiに一個ずつ格納していく
# するとsumは初期値が0なのでsum（０）+ 1から始まり
# 次にsum（１）+ 2 となるので出力は"1, 3" とどんどん前の数字にeachのiが入り増えていく

# def sum(x, y)
#   sum = 0
#   (x..y).each do |i|
#     sum += i
#   end
#   puts sum
# end



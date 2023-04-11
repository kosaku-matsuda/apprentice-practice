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

# def sum(x, y)
#   sum = 0
#   (x..y).each do |i|
#     sum += i
#   end
#   puts sum
# end

sum(10, 80)

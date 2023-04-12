# 条件分岐を使うことができる
# 1. 比較
# 2つの整数 x, y の大小を比較し、xとyの大小関係を出力する関数 greater を定義してください。

def greater(x, y)
  if x > y
    puts "x > y"
  elsif x < y
    puts "x < y"
  else x == y
    puts "x == y"
  end
end

greater(30, 10)
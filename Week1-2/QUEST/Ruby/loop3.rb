# 3. 総和
# 1 から 100 までの足し算の結果を出力する関数 sum_1_100 を定義してください。

def sum_1_100
  sum = 0
  for i in 1..100 do
    sum += i
  end
  puts sum
end

sum_1_100
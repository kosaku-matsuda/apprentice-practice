# 2. map
# 与えられた整数の配列の要素を2乗した配列を返す square 関数を定義してください。なお、map メソッドを使うようにしてください。

def square(numbers)
  numbers.map { |n| n ** 2 }
end

# 配列を定義
numbers = [25, 49, 100]

# 関数を呼び出し
squared_numbers = square(numbers)

# 結果を出力
puts squared_numbers

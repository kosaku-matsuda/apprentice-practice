# 3. select
# 整数の配列から偶数を抽出した配列を返す関数 select_even_numbers を作成してください。なお、select メソッドを使うようにしてください。
numbers = [1, 2, 3, 4, 5, 6]

def select_even_numbers(numbers)
  puts numbers.select {|num| num.even?}
end

select_even_numbers(numbers)


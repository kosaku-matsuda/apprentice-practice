# 再起処理をフィボナッチで再現
# 再起処理とは
# 「再帰関数」とは、再帰的定義された関数（手続き）のことで、処理の中にその関数自身を呼び出す記述があるもののことをいいます。
# 自分自身を呼び出す関数ともいえます。
# ※Ruby向けの表現だと、自分自身を呼び出すメソッド。
# また、関数が自分自身を呼び出して実行することを「再帰呼び出し」といいます。


def fibonacci(n)
  if n == 0 || n == 1
    return n
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts fibonacci(5)

# 重要！
# return fibonacci(n - 1) + fibonacci(n - 2)の動きはどうなっているのか？
# 例をfibonacci(5)として説明する
# まずfibonacci(5-1=4) + fibonacci(5-2=3)となるのでfibonacci(5)は7かとなるが違います。
# ここからさら fibonacci(4) + fibonacci(3)を再帰呼び出しします。
# ここで再帰呼び出しが出てきます。
# 再起呼び出しなのでこの後はこうなります。
# fibonacci(4) と fibonacci(3) を再帰的に呼び出し、それぞれの結果を足したものを返します。
# return fibonacci(4 - 1) + fibonacci(3 - 2)
# つまり次はfibonacci(3) + fibonacci(2)となり再起的にfibonacci(3) と fibonacci(2)を呼び出します。
# return fibonacci(3 - 1) + fibonacci(2 - 2)となるので
# 次はfibonacci(2) と fibonacci(0)を呼び出します
# すると次は return fibonacci(2 - 1) + fibonacci(0 - 2)となるので
# ここでやっとfibonacci(1)とfibonacci(0)となるので最後にこの二つを呼び出します。

def fibonacci(n)
  if n == 0 || n == 1
    return n
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end

# fibonacci(n)が"1"と"0"の場合"0"は0を返し、"1"は1を返します。
# ここで呼び出しもとを辿ります。
# 最後に呼び出したのはfibonacci(2)とfibonacci(0)ですが0と1はそもそも最初から0か1なので
# fibonacci(2) の呼び出し元である fibonacci(3) に戻り、fibonacci(2) の結果が 1 であったため、fibonacci(3) は 1 を返します。
# fibonacci(4) の呼び出し元である fibonacci(5) に戻り、fibonacci(3) の結果が 1 であり、fibonacci(4) の結果が 2 であったため、fibonacci(5) は 3 を返します。
# このように、再帰的に呼び出しが行われ、各項目の計算結果がスタックされていき、最終的にフィボナッチ数列の第 5 項目が計算され、その値である 3 が返されます。



# fib = [0, 1]
# def fib(n)
# fib(n) = fib(n-2) + fib(n-1)

# puts fib.include?(2)

# F = []
# def fib(n)
#   if n == 0 || n == 1
#     return 1
#   elsif F[n] != nil 
#     return F[n]
#   else
#     F[n] = fib(n - 2) + fib(n - 1)
#   end
# end

# p "フィボナッチ数列の何項目が知りたいん？うちが教えたるで"

# num = gets.to_i

# if num >= 1
#   p fib(num-1)
# else
#   p "ちゃんと入力しやん人はいややぁ"
# end
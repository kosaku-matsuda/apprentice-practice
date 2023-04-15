# フィボナッチ数列(advanced)
# 家のお手伝いを毎日継続すると、継続日数 n 日に応じて、その日にもらえるお小遣いの金額が増えていきます。お小遣いの金額は以下の条件に従ってもらうことができます。
# f(0) = 0 円 f(1) = 1 円 f(n) = f(n-1) + f(n-2) 円 (n ≧ 2)

# 整数 n に対して、n 日間お手伝いを継続した時のお小遣いの金額を算出する関数 fibonacci を定義してください。


def fibonacci(n)
  if n == 0
    return 0
    # 0日目は０円だから継続していない
  elsif n == 1
    return 1
    # １日目だと１円だから継続していない
  else
    # 1日以上なのでelseで処理を行う
    # 例　二日目の場合、昨日の金額が1円で一昨日が0円なので０+1で1円。
    # fibという配列変数を作り０日目と１日目を先に格納しておく
    # 何故(２..n)と２からなのかは0日目と１日目はもう上で定義しており、2日目からを計算するから
    # nにはfibonacci(n)の任意の日にちを表す数字が入ってくる、それをeachでiに渡す
    fib = [0, 1]
    (2..n).each do |i|
      fib[i] = fib[i-1] + fib[i-2]
      # eachでfib[i]は最初fibの２..nの２から始まるためfib[2] = となり
      # fibの配列のインデックス二番目にはfib[i-1] + fib[i-2](2-1 + 2-2 = 1)は１になる
      # fib[3]にfib[2]つまりfib[さっき格納した1]そのあとfib[3-2=1]だから1+1で2だからfib[3]には2が入る。
      # fib[4]にfib4-1は3　さっき格納したfib[3]つまり2 + fib[4-2]つまりfib[2]に格納した1 2+1 の3がfib[4]には格納される
    end
    return fib[n]
  end
end


puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(7)
puts fibonacci(30)
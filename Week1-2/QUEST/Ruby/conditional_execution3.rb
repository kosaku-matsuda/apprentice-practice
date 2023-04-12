# 3. XOR
# 2つのブーリアン値 x と y が与えられ、x と y のうちどちらかが真なら true を出力し、
# 両方真もしくは両方偽なら false を出力する関数 xor を定義してください。

#どちらも一緒だったらを判定するためにxとyが等しかったらの逆にできる!=を使い等しかったらelseの処理falseを出力するようにする
def wor(x, y)
  if x != y
    puts true
  else
    puts false
  end
end

xor(true, true)
# 2. 羊
# あなたは眠れなくなったので羊の数を数えることにしました。羊の数 n が与えられ

# 羊が1匹 羊が2匹 羊が3匹 ...

# と、n 回羊の数えを出力する関数 sheep を定義してください。


def sheep(n)
  i = 1
  while i <= n do
    puts "羊が#{i}匹"
    i += 1
  end
end

sheep(30)


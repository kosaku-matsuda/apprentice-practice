# 1. each
# 従業員の名前がID順に配列で渡されるので、IDと従業員の名前をセットにして出力する print_names 関数を定義してください。なお、each メソッドと with_index メソッドを使うようにしてください。

names = ['上田', '田仲', '堀田']

def print_names(names)
  names.each.with_index(1) do |name, i|
    puts "#{i}. #{name}"
  end
end

print_names(names)

# 似たものでeach_with_indexというメソッドがあるが
# +1と記述しないといけない
# with_index()を使えば引数に入れた数字から強制的に表示してくれる


# rubocopによる修正版

# 1. each
# 従業員の名前がID順に配列で渡されるので、IDと従業員の名前をセットにして出力する print_names 関数を定義してください。なお、each メソッドと with_index メソッドを使うようにしてください。

# names = %w[上田 田仲 堀田]

# def print_names(names)
#   names.each.with_index(1) do |name, i|
#     puts "#{i}. #{name}"
#   end
# end

# print_names(names)

# 似たものでeach_with_indexというメソッドがあるが
# +1と記述しないといけない
# with_index()を使えば引数に入れた数字から強制的に表示してくれる

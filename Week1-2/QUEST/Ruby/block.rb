names = ['上田', '田仲', '堀田']

def print_names(names)
  names.each.with_index(2) do |name, i|
    puts "#{i}. #{name}"
  end
end

print_names(names)

# 似たものでeach_with_indexというメソッドがあるが
# +1と記述しないといけない
# with_index()を使えば引数に入れた数字から強制的に表示してくれる
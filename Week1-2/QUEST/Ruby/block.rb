names = ['上田', '田仲', '堀田']

def print_names(names)
  names.each.with_index(1) do |name, i|
    puts "#{i}. #{name}"
  end
end

print_names(names)
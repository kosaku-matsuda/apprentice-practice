# 首都
# 国名と首都名が組み合わせになったハッシュに対して、
# "#{国名}の首都は#{首都名}です"と出力する関数 print_capitals を作成してください。

capitals = {
  '日本' => '東京',
  'アメリカ' => 'ワシントンD.C',
  'イギリス' => 'ロンドン'
}

def print_capitals(capitals)
  capitals.each do |k, v|
  puts "#{k}の首都は#{v}です"
  end
end

print_capitals(capitals)
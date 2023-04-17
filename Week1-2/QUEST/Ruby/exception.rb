def calculate(num1, num2, operator)
  # unlessを使ってnum達の型が整数かどうかをis_a?を使って調べるis_a?は()の中の型と一致したらtrueを返し違ったらfalseを返す。
  # unlessは偽、つまりfalseなら処理を実行するため&&でどちらか違ったらfalseを返すのでraiseの処理が行われる
  unless num1.is_a?(Integer) && num2.is_a?(Integer)
    # raiseは強制的にエラーを起こします。
    #整数でなく小数点などがあるとArgumentErrorを発生させ以下のメッセージをユーザーに表示する
    raise ArgumentError.new('num1、 num2 には整数を入力してください')
  end

  # 配列に演算子を格納し、include?で引数にメソッドで受け取ったoperatorに配列の中のものがあるかを探す
  # それ以外のものが入っていたらfalseが返ってくるので上と同じようにraiseでエラー処理を行う
  unless ['+', '-', '*', '/'].include?(operator)
    raise ArgumentError.new('演算子には +、-、*、/ のいずれかを使用してください')
  end
  
  # ゼロによる割り算は許可されていないのでifでoperatorが/且つnum2の値が0ならZeroDivisionErrorでエラーを発生させユーザーに表示する
  if operator == '/' && num2 == 0
    raise ZeroDivisionError.new('ゼロによる割り算は許可されていません')
  end

  # 次に上の二つを通過してきた場合は下でcaseで分岐してそれぞれの処理を行う
  case operator
  when '+'
    return num1 + num2
  when '-'
    return num1 - num2
  when '*'
    return num1 * num2
  # 割り算に関しては5割る2とすると2.5ではなく2と返ってきたため、
  # 色々と調べてnum1の方をto_fで浮動小数点数に変換したらできましたのでこの処理をしてみました。
  # num1とnum2がお互い偶数の場合は小数点はいらないので以下のようにしています。
  when '/'
    num3 = 0
    if num1 % 2 == 0 && num2 % 2 == 0
      num3 = num1 / num2
      return num3.to_i
    else
      return num1.to_f / num2
    end
  end
end

puts '1番目の整数を入力してください:'
num1 = gets.chomp.to_i

puts '2番目の整数を入力してください:'
num2 = gets.chomp.to_i

puts '演算子(+, -, *, /)を入力してください:'
operator = gets.chomp

# beginでエラーが起こるかもしれない処理を開始することを示し、その後に実行する処理を書く
# calculateメソッドを呼び出してresultに変数resultに代入する
# もし例外が起きた場合はrescueでエラーメッセージを表示する、起きなければputs resultで計算結果を表示する。
begin
  result = calculate(num1, num2, operator)
  puts result
# rescueでエラーが起きた時に実行する処理を書く
# 変数eにエラーオブジェクトが代入されて、その中のメッセージを表示するようにしている
rescue ArgumentError, ZeroDivisionError => e
  puts e.message

# 最後にendを使ってbeginの終わりを示します。
end





# 2. 両替
# 引数として金額、変換元の通貨、変換先の通貨を受け取り、変換後の金額を出力する両替関数を作成します。

# まず、米ドル（USD）に対するさまざまな通貨の換算率を格納した conversion_rates というハッシュを作成してください。キーに通貨名をシンボルで指定し、値には通貨の換算率を数値で格納してください。

# 次に、金額、変換元の通貨、変換先の通貨、返還率を受け取り、変換後の金額を出力する convert_currency 関数を作成してください。


conversion_rates = {
  usd: 1.0,
  jpy: 110.0,
  eur: 0.8
}
# 金額、変換元の通貨、変換先の通貨、返還率
def convert_currency(amount, source_currency, target_currency, conversion_rates)

end

# amount：整数
# source_currency：シンボル
# target_currency：シンボル
# conversion_rates：ハッシュ

# def convert_currency(amount(100), source_currency(:usd(1.0)), target_currency(:jpy(110.0)), conversion_rates)
#   source_rate = conversion_rates[source_currency]
#   target_rate = conversion_rates[target_currency]
#   target_amount = (amount / source_rate) * target_rate
#   return target_amount.to_i
# end

# conversion_rates = {
#   usd: 1.0,
#   jpy: 110.0,
#   eur: 0.8
# }

# puts convert_currency(100, :usd, :jpy, conversion_rates) #=> 11000


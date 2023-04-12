# 外部ライブラリを使うことができる
# 1. パッケージ管理ツール
# パッケージ管理ツールとは、外部ライブラリを管理するためのツールです。Ruby では gem という形式で提供されています。gem を用いて、以下のことを実行してください。

# ・世の中に公開されている gem を探し、1つ選択してください
# ・その gem をインストールしてください
# ・インストールされている gem の一覧を表示してください
# ・今回インストールした gem をアンインストールしてください

# ターミナルでのコマンド
# gem install faker

require 'faker'

puts Faker::Name.name

puts Faker::Internet.email

# 出力結果１
# Latashia Tillman
# roland@von.co

# 出力結果２
# Kim Mante
# carroll@nader.io

# 実際に使ってみました。
# このあとアンインストールします。

# ターミナルでのコマンド
# gem uninstall faker
require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

#1と2の入力による条件分岐
if memo_type == 1
#新規メモの作成
p "新規でメモを作成します。拡張子なしで名前を入力してください"
file_name = gets.chomp

p "メモの内容を記入して下さい。Ctrl+Dで保存します"
imput_memo = STDIN.read
memo = imput_memo.chomp

CSV.open("#{file_name}.csv","w") do |csv|
p "[#{memo}]"
end

elsif memo_type == 2
p "保存されているメモを編集します。拡張子なしで名前を入力してください"   #既存メモの編集


else 
p "1か2の数値を入力してください"
end
gen_audio() {
  # append 20s of silence to audio
  ffmpeg -y \
    -i $1.aiff \
    -f lavfi -t 20 -i anullsrc \
    -filter_complex "[0:a][1:a]concat=n=2:v=0:a=1" \
    $1.mp4

  rm $1.aiff

  # -50% size (ngx_http_gzip_static_module)
  zopfli $1.mp4
}

IFS=""
imc_array=(
  a b c d e f g h i j k l m n o p q r s t u v w x y z
  0 1 2 3 4 5 6 7 8 9

  ampersand
  apostrophe
  at
  "bracket close"
  "bracket open"
  colon
  comma
  equals
  exclamation
  "full stop"
  hyphen
  percentage
  plus
  quotation
  question
  slash

  space
  error
  "new line"

  "lower case"
  "upper case"
  imc

  backspace
  invalid
)

mkdir -p voice/wabun

for word in ${imc_array[@]}; do
  file=$(tr " " "-" <<< $word)

  echo "=============================="
  echo "word: [$word] file: [$file]"

  say "$word" -o voice/$file.aiff

  gen_audio voice/$file
done


# https://en.wikipedia.org/wiki/Wabun_code
wabun_array=(
  ア:a    イ:i    ウ:u    エ:e    オ:o
  カ:ka   キ:ki   ク:ku   ケ:ke   コ:ko
  サ:sa   シ:shi  ス:su   セ:se   ソ:so
  タ:ta   チ:chi  ツ:tsu  テ:te   ト:to
  ナ:na   ニ:ni   ヌ:nu   ネ:ne   ノ:no
  ハ:ha   ヒ:hi   フ:fu   ヘ:he   ホ:ho
  マ:ma   ミ:mi   ム:mu   メ:me   モ:mo
  ヤ:ya           ユ:yu          ヨ:yo
  ラ:ra   リ:ri   ル:ru   レ:re   ロ:ro
  ワ:wa   ヰ:wi           ヱ:we   ヲ:wo
  ン:n

  和文:wabun
  濁点:dakuten
  半濁点:handakuten
  長音符:choonpu
  読点:toten
  句点:kuten
  左括弧:hidari-kakko
  右括弧:migi-kakko
  平仮名:hiragana
  片仮名:katakana
  無効:invalid
  backspace:backspace
  space:space
)

for line in ${wabun_array[@]}; do
  word=${line%:*}
  file=${line#*:}

  rate=30
  if (( ${#word} > 1 )); then
    rate=180
  fi

  echo "=============================="
  echo "word: [$word] file: [$file] rate: [$rate]"

  say "$word" -v Kyoko -r $rate -o voice/wabun/$file.aiff

  gen_audio voice/wabun/$file
done

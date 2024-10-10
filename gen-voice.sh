char_array=(
  a b c d e f g h i j k l m n o p q r s t u v w x y z
  0 1 2 3 4 5 6 7 8 9
  error
  ampersand
  apostrophe
  at
  bracket-close
  bracket-open
  colon
  comma
  equals
  exclamation
  full-stop
  hyphen
  multiplication
  percentage
  plus
  quotation
  question
  slash
  new-line
  invalid
)

for ch in ${char_array[@]}; do
  echo "[$ch]"
  say $ch -o voice/$ch.aiff

  # https://superuser.com/questions/579008/add-1-second-of-silence-to-audio-through-ffmpeg
  ffmpeg -y \
    -i voice/$ch.aiff \
    -f lavfi -t 20 -i anullsrc \
    -filter_complex "[0:a][1:a]concat=n=2:v=0:a=1" \
    voice/$ch.mp4
done

rm voice/*.aiff

# ngx_http_gzip_static_module
zopfli voice/*.mp4
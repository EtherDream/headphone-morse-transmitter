char_array=(
  a b c d e f g h i j k l m n o p q r s t u v w x y z
  0 1 2 3 4 5 6 7 8 9
  backspace
  invalid
)
for ch in ${char_array[@]}; do
  echo "[$ch]"
  say $ch -o voice/$ch.aiff
  ffmpeg -i voice/$ch.aiff voice/$ch.mp4
done

rm voice/*.aiff
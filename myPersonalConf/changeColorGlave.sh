Fcolor=$(cat ~/.cache/wal/colors.css | grep -i -e --back -e --color10 | awk {'print $2'} | cut -d";" -f1 | head -1)
Scolor=$(cat ~/.cache/wal/colors.css | grep -i -e --back -e --color10 | awk {'print $2'} | cut -d";" -f1 | tail -1)
cat ~/.config/glava/bars.glsl | head -19 > ~/.config/glava/bars.glsl
echo "#define COLOR @fg:mix($Fcolor, $Scolor, clamp(d / GRADIENT, 0, 1))" >> ~/.config/glava/bars.glsl
cat ~/.config/glava/bars.glsl | tail -14 >> ~/.config/glava/bars.glsl
killall glava
glava -d

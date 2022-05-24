# majsoul-plus-nazrin
![alt_text](https://github.com/L33tw33b/majsoul-plus-nazrin/blob/master/pics/nazrin_mahjong.png)<br>
**Replaces Ichihime to Nazrin. Original artwork by @ku_shi**

## Installation
- Goto releases tab and click `Touhou.Nazrin.Mod.mspe`
- Open up Majsoul Plus
- Goto Extension Tab
- Click ![alt_text](https://github.com/L33tw33b/majsoul-plus-nazrin/blob/master/pics/download.jpg) in the interface and choose the downloaded file
- Enable the mod

## Advanced settings
### Replace other characters
1. Rename the following folders to their respective character names (Their names can be found inside `%AppData%/Roaming/'Majsoul Plus'/static/2/v0.10.1.w/en/extendRes/charactor/` directory:<br> 
- `assets\audio\sound\{name}`<br>
- `assets\extendRes\charactor\{name}`<br>
2. Edit `resourcepack.json` in the "resourcepack" array for all assests. i.e:
- `"extendRes/charactor/yiji/bighead.png"` -> `"extendRes/charactor/{name}/bighead.png"` <br>
- `"audio/sound/yiji/act_babei.mp3"` -> `"audio/sound/{name}/act_babei.mp3"` <br>
3. Edit `script.js` in line `80`(id found in `%AppData%\Roaming\Majsoul Plus\static\2\v0.10.1.w\en\extendRes\emo` directory: <br>
- `case {id number}:`

## Todo:
- Replace Emotes
- Replace voice tracks
- I don't really care about the bio

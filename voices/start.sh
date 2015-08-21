#!/bin/sh

curl "https://jdd58fkejgh09lyb@api.voicetext.jp/v1/tts" \
     -o "test.wav" \
     -d "text=しゅうたのこうべのばーばはかっこわるい。しゅうたはあした甲子園にいきます。そしてこうこうやきゅうをみます。でもしゅうたはばか" \
     -d "speaker=hikari" \
     -d "emotion=anger" \
     -d "emotion_level=4" \
     -d "pitch=105" \
     -d "speed=105"

afplay /Users/webos/scripts/trigger-make-apps/voices/test.wav

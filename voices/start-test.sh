#!/bin/sh

curl "https://api.voicetext.jp/v1/tts" \
     -u "jdd58fkejgh09lyb:" \
     -d "text=そういうことはよく調べるのね！" \
     -d "speaker=hikari" \
     -d "emotion=anger" \
     -d "emotion_level=4" \
     -d "pitch=105" \
     -d "speed=105"


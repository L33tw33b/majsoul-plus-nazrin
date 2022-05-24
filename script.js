// 修改一姬语音台词以及人物简介
requestAnimationFrame(function autoRun() {
  try {
    const arrBackup = cfg.voice.sound.groups_
    if (!arrBackup || arrBackup.length === 0) {
      throw new Error();
    }
    console.log('Hacked语音文本');
    Object.entries(cfg.voice.sound.groups_).forEach(([soundID, soundGroup]) => {
      if (soundID == 1) {
        const changeMap = {
          "获得语音": {
            "words": 'hello',
          },
          "登录语音普通": {
            "words": 'sup'
          },
          "登录语音满羁绊": {
            "words": 'sup'
          },
          "大厅交互语音1": {
            "words": ''
          },
          "大厅交互语音2": { //lobby_normal5
            "words": 'Deep Dark Fantasy'
          },
          "大厅交互语音3": {
            "words": 'You are a retard'
          },
          "大厅交互语音4": {
            "words": 'Shut up disabled people'
          },
          "大厅交互语音5": {
            "words": ''
          },
          "大厅交互语音6": {
            "words": 'No Milk lol'
          },
          "大厅交互语音7": {
            "words": ''
          },
          "大厅交互语音8": {
            "words": ''
          },
          "送礼物语音普通": {
            "words": 'lol ty'
          },
          "送礼物语音喜好": {
            "words": 'nice cheese'
          },
          "好感度升级语音1": {
            "words": ''
          },
          "好感度升级语音2": {
            "words": ''
          },
          "好感度升级语音3": {
            "words": ''
          },
          "好感度升级语音4": {
            "words": 'thank u for ur lifesavings'
          }
        };
        soundGroup.forEach(soundObject => {
          soundObject.level_limit = 0;
          if (changeMap.hasOwnProperty(soundObject.name_chs)) {
            for (let [key, val] of Object.entries(changeMap[soundObject.name_chs])) {
              ['_chs', '_en', '_jp'].forEach(suffix => soundObject[key + suffix] = val)
            }
          }
        });
      }
    });
    console.log('Hacked简介文本');
    cfg.item_definition.character.rows_.forEach(chr => {
      const helper = (key, val) => {
        ['', '_chs', '_en', '_jp'].forEach(suffix => chr[key + suffix] = val)
      };
      switch (chr.id) {
        case 200001:
          chr.name = 'ナズーリン';
          chr.name_chs = 'ナズーリン';
          chr.name_en = 'Nazrin';
          chr.name_jp = 'ナズーリン';
          helper('desc_cv', 'Mouse from findsounds.com');
          helper('desc', 'Mouse Youkai from Touhou Project, general store clerk');
          helper('desc_age', '>1000');
          helper('desc_birth', 'lol');
          helper('desc_bloodtype', 'mouse blood');
          helper('desc_hobby', 'Not Mahjong');
          helper('desc_stature', 'average rat height');
          break;
      }
    });
  } catch (error) {
    raf = requestAnimationFrame(autoRun);
  }
});
(function () {
  console.log("加入开局语音及胡牌语音");
  const oldNewRoundplay = view.ActionNewRound.play;
  view.ActionNewRound.play = function (e) {
    if (view.DesktopMgr.Inst["player_datas"][view.DesktopMgr.Inst["seat"]]["character"]["charid"] === 200001)
      Laya.SoundManager.playSound("sound/game_start_200001.mp3", 1, {
        run: () => {}
      });
    return oldNewRoundplay.call(this, e)
  }
  const oldmehule = view.ViewPlayer_Me.prototype.HulePrepare;
  view.ViewPlayer_Me.prototype.HulePrepare = function (e, i, n) {
    if (view.DesktopMgr.Inst["current_step"] > 0 && view.DesktopMgr.Inst["player_datas"][view.DesktopMgr.Inst["seat"]]["character"]["charid"] === 200001)
      Laya.SoundManager.playSound("sound/hupai_200001.mp3", 1, {
        run: () => {}
      });
    return oldmehule.call(this, e, i, n)
  }
})();


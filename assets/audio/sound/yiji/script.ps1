

$NumArray = @(
'act_babei.mp3',
'act_chi.mp3',
'act_drich.mp3',
'act_kan.mp3',
'act_pon.mp3',
'act_rich.mp3',
'act_ron.mp3',
'act_tumo.mp3',
'extra',
'fan_bai.mp3',
'fan_bei.mp3',
'fan_chunquandaiyaojiu.mp3',
'fan_chunzhengjiulianbaodeng.mp3',
'fan_dasanyuan.mp3',
'fan_dasixi.mp3',
'fan_dihu.mp3',
'fan_dong.mp3',
'fan_dora1.mp3',
'fan_dora10.mp3',
'fan_dora11.mp3',
'fan_dora12.mp3',
'fan_dora13.mp3',
'fan_dora2.mp3',
'fan_dora3.mp3',
'fan_dora4.mp3',
'fan_dora5.mp3',
'fan_dora6.mp3',
'fan_dora7.mp3',
'fan_dora8.mp3',
'fan_dora9.mp3',
'fan_doublebei.mp3',
'fan_doubledong.mp3',
'fan_doublenan.mp3',
'fan_doublexi.mp3',
'fan_drich.mp3',
'fan_duanyao.mp3',
'fan_duiduihu.mp3',
'fan_erbeikou.mp3',
'fan_fa.mp3',
'fan_guoshishisanmian.mp3',
'fan_guoshiwushuang.mp3',
'fan_haidi.mp3',
'fan_hedi.mp3',
'fan_hunlaotou.mp3',
'fan_hunquandaiyaojiu.mp3',
'fan_hunyise.mp3',
'fan_jiulianbaodeng.mp3',
'fan_lingshang.mp3',
'fan_liujumanguan.mp3',
'fan_lvyise.mp3',
'fan_nan.mp3',
'fan_pinghu.mp3',
'fan_qianggang.mp3',
'fan_qiduizi.mp3',
'fan_qinglaotou.mp3',
'fan_qingyise.mp3',
'fan_rich.mp3',
'fan_sananke.mp3',
'fan_sangangzi.mp3',
'fan_sansetongke.mp3',
'fan_sansetongshun.mp3',
'fan_sianke.mp3',
'fan_siankedanqi.mp3',
'fan_sigangzi.mp3',
'fan_tianhu.mp3',
'fan_tumo.mp3',
'fan_xi.mp3',
'fan_xiaosanyuan.mp3',
'fan_xiaosixi.mp3',
'fan_yibeikou.mp3',
'fan_yifa.mp3',
'fan_yiqitongguan.mp3',
'fan_zhong.mp3',
'fan_ziyise.mp3',
'gameend_beiman.mp3',
'gameend_jiuzhongjiupai.mp3',
'gameend_leijiyiman.mp3',
'gameend_manguan.mp3',
'gameend_noting.mp3',
'gameend_sanbeiman.mp3',
'gameend_sifenglianda.mp3',
'gameend_sigangliuju.mp3',
'gameend_tiaoman.mp3',
'gameend_tingpai.mp3',
'gameend_yiman1.mp3',
'gameend_yiman2.mp3',
'gameend_yiman3.mp3',
'gameend_yiman4.mp3',
'gameend_yiman5.mp3',
'gameend_yiman6.mp3',
'game_top.mp3',
'ingame_baopai.mp3',
'ingame_beiman.mp3',
'ingame_lianda.mp3',
'ingame_remain10.mp3',
'ingame_yiman.mp3',
'lobby_levelup1.mp3',
'lobby_normal1.mp3',
'lobby_normal2.mp3',
'lobby_normal3.mp3',
'lobby_normal4.mp3',
'lobby_normal5.mp3',
'lobby_normalmax1.mp3'
'lobby_normalmax2.mp3',
'lobby_normalmax3.mp3',
'lobby_playerlogin.mp3',
'lobby_playerlogin_max.mp3'

)

ForEach

($number in $numArray) {

Copy-Item ".\rat.mp3" -Destination ".\$number"

}

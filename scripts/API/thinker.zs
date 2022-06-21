#priority 65
#loader contenttweaker

// -------------------------------------------------------------
/*
 *  自定义匠魂词条调整。
 *  防具类型的词条因有些计算方式比较特别，所以这些比较特别的暂不支持修改。
 *  单独分一个文件原因是脚本加载器不同。
 *  若没有特定说明，能接受的范围是：[0.0 ~ 32767.0]，但建议不要设定为0，有可能空指针。
 *  至于为什么小数也是32767，因为有些位置有奇怪的转型。
 */

/*
 *  设置大轩词条在秒杀时的伤害倍率。
 *  秒杀的原理实际上符合条件后造成对方最大生命值的一个额外倍数，通常情况可以秒杀，但不排除特殊情况。
 *  如果伤害倍率过高，会造成相当大的武器耐久损耗，同时若是西洋剑的话，会造成更多的灰色爱心。
 *  范围：[1.0~10000.0]  默认：3.0
 */
static ticBxKillTargetRate as float = 3.0;

//知识就是力量 词条的最大伤害倍率。 默认：1.5
static ticExpPower as float = 1.5;

//梗子之力 词条的加成倍率及削减倍率。默认：[1.7,0.1]
static ticCaigengziPower as float[] = [1.7,0.1];

//恶臭的暗无 词条造成加成倍率及削减倍率。默认：[4.0,0.5]
static ticAnwuPower as float[] = [4.0,0.5];

//以小欺大 词条造成的最高伤害倍率。 默认：3.5
static ticKillBiggestPower as float = 3.5;

//大轩的视频 词条造成的伤害倍率。  默认：1.5
static ticBxVideoPower as float = 1.5;

//狂扁小朋友 词条造成的伤害倍率。  默认：2.0
static ticBeatFriend as float = 2.0;

//我超勇的 词条造成的最大伤害倍率。  默认：2.0
static ticIFeelNb as float = 2.0;

//轩秀才水友群 词条造成的伤害倍率。  默认：5.0
static ticBxqq as float = 5.0;

//深渊噩梦 词条分别在四个维度造成的伤害倍率。  默认：[1.2,1.5,1.8,2.0]
static ticAbyssPower as float[]=[1.2,1.5,1.8,2.0];

//万恶之源 词条造成的最大伤害倍率。  默认：1.35
static ticWarpPower as float = 1.35;

//地狱里燃烧 词条造成的火焰时长（秒）。 默认：10
static ticFireInHell as int = 10;

//火焰突袭 词条造成的最大伤害倍率。  默认：2.0
static ticAttackWhenFire as float = 2.0;

//更硬的盾 词条触发概率。 范围：[0.0 ~ 1.0] 默认：0.3（30%）
static ticHeavyProtectChance as double = 0.3;

//神话龙 造成的伤害倍率。 默认：1.75
static ticSuperDragonPower as float = 1.75;

//我讨厌吸血鬼 词条对其他生物造成的伤害倍率。 默认：0.5
static ticToOtherRate as float = 0.5;

//反噬 词条被反噬概率。 范围：[0.0 ~ 1.0] 默认：0.02
static ticTrumpChance as double = 0.02;

//反噬 词条反噬伤害倍率。 默认：0.2
static ticTrumpPower as float = 0.2;

//反噬 词条造成额外伤害概率。 范围：[0.0 ~ 1.0] 默认：0.33
static ticTrumpExtraDamageChance as double = 0.33;

//反噬 词条造成额外伤害的倍率。 默认：3.0
static ticTrumpExtraDamageRate as float = 3.0;

//爆杀流矩阵 词条造成的伤害倍率。  默认：1.1
static ticMartixPower as float = 1.1;

//可怕的恶魔少女 词条秒杀概率。 范围：[0.0 ~ 1.0]  默认：0.01（1%）
static ticDemonPower as double = 0.01;

//最小的轩？ 词条回复生命值比例。 默认：0.5（50%）
static ticSxPower as float = 0.5;

//火风 词条造成伤害倍率。  默认：1.5
static ticFireWindPower as float = 1.5;

//岩神的注视 词条造成的伤害倍率。  默认：1.5
static ticStoneGodPower as float = 1.5;

//水神的祝福 词条造成的伤害倍率。  默认：1.85
static ticWaterGodPower as float = 1.85;

//狂热的赌徒 词条伤害变低的概率。 范围：[0.0 ~ 1.0]  默认：0.7
static ticBetChance as double = 0.7;

//狂热的赌徒 词条伤害变高时的伤害倍率。  默认：2.5
static ticBetPower as float = 2.5;

// ------------------------防具词条调整------------------------

//爱我的话，给我回答 词条触发概率。 范围：[0.0 ~ 1.0] 默认：0.15
static ticIfYouLoveMeGiveMeAnswer as double = 0.15;

//感受恶魔吧 词条触发概率。范围：[0.0 ~ 1.0] 默认：0.15
static ticFeelDemonChance as double = 0.15;

//感受恶魔吧 词条每次减少扭曲值。 范围：[0 ~ 100] 默认：1
static ticFeelDemonLossWarp as int = 1;

//龙魂 词条受到伤害的最小倍率和最大倍率。 范围：[0.0 ~ 1.0] 默认：[0.84,0.89]
static ticDragonSoul as float[] = [0.84,0.89];
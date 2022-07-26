#priority 65
import crafttweaker.item.IItemStack;

/*
 *  更改判定作弊模式的指令。
 *  默认：["gamemode","gamerule","give","ftbquest","execute","setblock","fill","summon","as","mek","crafttweaker","thaumcraft","xp","gamestage","aov","heal","ct","back","forge"]
 */
static disabledCommand as string[]=[
    "gamemode",
    "gamerule",
    "give",
    "ftbquest",
    "execute",
    "setblock",
    "fill",
    "summon",
    "as",
    "mek",
    "crafttweaker",
    "thaumcraft",
    "xp",
    "gamestage",
    "aov",
    "heal",
    "ct",
    "back",
    "forge"
];

/*
 *  修改默认龙材料数组，本操作将影响到无尽催化剂，神秘自动化，菜梗子种植站，包子高炉等有龙材料参与合成配方。
 *  默认：[<draconicevolution:draconium_ingot>,<draconicevolution:draconic_core>,<draconicevolution:draconic_ingot>,<draconicevolution:wyvern_core>,<draconicevolution:dragon_heart>,<draconicevolution:awakened_core>,<draconicevolution:chaotic_core>]
 */
static dragon as IItemStack[]= [
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_ingot>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:dragon_heart>,
    <draconicevolution:awakened_core>,
    <draconicevolution:chaotic_core>
]; 

/*
 *  修改光合堆肥数组，本操作主要影响种子催生机多方块结构
 *  默认：[<thermalfoundation:fertilizer>,<thermalfoundation:fertilizer:1>,<thermalfoundation:fertilizer:2>,<additions:bxloveu-super_fer>]
 */
static df as IItemStack[]=[
    <thermalfoundation:fertilizer>,<thermalfoundation:fertilizer:1>,<thermalfoundation:fertilizer:2>,<additions:bxloveu-super_fer>
];

/*
 *  修改参与无尽催化剂合成参与的奇点。
 *  默认：[<bxp:singularity_1>,<bxp:singularity_2>,<bxp:singularity_3>,<bxp:singularity_4>,<bxp:singularity_5>,<bxp:singularity_6>,<bxp:singularity_7>,<bxp:singularity_8>,<bxp:singularity_9>,<bxp:singularity_10>,<bxp:singularity_11>,<bxp:singularity_12>,<bxp:singularity_13>,<bxp:singularity_14>,<bxp:singularity_15>,<bxp:singularity_16>,<bxp:singularity_17> ]
 */
static nqd as IItemStack[]=[
    <bxp:singularity_1>,
    <bxp:singularity_2>,
    <bxp:singularity_3>,
    <bxp:singularity_4>,
    <bxp:singularity_5>,
    <bxp:singularity_6>,
    <bxp:singularity_7>,
    <bxp:singularity_8>,
    <bxp:singularity_9>,
    <bxp:singularity_10>,
    <bxp:singularity_11>,
    <bxp:singularity_12>,
    <bxp:singularity_13>,
    <bxp:singularity_14>,
    <bxp:singularity_15>,
    <bxp:singularity_16>,
    <bxp:singularity_17> 
];

// 难度设定
/*
 *  设置不同阶段所对应的难度。并不会自动同步FTB任务中难度削减章节。
 *  范围：[0.0d~7000.0d]
 *  默认：[20.0d,45.0d,120.0d,225.0d,450.0d,700.0d,1100.0d,1850.0d,3000.0d,6000.0d]
 */
static difficultyMap as string[double]={
    20.0d:"nether_star",
    45.0d:"wyvern_core",
    120.0d:"bx_ingot",
    225.0d:"fusion_ingot",
    450.0d:"dragon_heart",
    700.0d:"awakened_core",
    1100.0d:"ench_ingot",
    1850.0d:"chaotic_core",
    3000.0d:"avaritia_ingot",
    6000.0d:"final_ingot",
};

//由难度造成的爆炸，魔法，火焰，弹射物伤害加成基础倍率。 范围：[0.0f ~ 32767.0f]  默认：0.5f
static difficultyBase as float = 0.5f;

//由难度造成的爆炸，火焰，弹射物伤害的额外伤害倍率。 范围：[0.0f ~ 32767.0f]  默认：0.1f
static difficultyOther as float = 0.1f;

//由难度造成的魔法额外伤害倍率。 范围：[0.0f ~ 32767.0f]  默认：0.06f
static difficultyMagic as float = 0.06f;

//在地狱受到的火焰伤害加成倍率。 范围：[0.0f ~ 32767.0f]  默认：2.0f
static difficultyFireInHell as float = 2.0f;

//在暮色森林受到的魔法伤害加成倍率。 范围：[0.0f ~ 32767.0f]  默认：3.5f
static difficultyMagicInTwilight as float = 3.5f;

//在深渊的四个维度受到的魔法伤害加成倍率。范围：[0.0f ~ 32767.0f]  默认：5.0f
static difficultyMagicInAbyss as float = 5.0f;

// -------------------------------------------------------------
// 游戏机制设定

//是否禁用双足飞龙相关物品。 范围：bool  默认：true
static disabledWyvernItem as bool = true;

//是否启用攻击需要等级限制设定。 范围：bool  默认：true
static needLevelToAttack as bool = true;

//在地狱是否会随机起火。 范围：bool  默认：true
static setFire as bool = true;

//当玩家死亡后是否会受到死亡惩罚。 范围：bool   默认：true
static playerWillLossLevelWhenDeath as bool = true;

//叫晓诺实体是否免疫除秒杀伤害外伤害。  范围：bool  默认：true
static jaoxaonoNb as bool = true;

//亡灵生物和吸血鬼是否在白天受到额外伤害。  范围：bool  默认：true
static monsterMoreDamage as bool = true;

//是否在玩家切换维度的时候获得短暂无敌。 范围：bool   默认：true
static noDamageWhenChangeDimension as bool = true;

//当玩家捡起仙人掌是否扣血。  范围：bool  默认：true
static getDamageWhenPickCactus as bool = true;

//当玩家登入游戏是否会有阶段提示（优先级高于指令禁用）。 范围：bool  默认：true
static sendTipWhenLog as bool = true;

//煤炭是否能合成钻石。  范围：bool  默认：true
static coalCanCraftDiamond as bool = true;

//是否修改通用机械疏导矩阵配方。 范围：bool  默认：true
static modifyMekMartixRecipe as bool = true;

//1~5级纯净血液是否能手动合成。 范围：bool   默认：true
static canCraftPureBlood as bool = true;

//是否可以合成神秘时代对应珍品。  范围：bool    默认：true
static canCraftCurio as bool = true;

//是否禁用反作弊模式。  范围：bool  默认：false
static disabledAntiCheat as bool = false;

// -------------------------------------------------------------

/*
 * 游戏内容设定
 */
//欧皇锭合成所需魔力。  范围：[1~2147483647]  默认：5000000
static manaForOuhuangIngot as int = 5000000;

//欧芒种子产出概率。  范围：[1~100]  默认：15
static chanceByOumangSeed as int = 15;

//挖掘强化单次合成的数量。 范围：[1~64]  默认：25
static craftMinerAmount as int = 25;

//光合堆肥单次合成的数量。  范围：[1~64]  默认：8
static amountFertilizer1 as int = 8;

//富集光合堆肥每次合成需要的光合堆肥数量及熔岩数量。 范围：[1~64],[1~2147483647] 默认：6,3500
static amountFertilizer2 as int[] = [6,3500];

//充能光合堆肥合成需要的LP数。  范围：[50~2147483647] 默认：5000
static amountFertilizer3 as int = 5000;

//超级光合堆肥单次合成的数量。  范围：[1~64]  默认：9
static amountFertilizer4 as int = 9;

//血钻矿合成注血钻石所消耗的LP数量。 范围：[1~2147483647]  默认：80000
static bloodDiamondCostLp as int = 80000;

//不稳定大轩锭单次合成的数量。 范围：[1~64]  默认：2
static amountForUnbxIngot as int = 2;

//轩精锭单次合成的数量。 范围：[1~64]  默认：2
static amountForXuanjingIngot as int = 2;

//大轩锭单次合成的数量。  范围：[1~64]  默认：5
static amountForBxIngot as int = 5;

//高级大轩精华粉单次合成的数量。  范围：[1~64]  默认：2
static amountForHigherBxDust as int = 2;

//龙芯，双足飞龙核心，觉醒核心，混沌核心单次合成的数量。  范围：[1~64]  默认：[1,1,1,1]
static amountForCore as int[] = [1,1,1,1];

//小轩锭单次合成的数量。  范围：[1~64]  默认：4
static amountForSxIngot as int = 4;

//通过工作台（装配）单次合成菜梗子的数量。 范围：[1~64]  默认：3
static amountForCaigengzi as int = 3;

//金梗子单次合成的数量。  范围：[1~64]  默认：8
static amountForGoldCaigengzi as int = 8;

//附魔菜梗子单次合成的数量。  范围：[1~8192]  默认：1
static amountForEnchCaigengzi as int = 1;

//sdxhop的头单次合成的数量。  范围：[1~2048]  默认：6
static amountForSdxhop as int = 6;

//真包子单次合成的数量。  范围：[1~512]  默认：3
static amountForReallySdxhop as int = 3;

//无尽催化剂单次合成的数量。 范围：[1~64]  默认：1
static amountForInfinityCatalyst as int = 1;

//下界之星矿石是否直接合成下界之星。  范围：bool  默认：false
static netherStarOreRecipeSelf as bool = true;

//秘银矿的一配方是否直接合成秘银锭。  范围：bool  默认：false
static mithSliverOreRecipeSelf as bool = false;

//欧金锭合成是否消耗高阶钻石块。 范围：bool  默认：true
static lossDiamondWhenCraftOujinIngot as bool = true;

//合成欧芒锭是否有概率消耗欧芒种子。 范围：bool  默认：true
static lossSeedWhenCraftOumangIngot as bool = true;

// -------------------------------------------------------------
/*
 *  模块化机械设定
 */

/*
 *  修改魔法使发电机不同物品的发电量。
 *  brf为植物魔法物品，astrf为星辉物品，bloodrf为血魔法物品，tcrf为神秘时代物品。
 *  默认：[1500,4000,10000,35000];[1500,3000,3000,4500,4500,4000];[2500,3500,5000,25000,32000,200000];[300,1000,1000,5000,180000,1500000,20000000]
 */
static brf as int[]=[1500,4000,10000,35000];
static astrf as int[]=[1500,3000,3000,4500,4500,4000];
static bloodrf as int[]=[2500,3500,5000,25000,32000,200000];
static tcrf as int[]=[300,1000,1000,5000,180000,1500000,20000000];

//附魔菜梗子合成所需基础时间。 范围：[24~32767] 默认：7200
static caigengziBaseTime as int = 7200;

//附魔菜梗子合成不同材料的减时比例。  范围[1~100]  默认：[99,98,95,90,83,65,30]
static speedEnchCaigengziRate as int[] = [99,98,95,90,83,60,30];

//sdxhop的头合成消耗时间。  范围：[500~32767]  默认：10000
static recipeTimeBySdxhop as int = 10000;

//真包子合成消耗时间。  范围：[500~32767]  默认：16000
static recipeTimeByReallySdxhop as int = 16000;

//真包子不同材料的减时比例。  范围[1~100]  默认:[90,65,45,20]
static speedReallySdxhopRate as int[]=[90,65,45,20];

/*
 *  设置产血的倍率。
 *  默认公式：物品的饥饿值*55 + 物品的饱和度*35
 *  范围（最后计算结果）：[1~32000] 默认：[55,35]
 */
static provideBloodRate as int[]=[55,35];

/*
 *  设定哪些模组的物品能够产血。
 *  默认：["minecraft","additions","harvestcraft","abyssalcraft","byg","twilightforest"];
 */
static canProvideBloodMods as string[]=[
    "minecraft",
    "additions",
    "harvestcraft",
    "abyssalcraft",
    "byg",
    "twilightforest"
];

// 修改人类心脏提供的产血量。  范围：[1~32000] 默认：2500
static heartProvideBlood as int = 2500;

/*
 *  增减可以在星能液自动化中产出星能液的物品，调整产出时间和数量。
 *  类型：IItemStack[]
 *  默认：[<astralsorcery:itemcraftingcomponent>,<astralsorcery:itemrockcrystalsimple>,<astralsorcery:itemcraftingcomponent:4>]
 */

static canProduceAstralItem as IItemStack[]=[
    <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemrockcrystalsimple>,
    <astralsorcery:itemcraftingcomponent:4>
];
static produceAstralTime as int = 60;
static produceAstralAmount as int = 1000;

//修改血之祭坛自动化合成所需时间。（秒）  范围：[1~32767]  默认：5
static produceBloodAltarTime as int = 5;

//修改超级煤炭种子输入不同的光合堆肥时的产出。  范围：[1~32767]  默认：[12,39,94,166]
static produceCoalAddons as int[] = [12,39,94,166];

/*
 *  修改龙之研究自动化装置合成所需的时间。（tick）
 *  时间越长，对于每tick耗电量越少，意味着玩家可用更少的输入仓组装结构，但是会更加耗时。
 *  范围：[1~32767]  默认：200
 */
static produceDeTime as int = 200;

//修改匠魂自动化装置合成所需的时间。（tick）  范围：[1~32767]  默认：400
static produceTinkerTime as int = 400;

/*
 *  修改在种子催生器中基础种子和不同数量的光合堆肥合成时消耗的光合堆肥数量。
 *  修改数量后，产物概率，耗电等其他参数不会因此变动而变动。
 *  范围：[1~32767] 默认：[6,3,1]
 */
static fertilizerBasicAmount as int[]=[6,3,1];

//修改以上三个数量的光和堆肥配方产出所需要的时间。 范围：[1~32767]  默认：[380,500,750]
static fertilizerBasicTime as int[] = [380,500,750];

//修改以上三个数量的光合堆肥产出产物的基础倍率。其中四个概率代表四个等级的光合堆肥。
//范围：[0.0d ~ 1.0d] 默认：[0.3d,0.55d,0.85d,1.0d]
static fertilizerBasicChance as double[] = [0.3d,0.55d,0.85d,1.0d];

//修改高级种子和不同数量的光合堆肥合成时消耗的光合堆肥的数量。
//范围：[1~32767]  默认：[24,8,1]
static fertilizerAdvancedAmount as int[] = [24,8,1];

//修改高级种子在合成时不同等级的光合堆肥所需要的时间。
//范围：[1~32767]  默认：[1500,1200,1000,800]
static fertilizerAdvancedTime as int[] = [1500,1200,1000,800];

//------------------------------------------------
/*
 *  咸鱼模组调整
 *  
 */

//全局调整
//启用等价交换，范围：bool，默认：false
static canUseProjecte as bool = false;

//启用加速火把，范围：bool，默认：false
static canUseTorch as bool = false;

//细微调整
//以下的内容调整前要先启用模组，否则调整无效。

//等价交换启用的游戏阶段
//改为对应的游戏阶段，那么等价交换将在玩家达成后启用。
//设定为 none 则全局不可用，设定为 all 则全局可用。默认："none"
//当玩家设定了不同的游戏阶段，那么相应物品的合成将动态匹配此处所设定的游戏阶段。
static canUseProjecteStage as string = "none";

//启用燃料，暗物质，红物质。范围：bool，默认：false
static canUseMatter as bool = false;

//启用时间洪流怀表。范围：bool，默认：false
static canUseTimeWatch as bool = false;

//启用转化桌。范围：bool，默认：false
static canUseEMC as bool = false;

//启用炼金术密卷。范围：bool，默认：false
static canUseProjecteBook as bool = false;

//加速火把启用的游戏阶段
//改为对应的游戏阶段，那么加速火把将在玩家达成后启用。
//设定为 none 则全局不可用，设定为 all 则全局可用。默认：none
static canUseTorchStage as string = "none";

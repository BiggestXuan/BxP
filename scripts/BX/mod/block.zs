import scripts.BX.item.bx;
import crafttweaker.item.IItemStack;
import mods.enderio.AlloySmelter;
import mods.botaniatweaks.Agglomeration;
import mods.bloodmagic.BloodAltar;

furnace.addRecipe(<bxp:blackflowerdust>,<bxp:manaore>,0.2);
var fl as IItemStack[]=[
    <bxp:blackflowerdust>,
    <botania:blacklotus>,
    <botania:blacklotus:1>
]; 
var i as int =0;
while(i<2){
    recipes.addShaped(fl[i+1],[
        [fl[i],fl[i],fl[i]],
        [fl[i],fl[i],fl[i]],
        [fl[i],fl[i],fl[i]]
    ]);
    i+=1;
}


var bxo = <bxp:bxore>;
furnace.addRecipe(bx[4],bxo,2);
Agglomeration.addRecipe(<additions:bxloveu-bx_dust>,[
bxo,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:5>],
250000
);

var bloodo = <bxp:blooddiamondore>;
var blood = <bloodarsenal:blood_diamond>;
var blood2 = <bloodarsenal:blood_diamond:1>;
var blood3 = <bloodarsenal:blood_diamond:2>;
furnace.addRecipe(blood,bloodo,2);
BloodAltar.addRecipe(blood3,bloodo,4,80000,400,10);

var nethero =<bxp:netherstarore>;
Agglomeration.addRecipe(<progressivebosses:nether_star_shard>,[
nethero],
100000,
0xff0000,
0xff0000,
<additions:bxloveu-diamond_block>,
<minecraft:nether_brick>,
<minecraft:nether_brick>
);

var mino = <bxp:mithinore>;
Agglomeration.addRecipe(<thaumadditions:mithrillium_nugget>,[
<additions:bxloveu-diamond_block>],
150000,
0x0000ff,
0x0000ff,
<additions:bxloveu-diamond_block>,
<minecraft:bedrock>,
mino,
<additions:bxloveu-diamond_block>,
<minecraft:bedrock>,
<minecraft:stone>
);

Agglomeration.addRecipe(<thaumadditions:mithrillium_ingot>,[
mino],
1000000,
0x00ffff,
0x00ffff,
<thaumadditions:mithrillium_block>,
<thaumcraft:metal_thaumium>,
<thaumcraft:metal_brass>
);

var fo = <bxp:fusionore>;
var stone = <minecraft:stone>;

Agglomeration.addRecipe(<tconevo:material>,[
<additions:bxloveu-diamond_block>],
1000000,
0x8b008b,
0x8b008b,
<minecraft:bedrock>,
fo,
fo,
<minecraft:bedrock>,
stone,
stone
);

recipes.addShaped(<bxp:unbxblock>,[
    [bx[4],bx[4],bx[4]],
    [bx[4],bx[4],bx[4]],
    [bx[4],bx[4],bx[4]]
]);

recipes.addShapeless(bx[4]*9,[
    <bxp:unbxblock>
]);

recipes.addShaped(<bxp:bxblock>,[
    [bx[5],bx[5],bx[5]],
    [bx[5],bx[5],bx[5]],
    [bx[5],bx[5],bx[5]]
]);

recipes.addShapeless(bx[5]*9,[
    <bxp:bxblock>
]);

var nugget =<bxp:bxnugget>;

recipes.addShaped(bx[5],[
    [nugget,nugget,nugget],
    [nugget,nugget,nugget],
    [nugget,nugget,nugget]
]);

recipes.addShapeless(nugget*9,[
    bx[5]
]);

furnace.addRecipe(nugget,<bxp:superbxore>,15);

<bxp:superbxore>.addTooltip(format.red("只能通过坠星位标获得，不会自然生成"));

//tip
<bxp:project_1>.addTooltip(format.red("无特殊作用，放入转化桌获得十万EMC"));
<bxp:project_2>.addTooltip(format.red("无特殊作用，放入转化桌获得一百万EMC"));
<bxp:project_3>.addTooltip(format.red("无特殊作用，放入转化桌获得一千万EMC"));
<bxp:project_4>.addTooltip(format.red("无特殊作用，放入转化桌获得一亿EMC"));

<bxp:tcpaper_1>.addTooltip(format.green("解锁所有神秘太阳能板研究"));
<bxp:tcpaper_2>.addTooltip(format.green("解锁奥术注魔基础和所有神秘能源研究"));
<bxp:tcpaper_3>.addTooltip(format.green("解锁所有研究"));
<bxp:deathprotect>.addTooltip(format.green("免除死亡惩罚，使用后立即消失"));
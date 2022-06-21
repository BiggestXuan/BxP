#priority 7
import scripts.aa.bx;

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.botaniatweaks.Agglomeration;
import crafttweaker.item.IItemStack;

var mino = <bxp:mithinore>;

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

for i in modss{
    recipes.removeByMod(i);
    if(loadedMods in i){
        for item in loadedMods[i].items{
            mods.ItemStages.addItemStage("disabled",item);
        }
    }
}

furnace.addRecipe(nugget,<bxp:superbxore>,15);

var death = <bxp:deathprotect>;
RecipeBuilder.newBuilder("death","seed",4000)
.addItemInput(<bountifulbaubles:trinketankhcharm>)
.addItemInput(bx[5])
.addItemInput(bx[10])
.addItemInput(bx[11])
.addEnergyPerTickInput(2000)
.addItemOutput(<bountifulbaubles:trinketankhcharm>).setChance(0.99)
.addItemOutput(death).setChance(0.5)
.addItemOutput(death).setChance(0.35)
.addItemOutput(death).setChance(0.2)
.addItemOutput(death).setChance(0.08)
.build();


//tip
<bxp:tcpaper_1>.addTooltip(format.green("解锁所有神秘太阳能板研究"));
<bxp:tcpaper_2>.addTooltip(format.green("解锁奥术注魔基础和所有神秘能源研究"));
<bxp:tcpaper_3>.addTooltip(format.green("解锁所有研究"));

<bxp:superbxore>.addTooltip(format.red("只能通过坠星位标获得，不会自然生成"));
<bxp:deathprotect>.addTooltip(format.green("免除死亡惩罚，使用后立即消失，仅在觉醒核心前有效"));
<bxp:bxblock>.addTooltip("可给生物燃料，星能液，聚星缸自动装置增加三倍产出");
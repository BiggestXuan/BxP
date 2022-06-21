#priority 2
import scripts.aa.bx;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.botaniatweaks.Agglomeration;
import mods.botania.RuneAltar;
import mods.bloodmagic.BloodAltar;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.API.config.netherStarOreRecipeSelf;
import scripts.API.config.mithSliverOreRecipeSelf;
import scripts.API.config.bloodDiamondCostLp;

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

recipes.addShapeless(fl[1]*9,[fl[2]]);

RuneAltar.addRecipe(fl[1],[<ore:treeSapling>],10000);

Agglomeration.addRecipe(fl[2],
[<ore:treeSapling>],
100000
);

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
BloodAltar.addRecipe(blood3,bloodo,4,bloodDiamondCostLp,400,10);

var nethero =<bxp:netherstarore>;
if(netherStarOreRecipeSelf){
Agglomeration.addRecipe(<minecraft:nether_star>,[
nethero],
100000,
0xff0000,
0xff0000,
<additions:bxloveu-diamond_block>,
<minecraft:nether_brick>,
<minecraft:nether_brick>
);
}else{
Agglomeration.addRecipe(<progressivebosses:nether_star_shard>,[
nethero],
100000,
0xff0000,
0xff0000,
<additions:bxloveu-diamond_block>,
<minecraft:nether_brick>,
<minecraft:nether_brick>
);}

var mino = <bxp:mithinore>;
if(mithSliverOreRecipeSelf){
Agglomeration.addRecipe(<thaumadditions:mithrillium_ingot>,[
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
}else{
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
);}

mods.botania.OrechidIgnem.addOre(<ore:OreUnBX>, 30);
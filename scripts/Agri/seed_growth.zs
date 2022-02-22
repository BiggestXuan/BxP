import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

recipes.remove(<mysticalagriculture:growth_accelerator>);

recipes.addShaped(<mysticalagriculture:growth_accelerator>*6,[
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>],
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>],
[<additions:bxloveu-diamond_block>,<additions:bxloveu-bx_ingot>,<additions:bxloveu-diamond_block>]
]);

//真是蠢呐，为什么不用循环写？
//反正代码跑起来了，我也懒得管了
//2021.9.17吐槽

//下级精华种子
RecipeBuilder.newBuilder("inferm1","seed",400).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm1-1","seed",350).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm1-2","seed",300).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm1-3","seed",300).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm1-4","seed",250).
addItemInput(<mysticalagriculture:tier1_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *1000).
addEnergyPerTickInput(100).
addItemOutput(<mysticalagriculture:tier1_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();

//初级精华种子
RecipeBuilder.newBuilder("inferm2","seed",450).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm2-1","seed",400).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm2-2","seed",350).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm2-3","seed",350).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();

RecipeBuilder.newBuilder("inferm2-4","seed",275).
addItemInput(<mysticalagriculture:tier2_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *2000).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:tier2_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.5).
build();

//中级精华种子
RecipeBuilder.newBuilder("inferm3","seed",450).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm3-1","seed",400).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm3-2","seed",350).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm3-3","seed",350).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm3-4","seed",275).
addItemInput(<mysticalagriculture:tier3_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(300).
addItemOutput(<mysticalagriculture:tier3_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*3).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
build();

//高级精华种子
RecipeBuilder.newBuilder("inferm4","seed",450).
addItemInput(<mysticalagriculture:tier4_inferium_seeds>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:tier4_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm4-1","seed",400).
addItemInput(<mysticalagriculture:tier4_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:tier4_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm4-2","seed",350).
addItemInput(<mysticalagriculture:tier4_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:tier4_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*4).
addItemOutput(<mysticalagriculture:crafting>).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm4-3","seed",350).
addItemInput(<mysticalagriculture:tier4_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:tier4_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*4).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm4-4","seed",275).
addItemInput(<mysticalagriculture:tier4_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:tier4_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*4).
addItemOutput(<mysticalagriculture:crafting>).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.4).
build();

//终极精华种子
RecipeBuilder.newBuilder("inferm5","seed",450).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.5).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.05).
build();

RecipeBuilder.newBuilder("inferm5-1","seed",400).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.4).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.1).
build();

RecipeBuilder.newBuilder("inferm5-2","seed",350).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).setChance(0.8).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.2).
build();

RecipeBuilder.newBuilder("inferm5-3","seed",350).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.3).
build();

RecipeBuilder.newBuilder("inferm5-4","seed",275).
addItemInput(<mysticalagriculture:tier5_inferium_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:tier5_inferium_seeds>).
addItemOutput(<mysticalagriculture:crafting>*5).
addItemOutput(<mysticalagriculture:crafting>*2).
addItemOutput(<mysticalagriculture:crafting>*3).setChance(0.4).
build();

//下界石英
RecipeBuilder.newBuilder("quartz","seed",500).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addFluidInput(<liquid:lava> *300).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.1).
addItemOutput(<minecraft:quartz_block>).setChance(0.01).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.005).
build();

RecipeBuilder.newBuilder("quartz1","seed",450).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:lava> *300).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.15).
addItemOutput(<minecraft:quartz_block>).setChance(0.02).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.008).
build();

RecipeBuilder.newBuilder("quartz2","seed",450).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:lava> *200).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.4).
addItemOutput(<minecraft:quartz_block>).setChance(0.05).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.02).
build();

RecipeBuilder.newBuilder("quartz3","seed",750).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:lava> *200).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.5).
addItemOutput(<minecraft:quartz_block>).setChance(0.07).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.04).
build();

RecipeBuilder.newBuilder("quartz4","seed",350).
addItemInput(<mysticalagriculture:nether_quartz_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:lava> *150).
addEnergyPerTickInput(200).
addItemOutput(<mysticalagriculture:nether_quartz_seeds>).
addItemOutput(<minecraft:quartz>).
addItemOutput(<minecraft:quartz>).setChance(0.7).
addItemOutput(<minecraft:quartz_block>).setChance(0.13).
addItemOutput(<additions:bxloveu-bx_uningot>).setChance(0.08).
build();

//泰拉钢
RecipeBuilder.newBuilder("terra","seed",500).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(400).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.08).
addItemOutput(<botania:manaresource:4>).setChance(0.01).
addItemOutput(<botania:manaresource:5>).setChance(0.01).
build();

RecipeBuilder.newBuilder("terra1","seed",450).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer>).
addFluidInput(<liquid:water> *3500).
addEnergyPerTickInput(750).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.09).
addItemOutput(<botania:manaresource:4>).setChance(0.02).
addItemOutput(<botania:manaresource:5>).setChance(0.02).
build();

RecipeBuilder.newBuilder("terra2","seed",450).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer:1>).
addFluidInput(<liquid:water> *5000).
addEnergyPerTickInput(650).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.15).
addItemOutput(<botania:manaresource:4>).setChance(0.03).
addItemOutput(<botania:manaresource:5>).setChance(0.03).
build();

RecipeBuilder.newBuilder("terra3","seed",400).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<thermalfoundation:fertilizer:2>).
addFluidInput(<liquid:water> *4000).
addEnergyPerTickInput(600).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.2).
addItemOutput(<botania:manaresource:4>).setChance(0.07).
addItemOutput(<botania:manaresource:5>).setChance(0.04).
build();

RecipeBuilder.newBuilder("terra4","seed",350).
addItemInput(<mysticalagriculture:terrasteel_seeds>).
addItemInput(<additions:bxloveu-super_fer>).
addFluidInput(<liquid:water> *3000).
addEnergyPerTickInput(500).
addItemOutput(<mysticalagriculture:terrasteel_seeds>).
addItemOutput(<botania:manaresource:4>).setChance(0.25).
addItemOutput(<botania:manaresource:4>).setChance(0.09).
addItemOutput(<botania:manaresource:5>).setChance(0.06).
build();

recipes.remove(<mysticalagriculture:terrasteel_seeds>);

var a = <botania:manaresource:4>;
var b = <botania:manaresource:5>;
recipes.addShaped(<mysticalagriculture:terrasteel_seeds>,[
    [a,b,a],
    [b,<mysticalagriculture:crafting:21>,b],
    [a,b,a]
]);
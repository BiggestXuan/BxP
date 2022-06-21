#priority 54
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.API.config.amountForXuanjingIngot;
import scripts.API.config.lossDiamondWhenCraftOujinIngot;

function addRecipe(x as IItemStack[],y as IItemStack, mana as int,name as string) as void{
    var count as int =0;
    if(x.length == 1){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
    if(x.length == 2){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemInput(x[1])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
    if(x.length == 3){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemInput(x[1])
        .addItemInput(x[2])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
    if(x.length == 4){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemInput(x[1])
        .addItemInput(x[2])
        .addItemInput(x[3])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
    if(x.length == 5){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemInput(x[1])
        .addItemInput(x[2])
        .addItemInput(x[3])
        .addItemInput(x[4])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
    if(x.length == 6){
        RecipeBuilder.newBuilder(name+count,"botania",100)
        .addItemInput(x[0])
        .addItemInput(x[1])
        .addItemInput(x[2])
        .addItemInput(x[3])
        .addItemInput(x[4])
        .addItemInput(x[5])
        .addItemOutput(y)
        .addManaInput(mana)
        .build();
        count+=1;
    }
}
var input as IItemStack[][]=[
    [<thaumcraft:void_seed>,<botania:manaresource:5>],
    [<additions:bxloveu-lower_martix_ingot>,bx[5]],
    [<minecraft:iron_ingot>,<additions:bxloveu-bx_uningot>],
    [bx[4]*8,<minecraft:water_bucket>*2],
    [bx[4]*8,<minecraft:blaze_rod>*2],
    [bx[4]*8,<minecraft:coal_block>*2],
    [bx[4]*8,<minecraft:feather>*2],
    [<botania:manaresource>,<botania:manaresource:1>,<botania:manaresource:2>],
    [<additions:bxloveu-bx_uningot>,<astralsorcery:itemcraftingcomponent:4>,<botania:manaresource:5>],
    [<minecraft:wheat_seeds>,<additions:bxloveu-bx_superdust>,<additions:bxloveu-gold_gengzi>],
    [<minecraft:iron_ore>, <additions:bxloveu-bx_dust>, <additions:bxloveu-caigengzi>],
    [<botania:rune>, <botania:rune:1>, <minecraft:sapling>, <minecraft:sapling>, <minecraft:sapling>, <minecraft:wheat>],
    [<botania:rune:2>, <botania:rune:3>, <minecraft:sand>, <minecraft:sand>, <minecraft:slime_ball>, <minecraft:melon>],
    [<botania:rune:2>, <botania:rune:3>, <minecraft:sand>, <minecraft:sand>, <minecraft:slime_ball>, <minecraft:melon>],
    [<botania:rune:2>, <botania:rune:3>, <minecraft:sand>, <minecraft:sand>, <minecraft:slime_ball>, <minecraft:melon>],
    [<bxp:netherstarore>]
];
var output as IItemStack[]=[
    <thaumcraft:ingot:1>,
    <tconevo:material>,
    <taiga:abyssum_ingot>,
    <botania:rune>*4,
    <botania:rune:1>*4,
    <botania:rune:2>*4,
    <botania:rune:3>*4,
    <botania:manaresource:4>,
    <additions:bxloveu-bx_dust>,
    <additions:bxloveu-cai_seed>,
    <additions:bxloveu-bx_goldore>,
    <botania:rune:4>,
    <botania:rune:5>,
    <botania:rune:6>,
    <botania:rune:7>,
    <progressivebosses:nether_star_shard>
];
var mana as int[]=[
    150000,
    500000,
    60000,
    10000,
    10000,
    10000,
    10000,
    500000,
    300000,
    200000,
    114514,
    10000,
    10000,
    10000,
    10000,
    500000,
    100000
];
var name as string[]=[
    "a","b","c","d","e","f","g","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"  //26字母都背不全真是屑
];

for i in 0 .. input.length{
    addRecipe(input[i],output[i],mana[i],name[i]);
}

RecipeBuilder.newBuilder("xuanjing","botania",100)
.addItemInput(<additions:bxloveu-bx_goldore>)
.addItemOutput(<additions:bxloveu-bx_goldingot>*amountForXuanjingIngot)
.build();

if(lossDiamondWhenCraftOujinIngot){
RecipeBuilder.newBuilder("oujin","botania",100)
.addItemInput(<additions:bxloveu-diamond_block>*4)
.addItemInput(<thaumadditions:mithrillium_ingot>)
.addItemInput(<additions:bxloveu-bx_goldingot>)
.addItemInput(<bloodarsenal:blood_diamond:3>)
.addItemOutput(<additions:bxloveu-ou_gold>*2)
.build();
}else{
RecipeBuilder.newBuilder("oujin","botania",100)
.addItemInput(<thaumadditions:mithrillium_ingot>)
.addItemInput(<additions:bxloveu-bx_goldingot>)
.addItemInput(<bloodarsenal:blood_diamond:3>)
.addItemOutput(<additions:bxloveu-ou_gold>*2)
.build();
}

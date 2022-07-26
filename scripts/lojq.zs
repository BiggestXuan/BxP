import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

import scripts.API.config.dragon;
import scripts.API.config.amountForSdxhop;
import scripts.API.config.amountForReallySdxhop;
import scripts.API.config.recipeTimeBySdxhop;
import scripts.API.config.recipeTimeByReallySdxhop;
import scripts.API.config.speedReallySdxhopRate;

RecipeBuilder.newBuilder("sd","sd",recipeTimeBySdxhop)
.addItemInput(<thaumadditions:adaminite_ingot>)
.addItemInput(<minecraft:nether_star>)
.addItemInput(<additions:bxloveu-bx_ingot>)
.addItemInput(<additions:bxloveu-gold_gengzi>)
.addItemInput(<draconicevolution:dragon_heart>)
.addItemInput(<draconicevolution:draconic_ingot>)
.addItemInput(<draconicevolution:awakened_core>)
.addItemInput(<minecraft:dragon_egg>)
.addItemInput(<bloodarsenal:blood_diamond:3>)
.addEnergyPerTickInput(3000)
.addItemOutput(<additions:bxloveu-sdxhop>*amountForSdxhop)
.build();

var sd =<additions:bxloveu-sdxhop>;
var re =<additions:bxloveu-really_sd>;
static tc as IItemStack[]=[
    <thaumcraft:ingot:1>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:adaminite_ingot>,
    <thaumadditions:mithminite_ingot>
];

function js(x as IItemStack[]) as int{
    var sd as int =1;
    if (x in tc[0]){
        sd=speedReallySdxhopRate[0]*sd;
    }
    if (x in tc[1]){
        sd=speedReallySdxhopRate[1]*sd;
    }
    if (x in tc[2]){
        sd=speedReallySdxhopRate[2]*sd;
    }
    if (x in tc[3]){
        sd=speedReallySdxhopRate[3]*sd;
    }
    return sd;
}

RecipeBuilder.newBuilder("sd0","sd",recipeTimeByReallySdxhop)
.addItemInput(sd*9)
.addItemInput(<additions:bxloveu-star_power>)
.addItemInput(dragon[6])
.addEnergyPerTickInput(8000)
.addItemOutput(re*3)
.build();

var count as int=1;
for i in tc{
    var ls as IItemStack[]=[];
    ls+=i;
    var tick as int=0;
    tick=js(ls)*recipeTimeByReallySdxhop/100;
    RecipeBuilder.newBuilder("sd0"+count,"sd",tick)
    .addItemInput(sd*9)
    .addItemInput(<additions:bxloveu-star_power>)
    .addItemInput(dragon[6])
    .addItemInput(i)
    .addEnergyPerTickInput(8000)
    .addItemOutput(re*amountForReallySdxhop)
    .build();
    count+=1;
}

var i as int=0;
var j as int=i+1;
while i<=2{
    var ls as IItemStack[]=[sd,sd];
    ls[0]=tc[i];
    while j<=3{
        ls[1]=tc[j];
        var tick as int=0;
        tick=js(ls)*recipeTimeByReallySdxhop/10000;
        RecipeBuilder.newBuilder("sd0"+count,"sd",tick)
        .addItemInput(sd*9)
        .addItemInput(<additions:bxloveu-star_power>)
        .addItemInput(dragon[6])
        .addItemInput(ls[0])
        .addItemInput(ls[1])
        .addEnergyPerTickInput(8000)
        .addItemOutput(re*amountForReallySdxhop)
        .build();
        count+=1;
        j+=1;
    }
    i+=1;
    j=i+1;
}

i=0;
j=i+1;
count=100;
var k as int=j+1;
while i<=1{
    var ls as IItemStack[]=[sd,sd,sd];
    ls[0]=tc[i];
    while j<=2{
        ls[1]=tc[j];
        while k<=3{
            ls[2]=tc[k];
            var tick as int=0;
            var timee = recipeTimeByReallySdxhop/100;
            tick=(js(ls)*timee)/10000;
            RecipeBuilder.newBuilder("sd0"+count,"sd",tick)
            .addItemInput(sd*9)
            .addItemInput(<additions:bxloveu-star_power>)
            .addItemInput(dragon[6])
            .addItemInput(ls[0])
            .addItemInput(ls[1])
            .addItemInput(ls[2])
            .addEnergyPerTickInput(8000)
            .addItemOutput(re*amountForReallySdxhop)
            .build();
            count+=1;
            k+=1;
        }
        j+=1;
        k=j+1;
    }
    i+=1;
    j=i+1;
    k=j+1;
}

RecipeBuilder.newBuilder("sd0"+666,"sd",843)
.addItemInput(sd*9)
.addItemInput(<additions:bxloveu-star_power>)
.addItemInput(dragon[6])
.addItemInput(tc[0])
.addItemInput(tc[1])
.addItemInput(tc[2])
.addItemInput(tc[3])
.addEnergyPerTickInput(8000)
.addItemOutput(re*amountForReallySdxhop)
.build();
#priority 52
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

import scripts.API.config.dragon;
import scripts.API.config.caigengziBaseTime;
import scripts.API.config.speedEnchCaigengziRate;
import scripts.API.config.amountForEnchCaigengzi;

var caigengzi=<additions:bxloveu-gold_gengzi>;
var really=<additions:bxloveu-re_gengzi>;
var bx=<additions:bxloveu-bx_enchingot>;
var star=<additions:bxloveu-star_power>;
var yss=<abyssalcraft:ingotblock:3>;
var amount = amountForEnchCaigengzi;

var start as int= caigengziBaseTime;

var time as int=start*1;

RecipeBuilder.newBuilder("cgz-0","caigengzi",time)
.addItemInput(caigengzi)
.addItemInput(bx)
.addItemInput(star)
.addItemInput(yss)
.addEnergyPerTickInput(2000)
.addItemOutput(really*amount)
.build();

var name="gold";
var count=1;

function js(x as IItemStack[]) as int{
    var sd as int=1;
    if (x in dragon[0]){
        sd=speedEnchCaigengziRate[0]*sd;
    }
    if (x in dragon[1]){
        sd=speedEnchCaigengziRate[1]*sd;
    }
    if (x in dragon[2]){
        sd=speedEnchCaigengziRate[2]*sd;
    }
    if (x in dragon[3]){
        sd=speedEnchCaigengziRate[3]*sd;
    }
    if (x in dragon[4]){
        sd=speedEnchCaigengziRate[4]*sd;
    }
    if (x in dragon[5]){
        sd=speedEnchCaigengziRate[5]*sd;
    }
    if (x in dragon[6]){
        sd=speedEnchCaigengziRate[6]*sd;
    }
    return sd;
}


for i in dragon{
    var x as IItemStack[]=[];
    x +=i;
    var tick as int=js(x);
    RecipeBuilder.newBuilder("gold"+count,"caigengzi",start*tick/100)
    .addItemInput(caigengzi)
    .addItemInput(bx)
    .addItemInput(star)
    .addItemInput(yss)
    .addItemInput(i)
    .addEnergyPerTickInput(2000)
    .addItemOutput(really*amount)
    .build();
    count+=1;
}

count=100;

var i as int=0;
var j as int=i+1;

while (i<6){
    var x as IItemStack[]=[caigengzi,caigengzi];
    x[0]=dragon[i];
    while (j<=6){
        x[1]=dragon[j];
        var rate as int=js(x);
        var tick as int=(rate*start)/10000;
        RecipeBuilder.newBuilder("gold"+count,"caigengzi",tick)
        .addItemInput(caigengzi)
        .addItemInput(bx)
        .addItemInput(star)
        .addItemInput(yss)
        .addItemInput(dragon[i])
        .addItemInput(dragon[j])
        .addEnergyPerTickInput(2000)
        .addItemOutput(really*amount)
        .build();
        count+=1;
        j+=1;
    }
    i+=1;
    j=i+1;
}

i=0;
j=i+1;
var k as int=j+1;
count=1000;
while (i<5){
    var x as IItemStack[]=[caigengzi,caigengzi,caigengzi];
    x[0]=dragon[i];
    while (j<6){
        x[1]=dragon[j];
        while (k<=6){
            x[2]=dragon[k];
            var rate as int=js(x);
            var set as int=rate/10;
            RecipeBuilder.newBuilder("gold"+count,"caigengzi",set*start/100000)
            .addItemInput(caigengzi)
            .addItemInput(bx)
            .addItemInput(star)
            .addItemInput(yss)
            .addItemInput(dragon[i])
            .addItemInput(dragon[j])
            .addItemInput(dragon[k])
            .addEnergyPerTickInput(2000)
            .addItemOutput(really*amount)
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

RecipeBuilder.newBuilder("final_goldgengzi","caigengzi",862)
.addItemInput(caigengzi)
.addItemInput(bx)
.addItemInput(star)
.addItemInput(yss)
.addItemInput(dragon[0])
.addItemInput(dragon[1])
.addItemInput(dragon[2])
.addItemInput(dragon[3])
.addItemInput(dragon[4])
.addItemInput(dragon[5])
.addItemInput(dragon[6])
.addEnergyPerTickInput(2000)
.addItemOutput(really*amount)
.build();
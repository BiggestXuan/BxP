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

JEI.addDescription(really,"使用多方块结构：菜梗子种植站来合成\n材料只需要金梗子，附魔大轩锭，星晶和伊塞斯块\n合成时间太过于长，你可以使用龙材料减少时间，同时减少能量消耗\n多个材料同时使用，减时效果相乘\n为了JEI阅读方便，仅1,2,3,7种数量材料可组合\n对应效果如下：\n龙锭 -"+(1-speedEnchCaigengziRate[0])+"%时间\n龙芯 -"+(1-speedEnchCaigengziRate[1])+"%时间\n觉醒龙锭 -"+(1-speedEnchCaigengziRate[2])+"%时间\n双足飞龙核心 -"+(1-speedEnchCaigengziRate[3])+"%时间\n龙之心  -"+(1-speedEnchCaigengziRate[4])+"%时间\n觉醒核心 -"+(1-speedEnchCaigengziRate[5])+"%时间\n混沌核心 -"+(1-speedEnchCaigengziRate[6])+"%时间");

RecipeBuilder.newBuilder("cgz-0","caigengzi",time).
addItemInput(caigengzi).
addItemInput(bx).
addItemInput(star).
addItemInput(yss).
addEnergyPerTickInput(2000).
addItemOutput(really*amount).
build();

var name="gold";
var count=1;

/*
本段注释后代码由SDXHOP勘误，发现若多的bug
例如5*0.9=0，这是因为int*float类型不一样，zs自动把float转化为int了，
所以就是5*0=0
再就是在函数内部参与浮点型的运算会报错数组越界
 */
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
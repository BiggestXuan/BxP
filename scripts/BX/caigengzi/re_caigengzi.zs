#priority 66666
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

var caigengzi=<additions:bxloveu-gold_gengzi>;
var really=<additions:bxloveu-re_gengzi>;
var bx=<additions:bxloveu-bx_enchingot>;
var star=<additions:bxloveu-star_power>;
var yss=<abyssalcraft:ingotblock:3>;

static dragon as IItemStack[]= [
    <draconicevolution:draconium_ingot>,  //0
    <draconicevolution:draconic_core>,  //1   use
    <draconicevolution:draconic_ingot>,  //2
    <draconicevolution:wyvern_core>,  //3   use 
    <draconicevolution:dragon_heart>,  //4 
    <draconicevolution:awakened_core>,  //5  use
    <draconicevolution:chaotic_core>  //6  uss
]; 

var start as int=7200;

var time as int=start*1;

JEI.addDescription(really,"使用多方块结构：菜梗子种植站来合成\n材料只需要金梗子，附魔大轩锭，星晶和伊塞斯块\n合成时间太过于长，你可以使用龙材料减少时间，同时减少能量消耗\n多个材料同时使用，减时效果相乘\n为了JEI阅读方便，仅1,2,3,7种数量材料可组合\n对应效果如下：\n龙锭 -1%时间\n龙芯 -2%时间\n觉醒龙锭 -5%时间\n双足飞龙核心 -10%时间\n龙之心  -17%时间\n觉醒核心 -35%时间\n混沌核心 -70%时间");

RecipeBuilder.newBuilder("cgz-0","caigengzi",time).
addItemInput(caigengzi).
addItemInput(bx).
addItemInput(star).
addItemInput(yss).
addEnergyPerTickInput(2000).
addItemOutput(really).
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
        sd=99*sd;
    }
    if (x in dragon[1]){
        sd=98*sd;
    }
    if (x in dragon[2]){
        sd=95*sd;
    }
    if (x in dragon[3]){
        sd=90*sd;
    }
    if (x in dragon[4]){
        sd=83*sd;
    }
    if (x in dragon[5]){
        sd=65*sd;
    }
    if (x in dragon[6]){
        sd=30*sd;
    }
    return sd;
}


for i in dragon{
    var x as IItemStack[]=[];
    x +=i;
    var tick as int=js(x);
    RecipeBuilder.newBuilder("gold"+count,"caigengzi",7200*tick/100).
    addItemInput(caigengzi).
    addItemInput(bx).
    addItemInput(star).
    addItemInput(yss).
    addItemInput(i).
    addEnergyPerTickInput(2000).
    addItemOutput(really).
    build();
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
        var tick as int=(rate*7200)/10000;
        RecipeBuilder.newBuilder("gold"+count,"caigengzi",tick).
        addItemInput(caigengzi).
        addItemInput(bx).
        addItemInput(star).
        addItemInput(yss).
        addItemInput(dragon[i]).
        addItemInput(dragon[j]).
        addEnergyPerTickInput(2000).
        addItemOutput(really).
        build();
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
            RecipeBuilder.newBuilder("gold"+count,"caigengzi",set*72/1000).
            addItemInput(caigengzi).
            addItemInput(bx).
            addItemInput(star).
            addItemInput(yss).
            addItemInput(dragon[i]).
            addItemInput(dragon[j]).
            addItemInput(dragon[k]).
            addEnergyPerTickInput(2000).
            addItemOutput(really).
            build();
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

RecipeBuilder.newBuilder("final_goldgengzi","caigengzi",862).
addItemInput(caigengzi).
addItemInput(bx).
addItemInput(star).
addItemInput(yss).
addItemInput(dragon[0]).
addItemInput(dragon[1]).
addItemInput(dragon[2]).
addItemInput(dragon[3]).
addItemInput(dragon[4]).
addItemInput(dragon[5]).
addItemInput(dragon[6]).
addEnergyPerTickInput(2000).
addItemOutput(really).
build();

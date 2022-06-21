#priority 56
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import scripts.API.config.fertilizerBasicAmount;
import scripts.API.config.fertilizerBasicTime;
import scripts.API.config.fertilizerBasicChance;

function seedGrowOre(input as IItemStack,output as IItemStack,name as string) as void{
    var df as IItemStack[]=[
    <thermalfoundation:fertilizer>,<thermalfoundation:fertilizer:1>,<thermalfoundation:fertilizer:2>,<additions:bxloveu-super_fer>
];
    var count as int = 0;
    var chance as double[]=fertilizerBasicChance;
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",fertilizerBasicTime[0])
        .addItemInput(input)
        .addItemInput(df[i]*fertilizerBasicAmount[0])
        .addFluidInput(<liquid:water>*4000)
        .addEnergyPerTickInput(2500)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.1f)
        .addItemOutput(output).setChance(chance[i] / 1.3f)
        .addItemOutput(output).setChance(chance[i] / 1.7f)
        .addItemOutput(output).setChance(chance[i] / 2.0f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .addItemOutput(output).setChance(chance[i] / 3.0f)
        .addItemOutput(output).setChance(chance[i] / 3.2f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",fertilizerBasicTime[1])
        .addItemInput(input)
        .addItemInput(df[i]*fertilizerBasicAmount[1])
        .addFluidInput(<liquid:water>*2000)
        .addEnergyPerTickInput(1000)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.3f)
        .addItemOutput(output).setChance(chance[i] / 1.8f)
        .addItemOutput(output).setChance(chance[i] / 2.2f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .build();
        count+=1;
    }
    for i in 0 .. 4{
        RecipeBuilder.newBuilder(name+count,"seed",fertilizerBasicTime[2])
        .addItemInput(input)
        .addItemInput(df[i]*fertilizerBasicAmount[2])
        .addFluidInput(<liquid:water>*500)
        .addEnergyPerTickInput(300)
        .addItemOutput(input)
        .addItemOutput(output).setChance(chance[i])
        .addItemOutput(output).setChance(chance[i] / 1.8f)
        .addItemOutput(output).setChance(chance[i] / 2.5f)
        .addItemOutput(output).setChance(chance[i] / 3.5f)
        .build();
        count+=1;
    }

}

static name as string[]=[
    "aq","aw","ae","ar","at","ay","au","ai","ao","ap","aa","as","ad","af","ag","ah","aj","ak","al","az","ax","ac",  //22
    "av","ab","an","am","qq","qw","qe","qr","qt","qy","qu","qi","qo","qp","qa","qs","qd","qf","qg","qh","qj","qk",
    "ql","qz","qx","qc","qv","qb","qn","qm","wq","ww","we","wr","wt","wy","wu","wi","wo","wp","wa","ws","wd","wf"
];
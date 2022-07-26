#priority 16
import crafttweaker.item.IItemStack;

import scripts.API.config.canUseTorch;
import scripts.API.config.canUseTorchStage;

import scripts.API.gamestage.addItemDisabled;

import scripts.nro.func_7011;
import scripts.asl.addRecipe;

if(canUseTorch){
    var torch as IItemStack[]=[
        <torcherino:blocktorcherino>,<torcherino:blockcompressedtorcherino>,<torcherino:blockdoublecompressedtorcherino>
    ];
    for i in torch{
        recipes.remove(i);
    }
    var item as IItemStack = func_7011(canUseTorchStage);
    addRecipe(<minecraft:torch>,item,torch[1]);
    for i in 1 .. torch.length{
        addRecipe(torch[i- 1],item,torch[i]);
    }
}
else{
    addItemDisabled(loadedMods["torcherino"].items);
}
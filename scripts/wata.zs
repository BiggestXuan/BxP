#priority 10
import scripts.API.config.coalCanCraftDiamond;

val c = <minecraft:coal_block>;

if(coalCanCraftDiamond){
    recipes.addShaped(<minecraft:diamond>,[
        [c,c,c],
        [c,<minecraft:piston>.giveBack(),c],
        [c,<minecraft:coal>,c]
    ]);
}

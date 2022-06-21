#priority 11
import mods.botania.RuneAltar;
import crafttweaker.item.IItemStack;
import scripts.aa.bx;

var water=<botania:rune>;
var fire=<botania:rune:1>;
var earth=<botania:rune:2>;
var wind=<botania:rune:3>;

var item as IItemStack[]=[
    water,fire,earth,wind
];

for i in item{
    RuneAltar.removeRecipe(i);
}

RuneAltar.addRecipe(item[0]*2,
[
    bx[4],bx[4],bx[4],bx[4],<minecraft:water_bucket>
],2000);

RuneAltar.addRecipe(item[1]*2,
[
    bx[4],bx[4],bx[4],bx[4],<minecraft:blaze_rod>
],2000);

RuneAltar.addRecipe(item[2]*2,
[
    bx[4],bx[4],bx[4],bx[4],<minecraft:coal_block>
],2000);

RuneAltar.addRecipe(item[3]*2,
[
    bx[4],bx[4],bx[4],bx[4],<minecraft:feather>
],2000);
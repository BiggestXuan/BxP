import moretweaker.draconicevolution.FusionCrafting;
import mods.thaumcraft.Infusion;

FusionCrafting.add(<additions:bxloveu-sound_arrow>*8,<minecraft:arrow>*8,FusionCrafting.BASIC,1000000,[
    bx[4],bx[4],bx[4],bx[4],bx[4],bx[4],bx[4],bx[4]
]);

Infusion.registerRecipe("bow","",<additions:bxloveu-timer_bow>,
6,
[<aspect:alkimia>*100],
<minecraft:bow>,
[bx[4],bx[4],bx[4],bx[4],bx[4],bx[4],bx[4],bx[4]]);
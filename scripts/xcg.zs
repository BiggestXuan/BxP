#priority 10
import mods.botaniatweaks.Agglomeration;

mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:1>);

Agglomeration.addRecipe(<thaumcraft:ingot:1>,
[<thaumcraft:void_seed>,<botania:manaresource:5>],
150000,0xA439FB,0xFF6600,
<botania:livingrock>,<thaumcraft:metal_brass>,<thaumcraft:metal_thaumium>,
null,null,null
);
var a = <bountifulbaubles:magicmirror>;
var b = <bountifulbaubles:wormholemirror>;

recipes.remove(a);
recipes.remove(b);

mods.botania.ManaInfusion.addInfusion(<bountifulbaubles:magicmirror>,<thaumcraft:thaumometer>, 500000);
mods.astralsorcery.StarlightInfusion.addInfusion(a,b,false,1,10);
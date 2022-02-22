import mods.thaumcraft.Infusion;

Infusion.registerRecipe("yuyan","BATHSALTS",<additions:bxloveu-warp_gem>,
1,
[<aspect:cognitio>*130,<aspect:alienis>*100,<aspect:victus>*100],
<thaumcraft:bath_salts>,
[<thaumcraft:sanity_soap>,<thaumcraft:sanity_soap>,<thaumcraft:sanity_soap>,<thaumcraft:sanity_soap>,
<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>,<minecraft:diamond>]);


var w =<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]});
Infusion.registerRecipe("flux","",<thaumcraft:creative_flux_sponge>,
15,
[<aspect:biggestxuan>*1000],
<minecraft:sponge>,
[w,w,w,w,w,w,w,w]
);
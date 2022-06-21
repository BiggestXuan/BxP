#priority 2
import scripts.API.config.amountForBxIngot;
import scripts.aa.bx;

var amount = amountForBxIngot;

mods.astralsorcery.Altar.addTraitAltarRecipe("bx-ingot",
<additions:bxloveu-bx_ingot>*amount,
5500,100,
[<additions:bxloveu-bx_goldingot>,<additions:bxloveu-bx_dust>,<additions:bxloveu-bx_goldingot>,
<additions:bxloveu-bx_dust>,<thaumcraft:ingot:1>,<additions:bxloveu-bx_dust>,
<additions:bxloveu-bx_goldingot>,<additions:bxloveu-bx_dust>,<additions:bxloveu-bx_goldingot>,
bx[12],bx[12],bx[12],bx[12],
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>
,
bx[0],bx[1],bx[2],bx[3]],
"astralsorcery.constellation.discidia"
);

mods.astralsorcery.Altar.addTraitAltarRecipe("bx-ingot-e",
<additions:bxloveu-bx_ingot>*amount,
5500,100,
[<additions:bxloveu-bx_goldingot>,<additions:bxloveu-bx_dust>,<additions:bxloveu-bx_goldingot>,
<additions:bxloveu-bx_dust>,<thaumcraft:ingot:1>,<additions:bxloveu-bx_dust>,
<additions:bxloveu-bx_goldingot>,<additions:bxloveu-bx_dust>,<additions:bxloveu-bx_goldingot>,
bx[0],bx[1],bx[2],bx[3],
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>,<additions:bxloveu-bx_uningot>
,
bx[12],bx[12],bx[12],bx[12]],
"astralsorcery.constellation.discidia"
);
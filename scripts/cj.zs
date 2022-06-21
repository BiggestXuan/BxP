#priority 3
import scripts.API.config.amountForXuanjingIngot;

mods.botania.RuneAltar.addRecipe(
<additions:bxloveu-bx_goldore>,
[<minecraft:iron_ore>,<additions:bxloveu-bx_dust>,<additions:bxloveu-caigengzi>],
114514 
);

mods.botania.ElvenTrade.addRecipe(
[<additions:bxloveu-bx_goldingot>*amountForXuanjingIngot],
[<additions:bxloveu-bx_goldore>]
);
#priority 22
import mods.botaniatweaks.Agglomeration;

import scripts.API.config.lossDiamondWhenCraftOujinIngot;

if(lossDiamondWhenCraftOujinIngot){
Agglomeration.addRecipe(<additions:bxloveu-ou_gold>,
[<additions:bxloveu-bx_goldingot>,
<thaumadditions:mithrillium_ingot>,
<bloodarsenal:blood_diamond:3>],
500000,
0xA439FB,0xFF6600,
<minecraft:bedrock>,<additions:bxloveu-diamond_block>,<additions:bxloveu-diamond_block>,
<minecraft:bedrock>,<additions:bxloveu-diamond_block>,<minecraft:diamond_block>
);
}else{
Agglomeration.addRecipe(<additions:bxloveu-ou_gold>,
[<additions:bxloveu-bx_goldingot>,
<thaumadditions:mithrillium_ingot>,
<bloodarsenal:blood_diamond:3>],
500000,
0xA439FB,0xFF6600,
<minecraft:bedrock>,<additions:bxloveu-diamond_block>,<additions:bxloveu-diamond_block>
);
}

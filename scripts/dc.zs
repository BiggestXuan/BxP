#priority 5
import moretweaker.draconicevolution.FusionCrafting;

import scripts.API.config.amountForCore;
import scripts.aa.bx;

recipes.remove(<draconicevolution:wyvern_core>);
FusionCrafting.remove(<minecraft:nether_star>);
FusionCrafting.remove(<draconicevolution:chaos_shard>);

FusionCrafting.add(<draconicevolution:wyvern_core>*amountForCore[1],<minecraft:nether_star>,FusionCrafting.BASIC,500000,[
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>
]);

FusionCrafting.add(<draconicevolution:awakened_core>*amountForCore[2],<minecraft:nether_star>,FusionCrafting.WYVERN,3000001,[
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<additions:bxloveu-tyrone_ingot>,
<additions:bxloveu-tyrone_ingot>,
<taiga:adamant_ingot>,
<additions:bxloveu-bx_ingot>
]);

FusionCrafting.add(<draconicevolution:chaotic_core>*amountForCore[3],<draconicevolution:chaos_shard>,FusionCrafting.DRACONIC,10000000,[
<draconicevolution:awakened_core>,
<draconicevolution:awakened_core>,
<additions:bxloveu-tyrone_ingot>,
<additions:bxloveu-tyrone_ingot>,
<draconicevolution:awakened_core>,
<draconicevolution:awakened_core>,
bx[6],bx[6]
]);

FusionCrafting.add(<draconicevolution:chaos_shard>,<additions:bxloveu-bx_enchingot>,FusionCrafting.DRACONIC,30000000,[
<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>,
<additions:bxloveu-gold_gengzi>,<additions:bxloveu-gold_gengzi>
]);

recipes.addShapeless(<draconicevolution:dragon_heart>*3,
[<draconicevolution:awakened_core>]);
import moretweaker.draconicevolution.FusionCrafting;

recipes.remove(<draconicevolution:wyvern_core>);
FusionCrafting.remove(<minecraft:nether_star>);

FusionCrafting.add(<draconicevolution:wyvern_core>,<minecraft:nether_star>,FusionCrafting.BASIC,500000,[
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<draconicevolution:draconic_core>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<additions:bxloveu-bx_uningot>,
<additions:bxloveu-bx_uningot>
]);

FusionCrafting.add(<draconicevolution:awakened_core>,<minecraft:nether_star>,FusionCrafting.WYVERN,2000000,[
<draconicevolution:wyvern_core>,
<draconicevolution:wyvern_core>,
<minecraft:nether_star>,
<minecraft:nether_star>,
<draconicevolution:draconic_block>,
<additions:bxloveu-bx_ingot>,
]);

FusionCrafting.add(<draconicevolution:chaos_shard>,<additions:bxloveu-bx_enchingot>,FusionCrafting.DRACONIC,30000000,[
<additions:bxloveu-bx_ingot>,<additions:bxloveu-bx_ingot>,
<additions:bxloveu-gold_gengzi>,<additions:bxloveu-gold_gengzi>
]);
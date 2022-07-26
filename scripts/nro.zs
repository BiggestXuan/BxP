#priority 32
import crafttweaker.item.IItemStack;

import scripts.gsn.stage;
import scripts.API.config.dragon;

function func_7011(s as string) as IItemStack{
    if(s == stage[0]) return <minecraft:nether_star>;
    if(s == stage[1]) return dragon[3];
    if(s == stage[2]) return bx[5];
    if(s == stage[3]) return <tconevo:material>;
    if(s == stage[4]) return dragon[4];
    if(s == stage[5]) return dragon[5];
    if(s == stage[6]) return bx[6];
    if(s == stage[7]) return dragon[6];
    if(s == stage[8]) return <avaritia:resource:5>;
    if(s == stage[9]) return <additions:bxloveu-creative_star>;
    if(s == stage[10]) return <additions:bxloveu-bx_superingot>;
    if(s == "all") return <minecraft:diamond>;
    return <minecraft:command_block>;
}

function func_6560(s as string) as bool{
    s == "all"?true:false;
}
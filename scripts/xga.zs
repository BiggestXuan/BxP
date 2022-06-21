import scripts.aa.bx;
import scripts.uk.df;

var jaoxaono = <entity:bxp:jaoxaono>;
jaoxaono.addDrop(<additions:bxloveu-fish>,0,1,0.33);
jaoxaono.addDrop(<additions:bxloveu-xaono_shard>,0,2,0.1);

var caigengzi = <entity:bxp:caigengzi>;
caigengzi.addDrop(<additions:bxloveu-caigengzi>,0,3,0.5);

var sdxhop = <entity:bxp:sdxhop>;
sdxhop.addDrop(bx[4],0,6,0.5);
sdxhop.addDrop(df[0],0,1,0.2);

var tulye = <entity:bxp:tulye>;
tulye.addDrop(bx[4],0,2,0.1);
tulye.addDrop(<additions:bxloveu-tulye_haie>,1,1,0.5);

var yuluo = <entity:bxp:yuluo>;
yuluo.addDrop(bx[4],0,3,0.2);

var cxk = <entity:minecraft:chicken>;
cxk.addDrop(<additions:bxloveu-basketball>,1,1,0.33);

var j = <additions:bxloveu-xaono_shard>;

mods.abyssalcraft.InfusionRitual.addRitual("xaono_recipe",2,51,10000,true,<additions:bxloveu-agear_ingot>,
bx[5],
[j,j,j,j,j,j,j,j],false);

var d = <additions:bxloveu-agear_ingot>;

recipes.addShaped(<additions:bxloveu-xaono_reward_chest>,[
    [d,d,d],
    [d,<ore:chest>,d],
    [d,d,d]
]);


mods.abyssalcraft.SummonRitual.addRitual("summonxaono",0,51,1000,false,"bxp:jaoxaono",[
    df[1],df[1],df[1],df[1]
]);
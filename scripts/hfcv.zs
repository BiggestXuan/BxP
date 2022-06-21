import moretweaker.draconicevolution.FusionCrafting;
import scripts.API.config.craftMinerAmount;

var miner = <oeintegration:excavatemodifier>;
var a = <ore:ingotSteel>;

recipes.remove(miner);

FusionCrafting.add(miner*craftMinerAmount,bx[5],FusionCrafting.BASIC,1000000,[
    a,a,a,a,a,a,a,a
]);
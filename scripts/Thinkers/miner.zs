import moretweaker.draconicevolution.FusionCrafting;
import scripts.BX.item.bx;

var miner = <oeintegration:excavatemodifier>;
var a = <ore:ingotSteel>;

recipes.remove(miner);

FusionCrafting.add(miner*25,bx[5],FusionCrafting.BASIC,1000000,[
    a,a,a,a,a,a,a,a
]);
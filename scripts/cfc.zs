#priority 9
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

import scripts.API.config.disabledWyvernItem;
import scripts.xo.disable;

var item as IItemStack[]=[
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>,
    <draconicevolution:wyvern_bow>,
    <draconicevolution:wyvern_sword>
];

if(disabledWyvernItem){
    for i in item{
        disable(i);
    }
}

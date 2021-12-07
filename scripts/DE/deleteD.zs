import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;
var zb as IItemStack[]=[
<draconicevolution:wyvern_sword>,
<draconicevolution:wyvern_bow>,
<draconicevolution:wyvern_helm>,
<draconicevolution:wyvern_chest>,
<draconicevolution:wyvern_legs>,
<draconicevolution:wyvern_boots>
];

for i in zb{
    FusionCrafting.remove(i);
    i.addTooltip(format.red("该物品仅限过渡使用，无法升级神龙"));
}
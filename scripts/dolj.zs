#priority 42
import moretweaker.draconicevolution.FusionCrafting;
import crafttweaker.item.IItemStack;

import scripts.API.config.amountForSxIngot;
import scripts.API.thaumcraft.addItemAspect;
import scripts.te.func_8406;

global sb as IItemStack[]=[
    <additions:bxloveu-smallest_xuan_ingot>,
    <additions:bxloveu-ench_smallest_xuan_ingot>,
    <additions:bxloveu-super_smallest_xuan_ingot>
];

addItemAspect(sb[0],[<aspect:biggestxuan>*75,<aspect:aqua>*30,<aspect:aer>*25,<aspect:ignis>*15]);

FusionCrafting.add(sb[0]*4,bx[5]*4,FusionCrafting.WYVERN,1000000,[
    <draconicevolution:dragon_heart>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>
]);

func_8406([
    <draconicevolution:dragon_heart>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    bx[5]*amountForSxIngot
],sb[0]*amountForSxIngot,2,1000002,"smallest_ingot"
);
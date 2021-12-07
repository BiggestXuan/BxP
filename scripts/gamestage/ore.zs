import mods.orestages.OreStages;
import crafttweaker.item.IItemStack;

var nether as IItemStack[]=[
    <bxp:bxore>,
    <bxp:manaore>,
    <thermalfoundation:ore:7>,
    <thermalfoundation:ore:6>,
    <thaumcraft:ore_quartz>,
    <scalinghealth:crystalore>,
    <taiga:eezo_ore>,
    <taiga:karmesine_ore>,
    <taiga:ovium_ore>,
    <taiga:jauxum_ore>,
    <taiga:vibranium_ore>
];

var fusion as IItemStack[]=[
    <bxp:netherstarore>,
    <bxp:blooddiamondore>,
    <taiga:tiberium_ore>,
    <taiga:prometheum_ore>,
    <taiga:valyrium_ore>
];

var end as IItemStack[]=[
    <taiga:aurorium_ore>,
    <taiga:palladium_ore>,
    <taiga:abyssum_ore>
];

for i in nether{
    OreStages.addReplacement("nether_star",i);
}

for i in fusion{
    OreStages.addReplacement("fusion_ingot",i,<minecraft:netherrack>);
}

for i in end {
     OreStages.addReplacement("dragon_heart",i,<minecraft:end_stone>);
}
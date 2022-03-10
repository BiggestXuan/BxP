#priority 1
import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

var disabled as IItemStack[]=[
    <minecraft:golden_rail>,
    <minecraft:detector_rail>,
    <minecraft:detector_rail>,
    <minecraft:activator_rail>,
    <enderio:block_exit_rail>,
    <minecraft:wool:11>,
    <minecraft:carpet:*>,
    <thaumcraft:activator_rail>,
    <mekanism:machineblock:13>,
    <botania:blackholetalisman>,
    <mekanism:basicblock:6>.withTag({tier: 0}),
    <mekanism:basicblock:6>.withTag({tier: 1}),
    <mekanism:basicblock:6>.withTag({tier: 2}),
    <mekanism:basicblock:6>.withTag({tier: 3}),
    <mekanism:basicblock:6>.withTag({tier: 4}),
    <draconicevolution:grinder>,
    <fluxnetworks:fluxcontroller>,
    <thaumadditions:knowledge_tome>,
    <cfm:computer>,
    <cyclicmagic:tool_warp_home>,
    <cyclicmagic:tool_warp_spawn>,
    <cyclicmagic:inventory_food>,
    <cyclicmagic:magnet_anti_block>,
    <extrautils2:lawsword>,
    <botania:redstringcontainer>,
    <cyclicmagic:uncrafting_block>,
    <abyssalcraft:scroll>,
    <wct:magnet_card>.withTag({MagnetMode: 0}),
    <draconicevolution:wyvern_pick>.withTag({}),
    <draconicevolution:wyvern_axe>.withTag({}),
    <draconicevolution:wyvern_shovel>.withTag({}),
    <draconicevolution:wyvern_bow>.withTag({}),
    <draconicevolution:wyvern_sword>.withTag({}),
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>
];

for i in disabled{
    addItemStage("disabled",i);
    recipes.remove(i);
}

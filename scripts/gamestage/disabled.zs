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
    <projectex:stone_table>,
    <minecraft:carpet:*>,
    <projecte:relay_mk3>,
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
    <thaumadditions:knowledge_tome>
];

for i in disabled{
    addItemStage("disabled",i);
    recipes.remove(i);
}

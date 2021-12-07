import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;

var disabled as IItemStack[]=[
    <extrautils2:terraformer:0>,
    <extrautils2:terraformer:1>,
    <extrautils2:terraformer:2>,
    <extrautils2:terraformer:3>,
    <extrautils2:terraformer:4>,
    <extrautils2:terraformer:5>,
    <extrautils2:terraformer:6>,
    <extrautils2:terraformer:7>,
    <extrautils2:terraformer:8>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"})
];

for i in disabled{
    recipes.remove(i);
    i.addTooltip(format.red("已禁用"));
    addItemStage("disabled",i);
}

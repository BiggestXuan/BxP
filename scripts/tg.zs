#priority -1
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.item.IItemStack;

var dis as IItemStack[]=[
    <thaumadditions:mithminite_hood>,
    <thaumadditions:mithminite_robe>,
    <thaumadditions:mithminite_belt>,
    <thaumadditions:mithminite_boots>
];

var dis2 as IItemStack[]=[
    <thaumadditions:adaminite_hood>,
    <thaumadditions:adaminite_robe>,
    <thaumadditions:adaminite_belt>,
    <thaumadditions:adaminite_boots>
];

for i in dis{
    Infusion.removeRecipe(i);
}

for i in dis2{
    ArcaneWorkbench.removeRecipe(i);
}
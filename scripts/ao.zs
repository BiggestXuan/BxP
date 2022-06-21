#priority 13
import crafttweaker.item.IItemStack;

var quartz as IItemStack[IItemStack]={
    <appliedenergistics2:material>:<minecraft:quartz>,
    <minecraft:quartz>:<appliedenergistics2:material>,
    <appliedenergistics2:material:3>:<appliedenergistics2:material:2>,
    <appliedenergistics2:material:2>:<appliedenergistics2:material:3>
};

for i,j in quartz{
    recipes.addShapeless(i,[j]);
}
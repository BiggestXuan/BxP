#priority 44
import crafttweaker.item.IItemStack;
var a1 = <additions:bxloveu-item_craft>;
var a2 = <additions:bxloveu-item_uncraft>;
var z = <additions:bxloveu-ou_gold>;
var t = <additions:bxloveu-oumang_ingot>;

recipes.addShaped(a1,[
    [z,t,z],
    [t,bx[6],t],
    [z,t,z]
]);

recipes.addShaped(a2,[
    [t,z,t],
    [z,bx[6],z],
    [t,z,t]
]);

global tc as IItemStack[]=[
    <thaumcraft:ingot:2>,
    <thaumcraft:ingot>,
    <thaumcraft:ingot:1>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:adaminite_ingot>,
    <thaumadditions:mithminite_ingot>
];
#priority 7
import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;

ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
ExtremeCrafting.addShapeless("rw",<avaritia:cosmic_meatballs>,[
<avaritia:resource:4>,<additions:bxloveu-apple_xaono>,<minecraft:cooked_mutton>,
<minecraft:mutton>, 
<minecraft:rabbit_stew>, 
<minecraft:rabbit>, 
<minecraft:cooked_rabbit>, 
<minecraft:cooked_chicken>, 
<minecraft:chicken>, 
<minecraft:beef>, 
<minecraft:rotten_flesh>, 
<abyssalcraft:anticorflesh>, 
<abyssalcraft:omotholflesh>, 
<abyssalcraft:antiflesh>, 
<abyssalcraft:antipork>, 
<abyssalcraft:antichicken>,
<abyssalcraft:antibeef>, 
<abyssalcraft:chickenp>,
<abyssalcraft:corbone>,
<abyssalcraft:corflesh>,
<abyssalcraft:shoggothflesh:3>,
<abyssalcraft:shoggothflesh:2>,
<abyssalcraft:shoggothflesh:1>,
<abyssalcraft:shoggothflesh>,
<abyssalcraft:anticorbone>
]);

var i =<additions:bxloveu-apple_xaono>;
var b =null;
ExtremeCrafting.remove(<avaritia:ultimate_stew>);
ExtremeCrafting.addShaped("cjb",<avaritia:ultimate_stew>,[
    [b,b,b,b,b,b,b,b,b],
    [b,i,b,b,b,b,b,i,b],
    [i,i,i,b,b,b,i,i,i],
    [i,i,i,i,b,i,i,i,i],
    [i,i,i,i,i,i,i,i,i],
    [b,i,i,i,i,i,i,i,b],
    [b,b,i,i,i,i,i,b,b],
    [b,b,b,i,i,i,b,b,b],
    [b,b,b,b,i,b,b,b,b]
]);

static av as IItemStack[]=[
    <avaritia:infinity_sword>,
    <avaritia:infinity_pickaxe>.withTag({ench: [{lvl: 10 as short, id: 35}]}),
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>, //5
    <avaritia:infinity_bow>,
    <avaritia:infinity_shovel>,
    <avaritia:infinity_axe>,
    <avaritia:infinity_hoe>
];

for i in av{
    ExtremeCrafting.remove(i);
}


import mods.mekanism.enrichment;
import crafttweaker.item.IItemStack;

var input as IItemStack[]=[
    <abyssalcraft:coraliumore>,
    <abyssalcraft:abyore>,
    <abyssalcraft:abycorore>,
    <abyssalcraft:abydreadore>,
    <astralsorcery:blockcustomore:1>
];

var output as IItemStack[]=[
    <abyssalcraft:coralium>,
    <acintegration:dust>,
    <abyssalcraft:coralium>,
    <acintegration:dust>,
    <astralsorcery:itemcraftingcomponent:2>
];

var i =0;
while(i<5){
    enrichment.addRecipe(input[i],output[i]*2);
    i+=1;
}
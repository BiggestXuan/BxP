#priority 51

import crafttweaker.item.IItemStack;
import mods.avaritia.ExtremeCrafting;

import scripts.aa.bx;

static item as IItemStack[]=[
<thermalfoundation:upgrade:256>,
<wct:wct_creative>.withTag({IsInRange: 0 as byte}),
<appliedenergistics2:creative_energy_cell>,
<bloodmagic:sacrificial_dagger:1>.withTag({sacrifice: 0 as byte}),
<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}),
<botania:pool:1>,
<cyclicmagic:battery_infinite>,
<deepmoblearning:creative_model_learner>,
<draconicevolution:creative_rf_source>,
<draconicevolution:draconium_capacitor:2>,
<enderio:block_cap_bank>.withTag({"enderio:energy": 50000000}),
<enderio:block_creative_spawner>,
<extrautils2:itemcreativedestructionwand>,
<extrautils2:itemcreativebuilderswand>,
<extrautils2:spike_creative>,
<refinedstorage:controller:1>.withTag({Energy: 32000}),
<refinedstorage:storage_disk:4>.withTag({IdLeast: -7898318262281847068 as long, IdMost: 3774672619818928975 as long}),
<storagedrawers:upgrade_creative>,
<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}})
];

var cast as IItemStack[]=[
<thermalfoundation:upgrade:35>,
<wct:wct>,
<appliedenergistics2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}),
<bloodmagic:sacrificial_dagger>,
<botania:manatablet>.withTag({mana: 500000}),
<botania:pool:3>,
<cyclicmagic:crystallized_amber>,
<deepmoblearning:data_model_blank>,
<draconicevolution:draconic_core>,
<draconicevolution:draconium_capacitor:1>,
<enderio:block_cap_bank:3>,
<enderio:item_broken_spawner>,
<extrautils2:itemdestructionwand>,
<extrautils2:itembuilderswand>,
<extrautils2:spike_diamond>,
<refinedstorage:controller>,
<refinedstorage:storage_disk:3>,
<storagedrawers:upgrade_storage:3>,
<mekanism:energycube>.withTag({tier: 3})
];

var name as string[]=["s1ibf","s2ibf","s3ibf","s4ibf","s5ibf","s6ibf","s7ibf","s8ibf","s9ibf","1sibf","2sibf","3sibf","4sibf","5sibf","6sibf","7sibf","8sibf","9sibf","si1bf","si2bf","si3bf"];


function superRecipe(name as string,b as IItemStack,a as IItemStack){
    var s =<additions:bxloveu-creative_star>;
    var l = <avaritia:resource:5>; 
    ExtremeCrafting.addShaped(name,a,[
        [b,b,b,b,b,b,b,b,b],
        [b,b,b,b,b,b,b,b,b],
        [b,b,b,b,b,b,b,b,b],
        [b,b,b,l,s,l,b,b,b],
        [b,b,b,s,s,s,b,b,b],
        [b,b,b,l,s,l,b,b,b],
        [b,b,b,b,b,b,b,b,b],
        [b,b,b,b,b,b,b,b,b],
        [b,b,b,b,b,b,b,b,b]
    ]);
}
    
for i in 0 .. item.length{
    superRecipe(name[i],cast[i],item[i]);
}

var b = <appliedenergistics2:storage_cell_64k>;
var x = bx[7];
var i = <avaritia:resource:6>;
ExtremeCrafting.addShaped("ae_creative",<appliedenergistics2:creative_storage_cell>.withTag({}),
[
    [b,b,b,b,b,b,b,b,b],
    [b,i,i,i,i,i,i,i,b],
    [b,i,i,i,i,i,i,i,b],
    [b,i,i,x,x,x,i,i,b],
    [b,i,i,x,x,x,i,i,b],
    [b,i,i,x,x,x,i,i,b],
    [b,i,i,i,i,i,i,i,b],
    [b,i,i,i,i,i,i,i,b],
    [b,b,b,b,b,b,b,b,b]
]);
#priority 2
import mods.avaritia.ExtremeCrafting;

import crafttweaker.item.IItemStack;

import scripts.API.config.dragon;
import scripts.API.config.amountForInfinityCatalyst;
import scripts.etrs.nqd;

var ch = <avaritia:resource:5>;
ExtremeCrafting.addShapeless("chj",ch*amountForInfinityCatalyst,[
    <avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,<avaritia:resource:4>,
    <avaritia:cosmic_meatballs>,<avaritia:ultimate_stew>,
    nqd[0],nqd[1],nqd[2],nqd[3],nqd[4],nqd[5],nqd[6],nqd[7],nqd[8],nqd[9],nqd[10],nqd[11],nqd[12],nqd[13],nqd[14],nqd[15],nqd[16],
    dragon[0],dragon[1],dragon[2],dragon[3],dragon[4],dragon[5],dragon[6],<additions:bxloveu-tulye_ingot>,<additions:bxloveu-tyrone_ingot>,<additions:bxloveu-achaziah_ingot>,<additions:bxloveu-infinity_star_ingot>,
    bx[0],bx[1],bx[2],bx[3],bx[4],bx[5],bx[6],bx[8],bx[9],bx[10],bx[11],bx[12],bx[13],bx[14],bx[15],bx[16],bx[17],bx[18],bx[19],bx[20],bx[21],bx[22],
    sb[0],sb[1],sb[2]
]);

recipes.remove(<avaritia:resource:4>);

recipes.addShaped(<avaritia:resource:4>,[
    [<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>],
    [<avaritia:resource:3>,<extrautils2:unstableingots>,<avaritia:resource:3>],
    [<avaritia:resource:3>,<avaritia:resource:3>,<avaritia:resource:3>]
]);

var crystal = <avaritia:resource:1>;
recipes.addShapeless(<avaritia:resource:4>,[<avaritia:block_resource>]);

ExtremeCrafting.remove(<avaritia:infinity_sword>);
var ingot =<avaritia:resource:6>;

ExtremeCrafting.addShaped("sword",<avaritia:infinity_sword>,[
    [null,null,null,null,null,null,null,ingot,ingot],
    [null,null,null,null,null,null,null,ingot,ingot],
    [null,null,null,null,null,null,ingot,null,null],
    [null,null,null,null,null,ingot,null,null,null],
    [null,crystal,null,ingot,ingot,null,null,null,null],
    [null,null,crystal,ingot,ingot,null,null,null,null],
    [null,null,bx[7],crystal,null,null,null,null,null],
    [null,bx[7],null,null,crystal,null,null,null,null],
    [bx[7],null,null,null,null,null,null,null,null]
]);

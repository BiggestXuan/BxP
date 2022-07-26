#priority 3
import crafttweaker.item.IItemStack;

import scripts.API.config.canCraftCurio;

var aoshu=<thaumcraft:curio>;
var chuanshi=<thaumcraft:curio:1>;
var yuangu=<thaumcraft:curio:2>;
var xieshu=<thaumcraft:curio:3>;
var guangming=<thaumcraft:curio:4>;
var niuqu=<thaumcraft:curio:5>;
var zp as IItemStack[]=[
    aoshu,chuanshi,yuangu,xieshu,guangming,niuqu
];

aoshu.addTooltip(game.localize("bxp.tip.item.tc1"));
chuanshi.addTooltip(game.localize("bxp.tip.item.tc2"));
yuangu.addTooltip(game.localize("bxp.tip.item.tc3"));
xieshu.addTooltip(game.localize("bxp.tip.item.tc4"));
guangming.addTooltip(game.localize("bxp.tip.item.tc5"));
niuqu.addTooltip(game.localize("bxp.tip.item.tc6"));

var b =<additions:bxloveu-bx_uningot>;

if(canCraftCurio){
recipes.addShaped(zp[0]*2,[
    [b,b,b],
    [b,b,b],
    [null,null,null]
]);

recipes.addShaped(zp[1]*2,[
    [b,b,b],
    [null,null,null],
    [b,b,b]
]);

recipes.addShaped(zp[2]*2,[
    [null,null,null],
    [b,b,b],
    [b,b,b]
]);

recipes.addShaped(zp[3]*2,[
    [b,b,null],
    [b,b,null],
    [b,b,null]
]);

recipes.addShaped(zp[4]*2,[
    [b,null,b],
    [b,null,b],
    [b,null,b]
]);

recipes.addShaped(zp[5]*2,[
    [null,b,b],
    [null,b,b],
    [null,b,b]
]);
}

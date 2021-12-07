import crafttweaker.item.IItemStack;

var aoshu=<thaumcraft:curio>;
var chuanshi=<thaumcraft:curio:1>;
var yuangu=<thaumcraft:curio:2>;
var xieshu=<thaumcraft:curio:3>;
var guangming=<thaumcraft:curio:4>;
var niuqu=<thaumcraft:curio:5>;
var zp as IItemStack[]=[
    aoshu,chuanshi,yuangu,xieshu,guangming,niuqu
];

aoshu.addTooltip(format.green("主要增加神秘学知识"));
chuanshi.addTooltip(format.green("主要增加炼金术知识"));
yuangu.addTooltip(format.green("主要增加傀儡学知识"));
xieshu.addTooltip(format.green("主要增加邪术学知识"));
guangming.addTooltip(format.green("主要增加奥术注魔知识"));
niuqu.addTooltip(format.green("主要增加炼化学知识"));

var b =<additions:bxloveu-bx_uningot>;

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
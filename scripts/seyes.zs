#priority 3
import crafttweaker.item.IItemStack;
import scripts.aa.bx;

recipes.remove(<modularmachinery:itemmodularium>);

var ingot = <modularmachinery:blockcasing>;
var glow = <minecraft:glowstone_dust>;

recipes.addShaped(<modularmachinery:itemmodularium>*6,[
    [glow,bx[4],glow],
    [bx[4],<minecraft:redstone>,bx[4]],
    [glow,bx[4],glow]
]);
static name as string[]=[];
recipes.remove(ingot);

recipes.addShaped(ingot*2,[
[null,<modularmachinery:itemmodularium>,null],
[<modularmachinery:itemmodularium>,<additions:bxloveu-bx_uningot>,<modularmachinery:itemmodularium>],
[null,<modularmachinery:itemmodularium>,null]
]);

recipes.addShaped(<modularmachinery:blockcasing:1>*3,[
[ingot,ingot,ingot],
[ingot,<additions:bxloveu-bx_ingot>,ingot],
[ingot,ingot,ingot]
]);

recipes.remove(<modularmachinery:blockcasing:2>);

recipes.addShaped(<modularmachinery:blockcasing:2>,[
[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],
[<minecraft:redstone>,<additions:bxloveu-bx_ingot>,<minecraft:redstone>],
[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]
]);

var block=ingot;

recipes.addShaped(<modularmachinery:blockcasing:3>*2,[
    [block,block,block],
    [block,<additions:bxloveu-bx_enchingot>,block],
    [block,block,block]
]);

var mach=<modularmachinery:blockcasing:3>;

recipes.addShaped(<modularmachinery:blockcasing:5>*2,[
    [null,mach,null],
    [mach,<additions:bxloveu-bx_enchingot>,mach],
    [null,mach,null]
]);

function sc1(x as IItemStack[]) as void{
    var i as int= 0;
    var j as int= 1;
    for a in x{
        recipes.remove(a);
    }
    while(j<=4){
        recipes.addShapeless(x[j],[
            x[i],bx[4]
        ]);
        i+=1;
        j+=1;
    }
    while(j<=6){
        recipes.addShapeless(x[j],[
            x[i],bx[5]
        ]);
        i+=1;
        j+=1;
    }
}

function sc2(x as IItemStack[]) as void{
    var i as int= 0;
    var j as int= 1;
    for a in x{
        recipes.remove(a);
    }
    while(j<=4){
        recipes.addShapeless(x[j],[
            x[i],bx[4]
        ]);
        i+=1;
        j+=1;
    }
    while(j<=7){
        recipes.addShapeless(x[j],[
            x[i],bx[5]
        ]);
        i+=1;
        j+=1;
    }
}

recipes.remove(<modularmachinery:blockcontroller>);

recipes.addShaped(<modularmachinery:blockcontroller>,[
    [null,<minecraft:diamond>,null],
    [<minecraft:redstone_block>,<bxp:unbxblock>,<minecraft:redstone_block>],
    [<additions:bxloveu-bx_ingot>,<minecraft:redstone_block>,<additions:bxloveu-bx_ingot>]
]);

recipes.addShaped(<gugu-utils:sparkmanahatch>*4,[
    [block,<botania:spark>,block],
    [<botania:spark>,block,<botania:spark>],
    [block,<botania:spark>,block]
]);

recipes.addShapeless(<gugu-utils:starlightinputhatch>,[
    <astralsorcery:itemcraftingcomponent>,block
]);

recipes.addShapeless(<gugu-utils:starlightinputhatch:1>,[
    <astralsorcery:itemcraftingcomponent:4>,block
]);

recipes.addShapeless(<gugu-utils:starlightinputhatch:2>,[
    <astralsorcery:itemcraftingcomponent:4>,block,bx[5]
]);

recipes.addShapeless(<gugu-utils:aspecthatch>,[
    block,<thaumcraft:essentia_output>
]);
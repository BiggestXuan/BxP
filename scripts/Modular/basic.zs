import crafttweaker.item.IItemStack;
import scripts.BX.item.bx;

recipes.remove(<modularmachinery:itemmodularium>);

var ingot = <modularmachinery:blockcasing>;
var glow = <minecraft:glowstone_dust>;

recipes.addShaped(<modularmachinery:itemmodularium>*6,[
    [glow,bx[4],glow],
    [bx[4],<minecraft:redstone>,bx[4]],
    [glow,bx[4],glow]
]);


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

//item input
var item_input as IItemStack[]=[
    <modularmachinery:blockinputbus>,
    <modularmachinery:blockinputbus:1>,
    <modularmachinery:blockinputbus:2>,
    <modularmachinery:blockinputbus:3>,
    <modularmachinery:blockinputbus:4>,
    <modularmachinery:blockinputbus:5>,
    <modularmachinery:blockinputbus:6>
];
recipes.addShaped(item_input[0],[
    [null,null,null],
    [ingot,bx[4],ingot],
    [null,null,null]
]);

//item output
var item_output as IItemStack[]=[
    <modularmachinery:blockoutputbus>,
    <modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockoutputbus:2>,
    <modularmachinery:blockoutputbus:3>,
    <modularmachinery:blockoutputbus:4>,
    <modularmachinery:blockoutputbus:5>,
    <modularmachinery:blockoutputbus:6>
];
recipes.addShaped(item_output[0],[
    [null,ingot,null],
    [null,bx[4],null],
    [null,ingot,null]
]);

//fiuld input
var fl_input as IItemStack[]=[
    <modularmachinery:blockfluidinputhatch>,
    <modularmachinery:blockfluidinputhatch:1>,
    <modularmachinery:blockfluidinputhatch:2>,
    <modularmachinery:blockfluidinputhatch:3>,
    <modularmachinery:blockfluidinputhatch:4>,
    <modularmachinery:blockfluidinputhatch:5>,
    <modularmachinery:blockfluidinputhatch:6>,
    <modularmachinery:blockfluidinputhatch:7>
];
recipes.addShaped(fl_input[0],[
    [ingot,null,null],
    [null,bx[4],null],
    [null,null,ingot]
]);

//fluid output
var fl_output as IItemStack[]=[
    <modularmachinery:blockfluidoutputhatch>,
    <modularmachinery:blockfluidoutputhatch:1>,
    <modularmachinery:blockfluidoutputhatch:2>,
    <modularmachinery:blockfluidoutputhatch:3>,
    <modularmachinery:blockfluidoutputhatch:4>,
    <modularmachinery:blockfluidoutputhatch:5>,
    <modularmachinery:blockfluidoutputhatch:6>,
    <modularmachinery:blockfluidoutputhatch:7>
];
 recipes.addShaped(fl_output[0],[
    [null,null,ingot],
    [null,bx[4],null],
    [ingot,null,null]
]);

//rf input
var rf_input as IItemStack[]=[
    <modularmachinery:blockenergyinputhatch>,
    <modularmachinery:blockenergyinputhatch:1>,
    <modularmachinery:blockenergyinputhatch:2>,
    <modularmachinery:blockenergyinputhatch:3>,
    <modularmachinery:blockenergyinputhatch:4>,
    <modularmachinery:blockenergyinputhatch:5>,
    <modularmachinery:blockenergyinputhatch:6>,
    <modularmachinery:blockenergyinputhatch:7>
];
recipes.addShaped(rf_input[0],[
    [ingot,ingot,ingot],
    [ingot,bx[4],ingot],
    [null,null,null]
]);

//rf output
var rf_output as IItemStack[]=[
    <modularmachinery:blockenergyoutputhatch>,
    <modularmachinery:blockenergyoutputhatch:1>,
    <modularmachinery:blockenergyoutputhatch:2>,
    <modularmachinery:blockenergyoutputhatch:3>,
    <modularmachinery:blockenergyoutputhatch:4>,
    <modularmachinery:blockenergyoutputhatch:5>,
    <modularmachinery:blockenergyoutputhatch:6>,
    <modularmachinery:blockenergyoutputhatch:7>
];
recipes.addShaped(rf_output[0],[
    [null,null,null],
    [ingot,bx[4],ingot],
    [ingot,ingot,ingot]
]);

//7*
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

//8*
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

//run
sc1(item_input);
sc1(item_output);
sc2(fl_input);
sc2(fl_output);
sc2(rf_input);
sc2(rf_output);

recipes.remove(<modularmachinery:blockcontroller>);

recipes.addShaped(<modularmachinery:blockcontroller>,[
    [null,<minecraft:diamond>,null],
    [<minecraft:redstone_block>,<bxp:unbxblock>,<minecraft:redstone_block>],
    [<additions:bxloveu-bx_ingot>,<minecraft:redstone_block>,<additions:bxloveu-bx_ingot>]
]);
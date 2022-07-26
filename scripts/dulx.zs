import crafttweaker.item.IItemStack;

import scripts.seyes.sc1;
import scripts.seyes.sc2;

var ingot = <modularmachinery:blockcasing>;

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

sc1(item_input);
sc1(item_output);
sc2(fl_input);
sc2(fl_output);
sc2(rf_input);
sc2(rf_output);
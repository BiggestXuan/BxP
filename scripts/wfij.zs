#priority 4
import crafttweaker.item.IItemStack;
import scripts.aa.bx;

var cells as IItemStack[]=[
    <appliedenergistics2:material:35>,
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <extracells:storage.component>,
    <extracells:storage.component:1>,
    <extracells:storage.component:2>,
    <extracells:storage.component:3>
];

for i in cells{
    recipes.remove(i);
}

var redstone=<minecraft:redstone>;

recipes.addShaped(cells[0]*8,[
    [null,redstone,null],
    [redstone,bx[4],redstone],
    [null,redstone,null]
]);

var i as int=1;
var j as int=0;

while i<=7{
    recipes.addShapeless(cells[i],[
        cells[j],cells[j],cells[j],cells[j]
    ]);
    i+=1;
    j+=1;
}

var fluid_cells as IItemStack[]=[
    <appliedenergistics2:material:54>,
    <appliedenergistics2:material:55>,
    <appliedenergistics2:material:56>,
    <appliedenergistics2:material:57>,
    <extracells:storage.component:8>,
    <extracells:storage.component:9>,
    <extracells:storage.component:10>
];

for i in fluid_cells{
    recipes.remove(i);
}

recipes.addShaped(fluid_cells[0]*8,[
    [null,redstone,null],
    [null,bx[4],null],
    [null,redstone,null]
]);

var a as int=1;
var b as int=0;

while a<=6{
    recipes.addShapeless(fluid_cells[a],[
        fluid_cells[b],fluid_cells[b],fluid_cells[b],fluid_cells[b]
    ]);
    a+=1;
    b+=1;
}

var gas_cells as IItemStack[]=[
    <extracells:storage.component:11>,
    <extracells:storage.component:12>,
    <extracells:storage.component:13>,
    <extracells:storage.component:14>,
    <extracells:storage.component:15>,
    <extracells:storage.component:16>,
    <extracells:storage.component:17>
];

for i in gas_cells{
    recipes.remove(i);
}

recipes.addShaped(gas_cells[0]*8,[
    [null,null,null],
    [redstone,bx[4],redstone],
    [null,null,null]
]);

var c as int=1;
var d as int=0;

while c<=6{
    recipes.addShapeless(gas_cells[c],[
        gas_cells[d],gas_cells[d],gas_cells[d],gas_cells[d]
    ]);
    c+=1;
    d+=1;
}

var tc_cells as IItemStack[]=[
    <thaumicenergistics:essentia_component_1k>,
    <thaumicenergistics:essentia_component_4k>,
    <thaumicenergistics:essentia_component_16k>,
    <thaumicenergistics:essentia_component_64k>
];

for i in tc_cells{
    recipes.remove(i);
}

recipes.addShapeless(tc_cells[0]*8,[
    bx[4],<thaumcraft:ingot:2>
]);

var e as int = 1;
var f as int = 0;

while e<=3{
    recipes.addShapeless(tc_cells[e],[
        tc_cells[f],tc_cells[f],tc_cells[f],tc_cells[f]
    ]);
    e+=1;
    f+=1;
}

recipes.remove(<ae2wtlib:infinity_booster_card>);

recipes.addShaped(<ae2wtlib:infinity_booster_card>*4,[
    [null,bx[4],null],
    [bx[4],<minecraft:paper>,bx[4]],
    [null,bx[4],null]
]);
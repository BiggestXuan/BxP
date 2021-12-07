import crafttweaker.item.IItemStack;
import mods.thaumcraft.Infusion;

var cl as IItemStack[]=[
    <thaumadditions:mithminite_hood>,
    <thaumadditions:mithminite_robe>,
    <thaumadditions:mithminite_belt>,
    <thaumadditions:mithminite_boots>
];

for i in cl{
    Infusion.removeRecipe(i);
}

var jj as IItemStack[]=[
    <thaumadditions:adaminite_hood>,
    <thaumadditions:adaminite_robe>,
    <thaumadditions:adaminite_belt>,
    <thaumadditions:adaminite_boots>
];

var mj = <thaumadditions:mithminite_fabric>;
var my =<thaumadditions:mithrillium_resonator>;



Infusion.registerRecipe("mj1","",cl[0],10,
[<aspect:praecantatio>*500,<aspect:caeles>*200,<aspect:praemunio>*200],
jj[0],[mj,mj,mj,mj,mj,my]
);
Infusion.registerRecipe("mj2","",cl[1],10,
[<aspect:praecantatio>*500,<aspect:caeles>*200,<aspect:praemunio>*200],
jj[1],[mj,mj,mj,mj,mj,my]
);
Infusion.registerRecipe("mj3","",cl[2],10,
[<aspect:praecantatio>*500,<aspect:caeles>*200,<aspect:praemunio>*200],
jj[2],[mj,mj,mj,mj,mj,my]
);
Infusion.registerRecipe("mj4","",cl[3],10,
[<aspect:praecantatio>*500,<aspect:caeles>*200,<aspect:praemunio>*200],
jj[3],[mj,mj,mj,mj,mj,my]
);
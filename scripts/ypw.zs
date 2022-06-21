#priority 16
import crafttweaker.item.IItemStack;

var chest = <minecraft:chest>;

var ch as IItemStack[]=[
<ironchest:iron_chest>,
<ironchest:iron_chest:1>,
<ironchest:iron_chest:2>
];

for c in ch{
    recipes.remove(c);
}

recipes.addShaped(ch[0],[
    [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],
    [<ore:ingotIron>,chest,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>]
]);

recipes.addShaped(ch[1],[
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
    [<ore:ingotGold>,chest,<ore:ingotGold>],
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>]
]);

recipes.addShaped(ch[2],[
    [<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>],
    [<ore:gemDiamond>,chest,<ore:gemDiamond>],
    [<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>]
]);

recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>,[
    [<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>],
    [<ore:gemDiamond>,<ore:ingotGold>,<ore:gemDiamond>],
    [<ore:gemDiamond>,<ore:gemDiamond>,<ore:gemDiamond>]
]);
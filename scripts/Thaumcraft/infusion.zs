mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);

mods.bloodmagic.BloodAltar.addRecipe(<thaumcraft:infusion_matrix>,<thaumcraft:stone_arcane_brick>,
2,
10000,
30,
50);

<thaumcraft:infusion_matrix>.addTooltip("按住SHIFT显示详细信息");
<thaumcraft:infusion_matrix>.addShiftTooltip(format.red("你可能要先在血魔法取得进度才能制作他"));
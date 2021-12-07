import scripts.BX.item.bx;

var bz = <bloodmagic:ritual_controller>;
var obsidian = <minecraft:obsidian>;

recipes.remove(bz);
recipes.addShaped(bz,[
    [obsidian,bx[5].reuse(),obsidian],
    [bx[5].reuse(),obsidian,bx[5].reuse()],
    [obsidian,bx[5].reuse(),obsidian]
]);

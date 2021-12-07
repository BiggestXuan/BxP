import scripts.BX.item.bx;

var power = <mekanismgenerators:generator:6>;
recipes.remove(power);

recipes.addShaped(power,[
    [null,bx[4],null],
    [bx[4],<mekanism:ingot:1>,bx[4]],
    [null,bx[4],null]
]);
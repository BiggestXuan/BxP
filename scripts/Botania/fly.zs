import scripts.BX.item.bx;

var fly = <botania:flighttiara>;
recipes.remove(fly);

recipes.addShaped(fly,[
    [<botania:manaresource:5>,<botania:manaresource:5>,<botania:manaresource:5>],
    [bx[5].reuse(),bx[5].reuse(),bx[5].reuse()],
    [bx[5].reuse(),<minecraft:dragon_egg>.reuse(),bx[5].reuse()]
]);
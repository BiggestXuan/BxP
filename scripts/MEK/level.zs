import scripts.BX.item.bx;

var speed = <mekanism:speedupgrade>;
var power = <mekanism:energyupgrade>;

var osmium = <mekanism:ingot:1>;
var gold = <minecraft:gold_ingot>;

recipes.remove(speed);
recipes.remove(power);

recipes.addShaped(speed*8,[
    [osmium,osmium,osmium],
    [osmium,bx[4],osmium],
    [osmium,osmium,osmium]
]);

recipes.addShaped(power*8,[
    [gold,gold,gold],
    [gold,bx[4],gold],
    [gold,gold,gold]
]);
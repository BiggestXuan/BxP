import crafttweaker.item.IItemStack;
var can as IItemStack[]=[<thermalcultivation:watering_can>,<thermalcultivation:watering_can:1>,<thermalcultivation:watering_can:2>,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:4>];

for item in can{
    recipes.remove(item);
}
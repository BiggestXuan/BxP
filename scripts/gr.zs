#priority 5
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

import scripts.mrol.monster;

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var leather = ArmorHandler.createArmorGroup("leather",0.02);
    leather.addEntity(entity);
    leather.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:leather_helmet>, 1, 0));
    leather.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:leather_chestplate>, 1, 0));
    leather.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:leather_leggings>, 1, 0));
    leather.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:leather_boots>, 1, 0));
    leather.addArmor(ArmorHandler.createArmorSlot("mainhand",<minecraft:stone_sword>, 1, 0)) ;
    leather.addGameStage("level_1");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var golden = ArmorHandler.createArmorGroup("golden",0.03);
    golden.addEntity(entity);
    golden.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:golden_helmet>, 1, 0));
    golden.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:golden_chestplate>, 1, 0));
    golden.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:golden_leggings>, 1, 0));
    golden.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:golden_boots>, 1, 0));
    golden.addArmor(ArmorHandler.createArmorSlot("mainhand",<minecraft:golden_sword>, 1, 0)) ;
    golden.addGameStage("level_2");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var iron = ArmorHandler.createArmorGroup("iron",0.03);
    iron.addEntity(entity);
    iron.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 1, 0));
    iron.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 1, 0));
    iron.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 1, 0));
    iron.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 1, 0));
    iron.addArmor(ArmorHandler.createArmorSlot("mainhand",<minecraft:iron_sword>, 1, 0)) ;
    iron.addGameStage("level_3");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var diamond = ArmorHandler.createArmorGroup("diamond",0.03);
    diamond.addEntity(entity);
    diamond.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 1, 0));
    diamond.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 1, 0));
    diamond.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 1, 0));
    diamond.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 1, 0));
    diamond.addArmor(ArmorHandler.createArmorSlot("mainhand",<minecraft:diamond_sword>, 1, 0)) ;
    diamond.addGameStage("level_4");
}

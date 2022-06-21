#priority 1
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

import scripts.mrol.monster;

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var cora = ArmorHandler.createArmorGroup("cora",0.04);
    cora.addEntity(entity);
    cora.addArmor(ArmorHandler.createArmorSlot("head", <abyssalcraft:corhelmetp>.withTag({ench: [{lvl: 3 as short, id: 0}]}), 1, 0));
    cora.addArmor(ArmorHandler.createArmorSlot("chest", <abyssalcraft:corplatep>.withTag({ench: [{lvl: 3 as short, id: 0}]}), 1, 0));
    cora.addArmor(ArmorHandler.createArmorSlot("legs", <abyssalcraft:corlegsp>.withTag({ench: [{lvl: 3 as short, id: 0}]}), 1, 0));
    cora.addArmor(ArmorHandler.createArmorSlot("feet", <abyssalcraft:corbootsp>.withTag({ench: [{lvl: 3 as short, id: 0}]}), 1, 0));
    cora.addArmor(ArmorHandler.createArmorSlot("mainhand",<abyssalcraft:corsword>.withTag({ench: [{lvl: 5 as short, id: 16}]}), 1, 0)) ;
    cora.addGameStage("level_5");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var coraaaa = ArmorHandler.createArmorGroup("coraaaa",0.05);
    coraaaa.addEntity(entity);
    coraaaa.addArmor(ArmorHandler.createArmorSlot("head", <abyssalcraft:corhelmetp>.withTag({ench: [{lvl: 7 as short, id: 0}]}), 1, 0));
    coraaaa.addArmor(ArmorHandler.createArmorSlot("chest", <abyssalcraft:corplatep>.withTag({ench: [{lvl: 7 as short, id: 0}]}), 1, 0));
    coraaaa.addArmor(ArmorHandler.createArmorSlot("legs", <abyssalcraft:corlegsp>.withTag({ench: [{lvl: 7 as short, id: 0}]}), 1, 0));
    coraaaa.addArmor(ArmorHandler.createArmorSlot("feet", <abyssalcraft:corbootsp>.withTag({ench: [{lvl: 7 as short, id: 0}]}), 1, 0));
    coraaaa.addArmor(ArmorHandler.createArmorSlot("mainhand",<abyssalcraft:corsword>.withTag({ench: [{lvl: 8 as short, id: 16}]}), 1, 0)) ;
    coraaaa.addGameStage("level_6");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var adamin = ArmorHandler.createArmorGroup("adamin",0.05);
    adamin.addEntity(entity);
    adamin.addArmor(ArmorHandler.createArmorSlot("head", <thaumadditions:adaminite_hood>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 7 as short, id: 0}]}), 1, 0));
    adamin.addArmor(ArmorHandler.createArmorSlot("chest", <thaumadditions:adaminite_robe>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 7 as short, id: 0}]}), 1, 0));
    adamin.addArmor(ArmorHandler.createArmorSlot("legs", <thaumadditions:adaminite_belt>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 7 as short, id: 0}]}), 1, 0));
    adamin.addArmor(ArmorHandler.createArmorSlot("feet", <thaumadditions:adaminite_boots>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 7 as short, id: 0}]}), 1, 0));
    adamin.addArmor(ArmorHandler.createArmorSlot("mainhand",<draconicevolution:wyvern_sword>.withTag({DEUpgrades: {attackDmg: 2 as byte}, Energy: 4000000}), 1, 0)) ;
    adamin.addGameStage("level_7");
}

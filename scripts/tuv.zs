#priority 1
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;

import scripts.mrol.monster;

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var adamin2 = ArmorHandler.createArmorGroup("adamin2",0.06);
    adamin2.addEntity(entity);
    adamin2.addArmor(ArmorHandler.createArmorSlot("head", <thaumadditions:adaminite_hood>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 9 as short, id: 0}]}), 1, 0));
    adamin2.addArmor(ArmorHandler.createArmorSlot("chest", <thaumadditions:adaminite_robe>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 9 as short, id: 0}]}), 1, 0));
    adamin2.addArmor(ArmorHandler.createArmorSlot("legs", <thaumadditions:adaminite_belt>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 9 as short, id: 0}]}), 1, 0));
    adamin2.addArmor(ArmorHandler.createArmorSlot("feet", <thaumadditions:adaminite_boots>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 9 as short, id: 0}]}), 1, 0));
    adamin2.addArmor(ArmorHandler.createArmorSlot("mainhand",<tconstruct:rapier>.withTag({EvolvedTier: 1, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 2539, HarvestLevel: 5, Attack: 17.0 as float}, Unbreakable: 1 as byte, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 5, Durability: 2539, HarvestLevel: 5, Attack: 30.5 as float}, Special: {Categories: ["tool", "weapon"]}, EvolvedEnergy: 4000000, TinkerData: {Materials: ["bx_ingot", "bx_ingot", "bx_ingot"], Modifiers: ["tconevo.draconic_energy", "tconevo.draconic_attack_damage", "tconevo.draconic_attack_aoe", "toolleveling"]}, Modifiers: [{identifier: "bx1", color: -4785642, level: 1}, {identifier: "tconevo.culling", color: -4785642, level: 1}, {identifier: "tconevo.astral", color: -4785642, level: 1}, {identifier: "bx2", color: -4785642, level: 1}, {identifier: "tconevo.soul_rend", color: -4785642, level: 1}, {identifier: "tconevo.evolved", color: -4785642, level: 1}, {identifier: "tconevo.draconic_energy", color: 43690, level: 1}, {identifier: "tconevo.draconic_attack_damage", color: 43690, level: 1}, {identifier: "tconevo.draconic_attack_aoe", color: 43690, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["bx1", "tconevo.culling", "tconevo.astral", "bx2", "tconevo.soul_rend1", "tconevo.evolved", "tconevo.draconic_energy", "tconevo.draconic_attack_damage", "tconevo.draconic_attack_aoe", "toolleveling"]}), 1, 0)) ;
    adamin2.addGameStage("level_8");
}

for i in monster{
    var entity = ArmorHandler.createArmorEntity(i);
    var mith = ArmorHandler.createArmorGroup("mith",0.07);
    mith.addEntity(entity);
    mith.addArmor(ArmorHandler.createArmorSlot("head", <thaumadditions:mithminite_hood>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 12 as short, id: 0}]}), 1, 0));
    mith.addArmor(ArmorHandler.createArmorSlot("chest", <thaumadditions:mithminite_robe>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 12 as short, id: 0}]}), 1, 0));
    mith.addArmor(ArmorHandler.createArmorSlot("legs",<thaumadditions:mithminite_belt>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 12 as short, id: 0}]}) , 1, 0));
    mith.addArmor(ArmorHandler.createArmorSlot("feet", <thaumadditions:mithminite_boots>.withTag({ench: [{lvl: 4 as short, id: 29}, {lvl: 12 as short, id: 0}]}), 1, 0));
    mith.addArmor(ArmorHandler.createArmorSlot("mainhand",<tconstruct:rapier>.withTag({EvolvedTier: 1, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 12.0 as float, FreeModifiers: 3, Durability: 4040, HarvestLevel: 10, Attack: 32.5 as float}, Unbreakable: 1 as byte, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 12.0 as float, FreeModifiers: 0, Durability: 4040, HarvestLevel: 10, Attack: 64.2 as float}, Special: {Categories: ["tool", "weapon"]}, EvolvedEnergy: 4000000, TinkerData: {UsedModifiers: 15, Materials: ["mith_metal", "mith_metal", "mith_metal"], Modifiers: ["tconevo.draconic_energy", "tconevo.draconic_attack_damage", "tconevo.draconic_attack_aoe", "toolleveling", "sharpness", "creative", "tconevo.flux_burn", "tconevo.entropic"]}, Modifiers: [{identifier: "tconevo.soul_rend", color: -8892017, level: 1}, {identifier: "tconevo.evolved", color: -8892017, level: 1}, {identifier: "tconevo.draconic_energy", color: 43690, level: 1}, {identifier: "tconevo.draconic_attack_damage", color: 43690, level: 2}, {identifier: "tconevo.draconic_attack_aoe", color: 43690, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "creative", color: 0, level: 10}, {identifier: "tconevo.flux_burn", color: 11150920, level: 5}, {identifier: "tconevo.entropic", color: 16737792, level: 5}], Traits: ["tconevo.soul_rend1", "tconevo.evolved", "tconevo.draconic_energy", "tconevo.draconic_attack_damage", "tconevo.draconic_attack_aoe", "toolleveling", "tconevo.flux_burn", "tconevo.entropic"]}), 1, 0)) ;
    mith.addGameStage("level_9");
}
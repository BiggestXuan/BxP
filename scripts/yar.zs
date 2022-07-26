#loader contenttweaker
#modloaded draconicevolution

#priority 20

import mods.ctutils.utils.Math;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.thinker.ticDragonSoul;

val amm = ArmorTraitBuilder.create("amm");
amm.color = 0xffaadd;
amm.localizedName =game.localize("bxp.tconstruct.at.amm.name");
amm.localizedDescription = game.localize("bxp.tconstruct.at.amm.des");
amm.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(1000, 0, false, false));
};
amm.register();

val aff = ArmorTraitBuilder.create("aff");
aff.color = 0xffaadd;
aff.localizedName = game.localize("bxp.tconstruct.at.aff.name");
aff.localizedDescription = game.localize("bxp.tconstruct.at.aff.des");
aff.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(1000, 0, false, false));
};
aff.register();

val afy = ArmorTraitBuilder.create("afy");
afy.color = 0xffaadd;
afy.localizedName = game.localize("bxp.tconstruct.at.afy.name");
afy.localizedDescription = game.localize("bxp.tconstruct.at.afy.des");
afy.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(100, 1, false, false));
};
afy.register();

val axm = ArmorTraitBuilder.create("axm");
axm.color = 0xffaadd;
axm.localizedName = game.localize("bxp.tconstruct.at.axm.name");
axm.localizedDescription =game.localize("bxp.tconstruct.at.axm.des");
axm.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(200, 2, false, false));
    player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 1, false, false));
};
axm.register();

val atl = ArmorTraitBuilder.create("atl");
atl.color = 0xffaadd;
atl.localizedName = game.localize("bxp.tconstruct.at.atl.name");
atl.localizedDescription = game.localize("bxp.tconstruct.at.atl.des");
atl.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    if((player.health / player.maxHealth) >0.5f){
        return newDamage as float * ticDragonSoul[1];
    }
    return newDamage * ticDragonSoul[0];
};
atl.register();
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
amm.localizedName = "明目";
amm.localizedDescription = "夜视";
amm.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(1000, 0, false, false));
};
amm.register();

val aff = ArmorTraitBuilder.create("aff");
aff.color = 0xffaadd;
aff.localizedName = "炽焰";
aff.localizedDescription = "防火";
aff.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(1000, 0, false, false));
};
aff.register();

val afy = ArmorTraitBuilder.create("afy");
afy.color = 0xffaadd;
afy.localizedName = "大肉盾";
afy.localizedDescription = "额外的伤害削减";
afy.onAbility = function(trait, level, world, player){
    if(isNull(player)){
        return;
    }
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(100, 1, false, false));
};
afy.register();

val axm = ArmorTraitBuilder.create("axm");
axm.color = 0xffaadd;
axm.localizedName = "迅猛";
axm.localizedDescription = "穿戴装备会获得更快的速度和力量";
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
atl.localizedName = "龙魂";
atl.localizedDescription = "根据你的生命值受伤";
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
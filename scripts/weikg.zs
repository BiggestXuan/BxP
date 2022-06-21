#loader contenttweaker

#priority 20

import mods.ctutils.utils.Math;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

val axx2 = ArmorTraitBuilder.create("axx2");
axx2.color = 0xffaadd;
axx2.localizedName = "究极抖M";
axx2.localizedDescription = "越受伤，越开心";
axx2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 10, false, false));
    player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(200, 10, false, false));
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 4, false, false));
    player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(200, 4, false, false));
    return newDamage;
};
axx2.register();

val asd = ArmorTraitBuilder.create("asd");
asd.color = 0xffaadd;
asd.localizedName = "古老的力量";
asd.localizedDescription = "你达不到的力量";
asd.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    return newDamage as float * Math.random();
};
asd.register();
#loader contenttweaker

#priority 34

import mods.ctutils.utils.Math;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.thinker.ticIfYouLoveMeGiveMeAnswer;
import scripts.API.thinker.ticFeelDemonChance;
import scripts.API.thinker.ticFeelDemonLossWarp;

val ajz = ArmorTraitBuilder.create("ajz");
ajz.color = 0xffaadd;
ajz.localizedName = "爱我的话，给我回答";
ajz.localizedDescription = "受伤有概率获得生命恢复";
ajz.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    if(Math.random()<= ticIfYouLoveMeGiveMeAnswer){
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(100, 5, false, false));
    }
    return newDamage;
};
ajz.register();

val aaje = ArmorTraitBuilder.create("aaje");
aaje.color = 0xffaadd;
aaje.localizedName = "感受恶魔吧";
aaje.localizedDescription = "受伤时临时扭曲将逐渐减少";
aaje.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    if(player.warpNormal > 0 &&Math.random()<= ticFeelDemonChance){
        player.warpNormal -= ticFeelDemonLossWarp;
    }
    return newDamage;
};
aaje.register();

val axx1 = ArmorTraitBuilder.create("axx1");
axx1.color = 0xffaadd;
axx1.localizedName = "抖M";
axx1.localizedDescription = "越被打，越兴奋";
axx1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return newDamage;
    }
    player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(200, 3, false, false));
    player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 3, false, false));
    player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(1200, 1, false, false));
    return newDamage;
};
axx1.register();
#loader contenttweaker

#priority 25

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.TraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.thinker.ticToOtherRate;
import scripts.API.thinker.ticTrumpChance;
import scripts.API.thinker.ticTrumpPower;
import scripts.API.thinker.ticTrumpExtraDamageChance;
import scripts.API.thinker.ticTrumpExtraDamageRate;


val exx = TraitBuilder.create("exx");
exx.color = 0xffaadd;
exx.localizedName = "我讨厌吸血鬼";
exx.localizedDescription = "秒杀吸血鬼和猎人，对其他生物造成"+ticToOtherRate+"倍伤害";
exx.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isNull(target.definition.id)) return newDamage;
    if(target.definition.id has "vampirism"){
        return newDamage * 1000.0f;
    }
    else{
        return newDamage as float * ticToOtherRate;
    }
};
exx.register();

val sxx = TraitBuilder.create("sxx");
sxx.color = 0xffaadd;
sxx.localizedName = "你觉得如何";
sxx.localizedDescription = "造成自身血量0.3~1.3倍的伤害";
sxx.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker instanceof IPlayer){
        var player as IPlayer = attacker;
        var random as double = Math.random();
        return player.health * (random +0.3);
    }
    return newDamage;
};
sxx.register();

val ahh = TraitBuilder.create("ahh");
ahh.color = 0xffaadd;
ahh.localizedName = "反噬";
ahh.localizedDescription = "通常会造成额外伤害，但小心被伤害反噬";
ahh.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var mult as double = Math.random();
    var chance as double = Math.random();
    if(attacker instanceof IPlayer){
        var player as IPlayer = attacker;
        if(chance <= ticTrumpChance){
            attacker.health -= newDamage as float * ticTrumpPower;
        }
        if(mult <= ticTrumpExtraDamageChance){
            return newDamage;
        }
        return newDamage * ticTrumpExtraDamageRate * mult;
    }
    return newDamage;  
};
ahh.register();
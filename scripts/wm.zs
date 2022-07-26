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
exx.localizedName = game.localize("bxp.tconstruct.a.exx.name");
exx.localizedDescription = game.localize("bxp.tconstruct.a.exx.des")+ticToOtherRate+game.localize("bxp.tconstruct.a.exx.des1");
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
sxx.localizedName = game.localize("bxp.tconstruct.a.sxx.name");
sxx.localizedDescription = game.localize("bxp.tconstruct.a.sxx.des");
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
ahh.localizedName = game.localize("bxp.tconstruct.a.ahh.name");
ahh.localizedDescription = game.localize("bxp.tconstruct.a.ahh.des");
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
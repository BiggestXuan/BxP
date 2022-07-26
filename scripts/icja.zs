#loader contenttweaker

#priority 25

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.TraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.thinker.ticMartixPower;
import scripts.API.thinker.ticDemonPower;
import scripts.API.thinker.ticSxPower;

val bs = TraitBuilder.create("bs");
bs.color = 0xffaadd;
bs.localizedName = game.localize("bxp.tconstruct.a.bs.name");
bs.localizedDescription = game.localize("bxp.tconstruct.a.bs.des");
bs.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return originalDamage as float * ticMartixPower;
};
bs.register();

val em = TraitBuilder.create("em");
em.color = 0xffaadd;
em.localizedName = game.localize("bxp.tconstruct.a.em.name");
em.localizedDescription = game.localize("bxp.tconstruct.a.em.des");
em.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var random as double = Math.random();
    if(target.isBoss) return newDamage;
    if(random <= ticDemonPower){
        return target.maxHealth * 3.0f;
    }
    return newDamage;
};
em.register();

val xx = TraitBuilder.create("xx");
xx.color = 0xffaadd;
xx.localizedName = game.localize("bxp.tconstruct.a.xx.name");
xx.localizedDescription = game.localize("bxp.tconstruct.a.xx.des")+ticSxPower*100+game.localize("bxp.tconstruct.a.xx.des1");
xx.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    attacker.health += newDamage as float * 0.3f * ticSxPower;
    return newDamage * 0.7f;
};
xx.register();
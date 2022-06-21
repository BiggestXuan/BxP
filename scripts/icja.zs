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
bs.localizedName = "爆杀流矩阵";
bs.localizedDescription = "按当前攻击力造成额外伤害";
bs.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return originalDamage as float * ticMartixPower;
};
bs.register();

val em = TraitBuilder.create("em");
em.color = 0xffaadd;
em.localizedName = "可怕的恶魔少女";
em.localizedDescription = "每次攻击都有一定概率直接秒杀";
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
xx.localizedName = "最小的轩？";
xx.localizedDescription = "将每次伤害的30%作为"+ticSxPower*100+"%的生命补充给自己";
xx.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    attacker.health += newDamage as float * 0.3f * ticSxPower;
    return newDamage * 0.7f;
};
xx.register();
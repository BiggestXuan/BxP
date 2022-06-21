#loader contenttweaker

#priority 25

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.TraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.thinker.ticFireInHell;
import scripts.API.thinker.ticAttackWhenFire;
import scripts.API.thinker.ticHeavyProtectChance;
import scripts.API.thinker.ticSuperDragonPower;

val zq1 = TraitBuilder.create("zq1");
zq1.color = 0xffaadd;
zq1.localizedName = "地狱里燃烧！";
zq1.localizedDescription = "让目标起火";
zq1.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    target.setFire(ticFireInHell);
    return newDamage;
};
zq1.register();

val zq2 = TraitBuilder.create("zq2");
zq2.color = 0xffaadd;
zq2.localizedName = "火焰突袭";
zq2.localizedDescription = "对着火的目标造成额外随机伤害";
zq2.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var random = Math.random();
    if(target.isBurning){
        if(random *ticAttackWhenFire <=1){
            return newDamage;
        }
        return newDamage as float *random * ticAttackWhenFire;
    }
    return newDamage;
};
zq2.register();

val xw = TraitBuilder.create("xw");
xw.color = 0xffaadd;
xw.localizedName = "更硬的盾";
xw.localizedDescription = "每次攻击后有一定概率无敌一段时间";
xw.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var chance = Math.random();
    if(attacker instanceof IPlayer){
        var player as IPlayer = attacker;
        if(chance <= ticHeavyProtectChance){
            server.commandManager.executeCommand(server,"effect "+player.name+" resistance 5 255");
        }
        return newDamage;
    }
    return newDamage;
};
xw.register();

val bh = TraitBuilder.create("bh");
bh.color = 0xffaadd;
bh.localizedName = "勇敢的老虎";
bh.localizedDescription = "生命低于一半时，锁定暴击";
bh.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isCritical){
        return newDamage;
    }
    if(attacker.health <= attacker.maxHealth /2.0f){
        return 1.5f* newDamage;
    }
    return newDamage;
};
bh.register();

val ql = TraitBuilder.create("ql");
ql.color = 0xffaadd;
ql.localizedName = "龙深潜啸";
ql.localizedDescription = "在水中攻击，会有龙的力量";
ql.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker instanceof IPlayer){
        if(attacker.isInWater){
            var player as IPlayer = attacker;
            player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 2, false, false));
            player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 3, false, false));
            player.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(600, 0, false, false));
            return newDamage * 1.5f;
        }
        return newDamage;
    }
    return newDamage;
};
ql.register();

val tl = TraitBuilder.create("tl");
tl.color = 0xffaadd;
tl.localizedName = "神话龙";
tl.localizedDescription = "用饥饿值来显著提高伤害";
tl.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker instanceof IPlayer){
        var player as IPlayer = attacker;
        player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(100, 10, false, false));
        return newDamage * ticSuperDragonPower;
    }
    return newDamage;
};
tl.register();
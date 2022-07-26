#priority 20
#loader contenttweaker

import mods.ctutils.utils.Math;
import mods.ctintegration.bloodmagic.SoulNetork;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;

import scripts.API.thinker.ticBxKillTargetRate;
import scripts.API.thinker.ticExpPower;
import scripts.API.thinker.ticCaigengziPower;
import scripts.API.thinker.ticAnwuPower;
import scripts.API.thinker.ticKillBiggestPower;
import scripts.API.thinker.ticBxVideoPower;

val bxTrait1 = TraitBuilder.create("bx1");
bxTrait1.color = 0xffaadd;
bxTrait1.localizedName = game.localize("bxp.tconstruct.a.bx1.name");
bxTrait1.localizedDescription = game.localize("bxp.tconstruct.a.bx1.des");
bxTrait1.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health >= target.health*3){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait1.register();

val bxTrait2 = TraitBuilder.create("bx2");
bxTrait2.color = 0xffaadd;
bxTrait2.localizedName = game.localize("bxp.tconstruct.a.bx2.name");
bxTrait2.localizedDescription = game.localize("bxp.tconstruct.a.bx2.des");
bxTrait2.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*1.5 >= target.health){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait2.register();

val bxTrait3 = TraitBuilder.create("bx3");
bxTrait3.color = 0xffaadd;
bxTrait3.localizedName = game.localize("bxp.tconstruct.a.bx3.name");
bxTrait3.localizedDescription = game.localize("bxp.tconstruct.a.bx3.des");
bxTrait3.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*5 >= target.health){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait3.register();

val bxTrait4 = TraitBuilder.create("bx4");
bxTrait4.color = 0xffaadd;
bxTrait4.localizedName = game.localize("bxp.tconstruct.a.bx4.name");
bxTrait4.localizedDescription = game.localize("bxp.tconstruct.a.bx4.des");
bxTrait4.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return ticBxKillTargetRate as float* target.maxHealth;
};
bxTrait4.register();

val expTrait = TraitBuilder.create("exp_is_power");
expTrait.color = 0xffaadd;
expTrait.localizedName = game.localize("bxp.tconstruct.a.exp_is_power.name");
expTrait.localizedDescription = game.localize("bxp.tconstruct.a.exp_is_power.des");
expTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var entity as IEntity = attacker;
    var player as IPlayer = entity;
    var mult as float = 1.0f;
    if(player.xp <1000.0f){
        mult += player.xp as float / 1000.0f * ticExpPower;
    }
    else{
        mult = ticExpPower;
    }
    return (mult * newDamage) as float;
};
expTrait.register();

val gengziTrait = TraitBuilder.create("gengzi_power");
gengziTrait.color = 0xffaadd;
gengziTrait.localizedName = game.localize("bxp.tconstruct.a.gengzi_power.name");
gengziTrait.localizedDescription = game.localize("bxp.tconstruct.a.gengzi_power.des");
gengziTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isCritical){
        return (ticCaigengziPower[0] * newDamage) as float;
    }
    return (ticCaigengziPower[1] * newDamage) as float;
};
gengziTrait.register();

val anwuTrait = TraitBuilder.create("spooky_anwu");
anwuTrait.color = 0xffaadd;
anwuTrait.localizedName = game.localize("bxp.tconstruct.a.spooky_anwu.name");
anwuTrait.localizedDescription = game.localize("bxp.tconstruct.a.spooky_anwu.des")+ticAnwuPower[0]+game.localize("bxp.tconstruct.a.spooky_anwu.des1")+ticAnwuPower[1]+game.localize("bxp.tconstruct.a.spooky_anwu.des2");
anwuTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isUndead){
        return (ticAnwuPower[0] * newDamage) as float;
    }
    else{
        return (ticAnwuPower[1] * newDamage) as float;
    }
};
anwuTrait.register();

val lowTrait = TraitBuilder.create("low_kill_big");
lowTrait.color = 0xffaadd;
lowTrait.localizedName = game.localize("bxp.tconstruct.a.low_kill_big.name");
lowTrait.localizedDescription = game.localize("bxp.tconstruct.a.low_kill_big.des");
lowTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    val mult as float = 1.0f + ((target.health as float/ attacker.health as float)/10.0f) as float;
    if(mult as double>= ticKillBiggestPower){
        return (ticKillBiggestPower * newDamage) as float;
    }
    else{
        return (mult as float * newDamage) as float;
    }
};
lowTrait.register();

val videoTrait = TraitBuilder.create("bx_video");
videoTrait.color = 0xffaadd;
videoTrait.localizedName = game.localize("bxp.tconstruct.a.bx_video.name");
videoTrait.localizedDescription = game.localize("bxp.tconstruct.a.bx_video.des")+ticBxVideoPower+game.localize("bxp.tconstruct.a.bx_video.des1");
videoTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.isInWater && target.isInWater){
        return (ticBxVideoPower * newDamage) as float;
    }
    return newDamage as float;
};
videoTrait.register();
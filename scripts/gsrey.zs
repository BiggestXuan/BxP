#priority 20
#loader contenttweaker

import mods.ctutils.utils.Math;
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
bxTrait1.localizedName = "大轩之力";
bxTrait1.localizedDescription = "当目标生命小于自身三分之一时直接秒杀";
bxTrait1.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health >= target.health*3){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait1.register();

val bxTrait2 = TraitBuilder.create("bx2");
bxTrait2.color = 0xffaadd;
bxTrait2.localizedName = "大轩神力";
bxTrait2.localizedDescription = "当目标生命小于自身一点五倍时直接秒杀";
bxTrait2.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*1.5 >= target.health){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait2.register();

val bxTrait3 = TraitBuilder.create("bx3");
bxTrait3.color = 0xffaadd;
bxTrait3.localizedName = "大轩魂力";
bxTrait3.localizedDescription = "当目标生命小于自身五倍时直接秒杀";
bxTrait3.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.health*5 >= target.health){
        return ticBxKillTargetRate as float* target.maxHealth;
    }
    return originalDamage as float;
};
bxTrait3.register();

val bxTrait4 = TraitBuilder.create("bx4");
bxTrait4.color = 0xffaadd;
bxTrait4.localizedName = "大轩yyds!";
bxTrait4.localizedDescription = "直接秒杀";
bxTrait4.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return ticBxKillTargetRate as float* target.maxHealth;
};
bxTrait4.register();

val expTrait = TraitBuilder.create("exp_is_power");
expTrait.color = 0xffaadd;
expTrait.localizedName = "知识就是力量";
expTrait.localizedDescription = "等级越高，伤害越高（上限1000级）";
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
gengziTrait.localizedName = "梗子之力";
gengziTrait.localizedDescription = "暴击伤害增加70%，普通攻击伤害降低90%";
gengziTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isCritical){
        return (ticCaigengziPower[0] * newDamage) as float;
    }
    return (ticCaigengziPower[1] * newDamage) as float;
};
gengziTrait.register();

val anwuTrait = TraitBuilder.create("spooky_anwu");
anwuTrait.color = 0xffaadd;
anwuTrait.localizedName = "恶臭的暗无";
anwuTrait.localizedDescription = "对亡灵生物造成"+ticAnwuPower[0]+"倍伤害，其他生物造成"+ticAnwuPower[1]+"倍伤害";
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
lowTrait.localizedName = "以小欺大";
lowTrait.localizedDescription = "对手生命与你差额越大，伤害越高";
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
videoTrait.localizedName = "大轩的视频";
videoTrait.localizedDescription = "当你和目标都在水中时，造成"+ticBxVideoPower+"倍伤害";
videoTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.isInWater && target.isInWater){
        return (ticBxVideoPower * newDamage) as float;
    }
    return newDamage as float;
};
videoTrait.register();

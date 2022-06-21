#loader contenttweaker

#priority 20

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;

import scripts.API.thinker.ticBeatFriend;
import scripts.API.thinker.ticIFeelNb;
import scripts.API.thinker.ticBxqq;
import scripts.API.thinker.ticAbyssPower;

val abxTrait1 = ArmorTraitBuilder.create("abx1");
abxTrait1.color = 0xffaadd;
abxTrait1.localizedName = "大轩的保护";
abxTrait1.localizedDescription = "所有伤害削减0.6%";
abxTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.994f * newDamage) as float; 
};
abxTrait1.register();

val abxTrait2 = ArmorTraitBuilder.create("abx2");
abxTrait2.color = 0xffaadd;
abxTrait2.localizedName = "大轩的庇护";
abxTrait2.localizedDescription = "所有伤害削减1.5%";
abxTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.985f * newDamage) as float; 
};
abxTrait2.register();

val abxTrait3 = ArmorTraitBuilder.create("abx3");
abxTrait3.color = 0xffaadd;
abxTrait3.localizedName = "大轩的神护";
abxTrait3.localizedDescription = "所有伤害削减4%";
abxTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return (0.96f * newDamage) as float; 
};
abxTrait3.register();

val abxTrait4 = ArmorTraitBuilder.create("abx4");
abxTrait4.color = 0xffaadd;
abxTrait4.localizedName = "大轩的拥抱";
abxTrait4.localizedDescription = "所有伤害全部削减";
abxTrait4.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    return 0.0f;
};
abxTrait4.register();


var childTrait = TraitBuilder.create("child_kill");
childTrait.color = 0xffaadd;
childTrait.localizedName = "狂扁小朋友";
childTrait.localizedDescription = "对幼年生物造成"+ticBeatFriend+"倍伤害";
childTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isChild){
        return (ticBeatFriend * newDamage) as float;
    }
    return newDamage as float;
};
childTrait.register();

val healthTrait = TraitBuilder.create("health_kill");
healthTrait.color = 0xffaadd;
healthTrait.localizedName = "我超勇的";
healthTrait.localizedDescription = "生命越高，伤害越高";
healthTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var health as float = attacker.health;
    if(health >=3000){
        return (ticIFeelNb * newDamage) as float;
    }
    else{
        return ( newDamage as float * health as float / 1500.0f) +newDamage as float;
    }
};
healthTrait.register();

val bxkillTrait = TraitBuilder.create("bx_kill");
bxkillTrait.color = 0xffaadd;
bxkillTrait.localizedName = "轩秀才水友群";
bxkillTrait.localizedDescription = "对本整合包中水友实体造成五倍伤害";
bxkillTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(!isNull(target) && !isNull(target.definition) && !isNull(target.definition.name)){
        if(target.definition.name == "jaoxaono" || target.definition.name == "caigengzi" || target.definition.name == "yuluo" || target.definition.name == "tulye" || target.definition.name == "sdxhop"){
            return ticBxqq * newDamage as float;
        }
        return newDamage;
    }
    return newDamage;
};
bxkillTrait.register();

val abyssTrait = TraitBuilder.create("abyss_warp");
abyssTrait.color = 0xffaadd;
abyssTrait.localizedName = "深渊噩梦";
abyssTrait.localizedDescription = "在深渊维度中伤害更高";
abyssTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(attacker.dimension == 50){
        return (ticAbyssPower[0]* newDamage) as float;
    }
    if(attacker.dimension == 51){
        return (ticAbyssPower[1] * newDamage) as float;
    }
    if(attacker.dimension == 52){
        return (ticAbyssPower[2] * newDamage) as float;
    }
    if(attacker.dimension == 53){
        return (ticAbyssPower[3] * newDamage) as float;
    }
    return newDamage as float;
};
abyssTrait.register();

val finalTrait = TraitBuilder.create("final_you");
finalTrait.color = 0xffaadd;
finalTrait.localizedName = "终结你";
finalTrait.localizedDescription = "当亡灵生物着火时，直接秒杀";
finalTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isUndead && target.isBurning){
        return 3.0f *target.maxHealth as float;
    }
    return newDamage;
};
finalTrait.register();



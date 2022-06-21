#loader contenttweaker

#modloaded tconstruct

#priority 20

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.TraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;

import scripts.API.thinker.ticWarpPower;
import scripts.API.thinker.ticFireWindPower;
import scripts.API.thinker.ticStoneGodPower;
import scripts.API.thinker.ticWaterGodPower;
import scripts.API.thinker.ticBetChance;
import scripts.API.thinker.ticBetPower;

val warpattackTrait = TraitBuilder.create("warp_attack");
warpattackTrait.color = 0xffaadd;
warpattackTrait.localizedName = "万恶之源";
warpattackTrait.localizedDescription = "扭曲越高，伤害越高";
warpattackTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var warp as int = 0;
    var player as IPlayer = attacker;
    warp = player.warpNormal + player.warpTemporary + player.warpPermanent;
    if (warp >=100 ){
        return (ticWarpPower * newDamage) as float;
    }
    else{
        return (ticWarpPower * (warp as float / 100.0f) * newDamage) as float;
    }
};
warpattackTrait.register();

val fireWindTrait = TraitBuilder.create("fire_trait");
fireWindTrait.color = 0xffaadd;
fireWindTrait.localizedName = "火风";
fireWindTrait.localizedDescription = "对燃烧的实体造成额外伤害";
fireWindTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(isNull(target)) return newDamage;
    if(isNull(target.definition)) return newDamage;
    if(isNull(target.definition.id)) return newDamage;
    if(target.isBurning){
        return newDamage*ticFireWindPower;
    }
    return newDamage;
};
fireWindTrait.register();

val eyeWindTrait = TraitBuilder.create("eye_trait");
eyeWindTrait.color = 0xffaadd;
eyeWindTrait.localizedName = "岩神的注视";
eyeWindTrait.localizedDescription = "对所有boss造成额外伤害";
eyeWindTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(target.isBoss){
        return newDamage * ticStoneGodPower;
    }
    return newDamage;
};
eyeWindTrait.register();

val windBlessTrait = TraitBuilder.create("bless_trait");
windBlessTrait.color = 0xffaadd;
windBlessTrait.localizedName = "水神的祝福";
windBlessTrait.localizedDescription = "对所有水友实体造成更多伤害";
windBlessTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    if(!isNull(target) && !isNull(target.definition) && !isNull(target.definition.name)){
        if(target.definition.name == "jaoxaono" || target.definition.name == "caigengzi" || target.definition.name == "yuluo" || target.definition.name == "tulye" || target.definition.name == "sdxhop"){
            return ticWaterGodPower *newDamage;
        }
        return newDamage;
    }
        return newDamage;
};
windBlessTrait.register();

val godEyeTrait = TraitBuilder.create("god_eye");
godEyeTrait.color = 0xffaadd;
godEyeTrait.localizedName = "冰神的祝福";
godEyeTrait.localizedDescription = "每次攻击后恢复饥饿值";
godEyeTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    var player as IPlayer = attacker;
    server.commandManager.executeCommand(server,"effect "+player.name+" minecraft:saturation 5 255");
};
godEyeTrait.register();

val godAngryTrait = TraitBuilder.create("god_angry");
godAngryTrait.color = 0xffaadd;
godAngryTrait.localizedName = "风神之怒";
godAngryTrait.localizedDescription = "生命越高伤害越低，生命越低伤害越高";
godAngryTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var healthRate as float = attacker.health as float / attacker.maxHealth;
    if(healthRate ==1.0f){
        return 0.5f * newDamage as float;
    }
    if(healthRate >= 0.8f){
        return (1.0f - healthRate) * 5.0f * newDamage as float;
    }
    if(healthRate >= 0.3f){
        return (1.0f - healthRate) * 2.0f * newDamage as float;
    }
    else{
        return 2.0f * newDamage as float;
    }
};
godAngryTrait.register();

val dt = TraitBuilder.create("dt");
dt.color = 0xffaadd;
dt.localizedName = "狂热的赌徒";
dt.localizedDescription = "伤害就跟赌博一样，不是吗？";
dt.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    var random as double = Math.random();
    if(random >=ticBetChance){
        return newDamage * (ticBetPower * random as float);
    }
    return (newDamage * random as float) as float;
};
dt.register();

var gold = TraitBuilder.create("gold");
gold.color = 0xffaadd;
gold.localizedName = "欺软怕硬";
gold.localizedDescription = "有些东西就是这样";
gold.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
    return (attacker.health as float / target.health as float) * newDamage;
};
gold.register();
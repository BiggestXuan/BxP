#loader contenttweaker

#modloaded tconstruct

#priority 25

import mods.ctutils.utils.Math;
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;


val aexplodeTrait3 = ArmorTraitBuilder.create("aexplode3");
aexplodeTrait3.color = 0xffaadd;
aexplodeTrait3.localizedName = game.localize("bxp.tconstruct.at.aexplode3.name");
aexplodeTrait3.localizedDescription = game.localize("bxp.tconstruct.at.aexplode3.des");
aexplodeTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return 0.0f;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait3.register();

val abossTrait1 = ArmorTraitBuilder.create("aboss1");
abossTrait1.color = 0xffaadd;
abossTrait1.localizedName = game.localize("bxp.tconstruct.at.aboss1.name");
abossTrait1.localizedDescription = game.localize("bxp.tconstruct.at.aboss1.des");
abossTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.95f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait1.register();

val abossTrait2 = ArmorTraitBuilder.create("aboss2");
abossTrait2.color = 0xffaadd;
abossTrait2.localizedName = game.localize("bxp.tconstruct.at.aboss2.name");
abossTrait2.localizedDescription = game.localize("bxp.tconstruct.at.aboss2.des");
abossTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.88f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait2.register();

val abossTrait3 = ArmorTraitBuilder.create("aboss3");
abossTrait3.color = 0xffaadd;
abossTrait3.localizedName = game.localize("bxp.tconstruct.at.aboss3.name");
abossTrait3.localizedDescription = game.localize("bxp.tconstruct.at.aboss3.des");
abossTrait3.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.82f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait3.register();

val abossTrait4 = ArmorTraitBuilder.create("aboss4");
abossTrait4.color = 0xffaadd;
abossTrait4.localizedName = game.localize("bxp.tconstruct.at.aboss4.name");
abossTrait4.localizedDescription = game.localize("bxp.tconstruct.at.aboss4.des");
abossTrait4.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isBoss){
                return (0.75f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
abossTrait4.register();

val zombieTrait = ArmorTraitBuilder.create("ai_am_zombie");
zombieTrait.color = 0xffaadd;
zombieTrait.localizedName = game.localize("");
zombieTrait.localizedDescription = game.localize("");
zombieTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isUndead){
                return 0.0f;
            }
            return (2.0f * damage) as float;
        }
        return damage as float;
    }
    return damage as float;
};
zombieTrait.register();

val aexplodeTrait1 = ArmorTraitBuilder.create("aexplode1");
aexplodeTrait1.color = 0xffaadd;
aexplodeTrait1.localizedName = game.localize("bxp.tconstruct.at.aexplode1.name");
aexplodeTrait1.localizedDescription = game.localize("bxp.tconstruct.at.aexplode1.des");
aexplodeTrait1.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return (0.33f * damage) as float;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait1.register();


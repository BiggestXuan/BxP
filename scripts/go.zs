#loader contenttweaker

#modloaded tconstruct

#priority 20

import mods.ctutils.utils.Math; 
import mods.contenttweaker.conarm.ArmorTraitBuilder;

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IWorld;
 
val achildTrait = ArmorTraitBuilder.create("achild");
achildTrait.color = 0xffaadd;
achildTrait.localizedName = game.localize("bxp.tconstruct.at.achild.name");
achildTrait.localizedDescription = game.localize("bxp.tconstruct.at.achild.des");
achildTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            if(attacker.isChild){
                return (2.0f * damage) as float;
            }
        }
        return damage as float;
    }
    return damage as float;
};
achildTrait.register();

val awarpTrait = ArmorTraitBuilder.create("awarp");
awarpTrait.color = 0xffaadd;
awarpTrait.localizedName = game.localize("bxp.tconstruct.at.awarp.name");
awarpTrait.localizedDescription = game.localize("bxp.tconstruct.at.awarp.des");
awarpTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if (!isNull(player)){
        var warp as int = 0;
        var player as IPlayer = player;
        warp = player.warpNormal + player.warpTemporary + player.warpPermanent;
        if(warp >100){
            return (0.85f * newDamage) as float;
        }
        else{
            return (0.85f * (warp as float /100.0f) * newDamage) as float;
        }
    }
    return newDamage;
};
awarpTrait.register();

val ahealthTrait = ArmorTraitBuilder.create("ahealth");
ahealthTrait.color = 0xffaadd;
ahealthTrait.localizedName = game.localize("bxp.tconstruct.at.ahealth.name");
ahealthTrait.localizedDescription = game.localize("bxp.tconstruct.at.ahealth.des");
ahealthTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    var rate as float = 1.0f;
    var healthRate as float = (player.health as float / player.maxHealth as float);
    if (isNull(player)){
        return newDamage;
    }
    if(healthRate <= 0.2f){
        return (0.6f * newDamage) as float; 
    }
    else{
        return (0.6f * healthRate as float * newDamage) as float;
    }
};
ahealthTrait.register();

val awindProtectTrait = ArmorTraitBuilder.create("awindp");
awindProtectTrait.color = 0xffaadd;
awindProtectTrait.localizedName = game.localize("bxp.tconstruct.at.awindp.name");
awindProtectTrait.localizedDescription = game.localize("bxp.tconstruct.at.awindp.des");
awindProtectTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)) return damage;
    if(isNull(source.getTrueSource())) return damage;
    if(source.projectile){
        return 0.0f;
    }
    return damage;
};
awindProtectTrait.register();

val awindProtectaTrait = ArmorTraitBuilder.create("awindpa");
awindProtectaTrait.color = 0xffaadd;
awindProtectaTrait.localizedName = game.localize("bxp.tconstruct.at.awindpa.name");
awindProtectaTrait.localizedDescription = game.localize("bxp.tconstruct.at.awindpa.des");
awindProtectaTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)) return damage;
    if(isNull(source.getTrueSource())) return damage;
    server.commandManager.executeCommand(server,"effect "+player.name+" minecraft:saturation 5 255");
    return damage;
};
awindProtectaTrait.register();

val aexplodeTrait2 = ArmorTraitBuilder.create("aexplode2");
aexplodeTrait2.color = 0xffaadd;
aexplodeTrait2.localizedName = game.localize("bxp.tconstruct.at.aexplode2.name");
aexplodeTrait2.localizedDescription = game.localize("bxp.tconstruct.at.aexplode2.des");
aexplodeTrait2.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(source)){
        return damage as float;
    }
    else{
        if(source.explosion){
            return (0.67f * damage) as float;
        }
        else{
            return damage as float;
        }
    }
};
aexplodeTrait2.register();

val aexpTrait = ArmorTraitBuilder.create("aexp");
aexpTrait.color = 0xffaadd;
aexpTrait.localizedName = game.localize("bxp.tconstruct.at.aexp.name");
aexpTrait.localizedDescription = game.localize("bxp.tconstruct.at.aexp.des");
aexpTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)){
        return damage as float;
    }
    else{
        if(player.xp >=1000){
            return (0.85f * newDamage) as float;
        }
        else{
            return (0.85f * ((player.xp as float) / 1000.0f) * newDamage) as float;
        }
    }
};
aexpTrait.register();
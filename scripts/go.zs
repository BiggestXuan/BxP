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
achildTrait.localizedName = "我怕熊孩子";
achildTrait.localizedDescription = "幼年生物造成伤害加倍";
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
awarpTrait.localizedName = "扭曲拥护";
awarpTrait.localizedDescription = "扭曲越高，防御越高";
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
ahealthTrait.localizedName = "绝弟求生";
ahealthTrait.localizedDescription = "生命越低，护甲越高";
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
awindProtectTrait.localizedName = "风神的庇护";
awindProtectTrait.localizedDescription = "若远程伤害能对你造成伤害，那么它不能造成伤害";
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
awindProtectaTrait.localizedName = "风神的衬托";
awindProtectaTrait.localizedDescription = "受伤时恢复所有饥饿值";
awindProtectaTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt){
    if(isNull(player)) return damage;
    if(isNull(source.getTrueSource())) return damage;
    server.commandManager.executeCommand(server,"effect "+player.name+" minecraft:saturation 5 255");
    return damage;
};
awindProtectaTrait.register();

val aexplodeTrait2 = ArmorTraitBuilder.create("aexplode2");
aexplodeTrait2.color = 0xffaadd;
aexplodeTrait2.localizedName = "爆炸神盾II";
aexplodeTrait2.localizedDescription = "爆炸伤害减少三分之二";
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
aexpTrait.localizedName = "知识就是保护";
aexpTrait.localizedDescription = "等级越高，减免伤害越高（最高1000级）";
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
import crafttweaker.event.EntityLivingHurtEvent;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;

import mods.ctintegration.scalinghealth.DifficultyManager;

import scripts.API.config.difficultyBase;
import scripts.API.config.difficultyOther;
import scripts.API.config.difficultyMagic;
import scripts.API.config.difficultyFireInHell;
import scripts.API.config.difficultyMagicInTwilight;
import scripts.API.config.difficultyMagicInAbyss;

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = event.entity.world;
    if(entity instanceof IPlayer){
        var player as IPlayer = event.entityLivingBase;
        var difficulty = DifficultyManager.getDifficulty(player);
        var id as int = world.getDimension();
        var base as float = difficultyBase;
        if(event.damageSource.projectile ||event.damageSource.explosion){
            return event.amount = difficultyOther * difficulty * base;
        }
        if(event.damageSource.fireDamage){
            if(id == -1){
                base *= difficultyFireInHell;
            }
            return event.amount = difficultyOther * difficulty * base;
        }
        if(event.damageSource.magicDamage){
            if(id == 7){
                base *= difficultyMagicInTwilight;
            }
            for i in [50,51,52,53] as int[]{
                if(id == i){
                    base *= difficultyMagicInAbyss;
                    break;
                }
            }
            return event.amount = difficultyMagic * difficulty * base;
        }
    }
});
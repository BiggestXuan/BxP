import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerLoggedInEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;

import scripts.API.config.monsterMoreDamage;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase= event.entityLivingBase;
    var player as IPlayer = entity;
    if(!monsterMoreDamage) return;
    if(isNull(entity) || isNull(entity.definition) || isNull(entity.definition.name)) return;
    if (entity.isUndead && entity.isBurning && !entity.isBoss && entity.world.canSeeSky(entity.position) && entity.world.isDayTime() && event.damageSource.isFireDamage()) {
        event.amount += (entity.maxHealth as float / 20.0f);
    }
    if(entity.definition.name has "vampirism" && !(entity.definition.name has "hunter") && entity.world.canSeeSky(entity.position) && entity.world.isDayTime()){
        event.amount +=(entity.maxHealth as float / 10.0f);
    }
});

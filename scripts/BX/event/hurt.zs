#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.IEventCancelable;
import mods.ctintegration.scalinghealth.DifficultyManager;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase= event.entityLivingBase;
    var player as IPlayer = entity;
    if (entity.isUndead && entity.isBurning && !entity.isBoss && entity.world.canSeeSky(entity.position) && entity.world.isDayTime() && event.damageSource.isFireDamage()) {
        event.amount += (entity.maxHealth as float / 20.0f);
    }
});

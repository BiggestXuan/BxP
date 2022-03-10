#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerLoggedInEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase= event.entityLivingBase;
    var player as IPlayer = entity;
    if(isNull(entity) || isNull(entity.definition) || isNull(entity.definition.name)) return;
    if (entity.isUndead && entity.isBurning && !entity.isBoss && entity.world.canSeeSky(entity.position) && entity.world.isDayTime() && event.damageSource.isFireDamage()) {
        event.amount += (entity.maxHealth as float / 20.0f);
    }
    if(entity.definition.name == "vampirism.vampire"&& entity.world.canSeeSky(entity.position) && entity.world.isDayTime()){
        event.amount +=(entity.maxHealth as float / 10.0f);
    }
});

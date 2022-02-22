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
import mods.ctutils.utils.Math;

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent){
    var entity as IEntity = event.entityLivingBase;
    if(entity.definition.name == "wither"){

    }
    else return;
});
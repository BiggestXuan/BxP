#priority 22

import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityLivingBase;

import mods.ctutils.utils.Math;

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
    var entity as IEntityLivingBase= event.entityLivingBase;
    var chance as int = min(12,entity.maxHealth as int/750);
    if(entity.maxHealth <=1000) return;
    if(chance > Math.random()*100) {
        event.addItem(<additions:bxloveu-as_shard>);
    }
});
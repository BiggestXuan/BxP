import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntityLivingBase;

import scripts.API.config.jaoxaonoNb;

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
    if(isNull(entity) || isNull(entity.definition) || isNull(entity.definition.id)) return;
    if(entity.definition.id == "bxp:jaoxaono" && jaoxaonoNb){
        if(event.amount < entity.maxHealth * 0.99f){
            entity.health += event.amount;
        }
        else return;
    }
    else return;
});
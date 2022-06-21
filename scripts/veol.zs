import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntityLivingBase;

events.onEntityLivingHurt(function (event as EntityLivingHurtEvent){
    var entity as IEntityLivingBase = event.entityLivingBase;
    if(isNull(entity) || isNull(entity.definition) || isNull(entity.definition.id)) return;
    val name as string[]=[
        "bxp:tulye",
        "bxp:caigengzi",
        "bxp:yuluo",
        "bxp:sdxhop"
    ];
    for n in name{
        if(entity.definition.id == n){
            if(event.amount <= entity.maxHealth as float * 0.25f){
                return;
            }
            event.amount = entity.maxHealth as float * 0.25f;
        }
    }
});
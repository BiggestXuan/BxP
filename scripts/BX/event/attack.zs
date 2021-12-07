#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntity = event.target;
    var player as IPlayer = event.player;
    var sy as string[]=["jaoxaono","caigengzi","tulye","yuluo"];
   /*print(entity.id);
    print(entity.customName);
    print(entity.definition.name);*/
    if(!isNull(entity.definition) && player.creative){
        return ;
    }
    for name in sy{
        if(!isNull(entity.definition) && entity.definition.name == name){
            if(player.xp <20){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要20级才能攻击"+entity.definition.name));
            }
        }
    }
    if(!isNull(entity.definition) && entity.isBoss){
        if(player.xp <50){
            event.cancel();
            event.player.sendStatusMessage(format.red("你至少需要50级才能攻击"+entity.definition.name));
        }
    }
    var mob as string[int]={
        5 : "Enderman",
        10 : "Zombiepigman",
        15 : "Ghast",
        20 : "Shulker",
        30 : "abyssalcraft.lessershoggoth"
    };
    for i,j in mob{
        if(!isNull(entity.definition) && entity.definition.name == j){
            if(player.xp < i ){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要"+i+"级才能攻击"+j));
            }
        }
    }
    var normal as string[]=[
        "Zombie","Spider","Creeper","Skeleton","Cow","Pig","Chicken","Sheep","Villager","Rabbit"
    ];
    for i in normal{
        if(!isNull(entity.definition) && entity.definition.name == i){
            if(player.xp == 0){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要1级才能攻击"+i));
            }
        }
    }
});
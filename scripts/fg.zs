import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;

import scripts.API.config.needLevelToAttack;

events.onPlayerAttackEntity(function(event as PlayerAttackEntityEvent){
    var entity as IEntity = event.target;
    var player as IPlayer = event.player;
    var items as IItemStack = event.player.currentItem;
    var sy as string[]=["jaoxaono","caigengzi","tulye","yuluo"];
    var stage as string[]=[
    "nether_star",
	"wyvern_core",
	"bx_ingot",
	"fusion_ingot",
	"dragon_heart",
	"awakened_core",
	"ench_ingot",
	"chaotic_core",
    "creative_item",
	"avaritia_ingot",
	"final_ingot",
	"disabled",
    "level_1",
    "level_2",
    "level_3",
    "level_4",
    "level_5",
    "level_6",
    "level_7",
    "level_8",
    "level_9"
    ];
    var mob as string[int]={
        5 : "Enderman",
        7 : "Slime",
        9 : "Silverfish",
        10 : "Zombiepigman",
        15 : "Ghast",
        20 : "Shulker",
        30 : "abyssalcraft.lessershoggoth"
    };
    var disabledLevel as bool = false;
    if(player.hasGameStage("awakened_core")){
        disabledLevel = true;
    }
    if(isNull(entity) || isNull(entity.definition) || isNull(entity.definition.name)) return;
    if(!isNull(entity.definition.name) && !isNull(items)){  
        if(items.definition.id == "additions:bxloveu-old_sliver"){
            server.commandManager.executeCommand(server,"/effect "+player.name+" minecraft:wither 4 1");
        }
    }
    if(!isNull(entity.definition.name) && player.creative && entity.definition.name == "jaoxaono"){  
        if(isNull(items)){
            return;
        } 
        if(items.definition.id == "additions:bxloveu-fish"){
            for i in stage{ 
            server.commandManager.executeCommand(server,"/gamestage add "+player.name+" "+i);
        }
        player.sendStatusMessage(game.localize("bxp.command.unlockgamestage"));
        }
    }
    if(!isNull(entity.definition) && player.creative){
        return ;
    }
    if(!needLevelToAttack) return;
    for name in sy{
        if(disabledLevel) return;
        if(!isNull(entity.definition) && entity.definition.name == name){
            if(player.xp <20){
                event.cancel();
                event.player.sendStatusMessage(game.localize("bxp.event.attack.level20")+format.red(entity.definition.name));
            }
        }
    }
    if(!isNull(entity.definition) && entity.isBoss){
        if(disabledLevel) return;
        if(player.xp <50){
            event.cancel();
            event.player.sendStatusMessage(game.localize("bxp.event.attack.level50")+format.red(entity.definition.name));
        }
    }
});
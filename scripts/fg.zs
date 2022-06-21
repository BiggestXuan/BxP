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
        player.sendStatusMessage(format.red("成功解锁所有游戏阶段！"));
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
                event.player.sendStatusMessage(format.red("你至少需要20级才能攻击"+entity.definition.name));
            }
        }
    }
    if(!isNull(entity.definition) && entity.isBoss){
        if(disabledLevel) return;
        if(player.xp <50){
            event.cancel();
            event.player.sendStatusMessage(format.red("你至少需要50级才能攻击"+entity.definition.name));
        }
    }
    for i,j in mob{
        if(disabledLevel) return;
        if(!isNull(entity.definition) && entity.definition.name == j){
            if(player.xp < i ){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要"+i+"级才能攻击"+j));
            }
        }
    }
});
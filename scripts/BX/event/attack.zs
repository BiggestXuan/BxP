#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerAttackEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.item.IItemStack;

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
	"avaritia_ingot",
	"final_ingot",
	"projecte",
	"disabled"
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
    var normal as string[]=[
        "Zombie","Spider","Creeper","Skeleton","Cow","Pig","Chicken","Sheep","Villager","Rabbit"
    ];
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
    for i,j in mob{
        if(!isNull(entity.definition) && entity.definition.name == j){
            if(player.xp < i ){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要"+i+"级才能攻击"+j));
            }
        }
    }
    for i in normal{
        if(!isNull(entity.definition) && entity.definition.name == i){
            if(player.xp == 0){
                event.cancel();
                event.player.sendStatusMessage(format.red("你至少需要1级才能攻击"+i));
            }
        }
    }
});
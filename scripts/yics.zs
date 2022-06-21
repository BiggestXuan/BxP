#priority 36

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

import mods.ctutils.utils.Math;

import mods.versioner.Versioner;
import mods.versioner.Sponsors;

function func_9536(player as IPlayer) as int{
    var spa = Versioner.getSponsors();
    if(!Versioner.getSponsors().isSponsor(player)) return 0;
    var level as string = spa.getPlayerCategory(player);
    if(level == "super") return 5;
    if(level == "high") return 4;
    if(level == "normal") return 3;
    if(level == "none")  return 2;
    if(level == "Happy") return 10;
    return 0;
}

/*
 *  烟花指令生成于：https://www.mcmod.cn/tools/cbcreator/#/entity/
 */

function func_2698(player as IPlayer){
        if(Math.random() > 0.9){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:3,Colors:[I;8319757],FadeColors:[I;1683985]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.8){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:0,Colors:[I;15207436],FadeColors:[I;16355110]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.7){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:1,Colors:[I;16755456],FadeColors:[I;16376358]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.6){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:2,Colors:[I;5255671],FadeColors:[I;2525177]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.5){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:4,Colors:[I;3274710],FadeColors:[I;2541817]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.4){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:4,Colors:[I;16207153],FadeColors:[I;16711680]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.3){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Flicker:1b,Type:3,Colors:[I;16715221],FadeColors:[I;13697279]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.2){
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Trail:1b,Type:2,Colors:[I;8716045],FadeColors:[I;10354496]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else if(Math.random() > 0.1){   
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Trail:1b,Type:0,Colors:[I;50417],FadeColors:[I;4218367]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
        else{
            server.commandManager.executeCommand(server,"execute "+player.name+" ~ ~ ~ "+'summon minecraft:fireworks_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:10,Explosions:[{Trail:1b,Type:1,Colors:[I;10612992],FadeColors:[I;16728128]}]}},id:"minecraft:fireworks",Count:1},LifeTime:30}');
        }
}

static gem as IItemStack[]=[
    <additions:bxloveu-mua_1>,
    <additions:bxloveu-mua_2>,
    <additions:bxloveu-gem_3>,
    <additions:bxloveu-gem_4>
];
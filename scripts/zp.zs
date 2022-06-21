#priority 32
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;

import mods.zenutils.DelayManager;

import scripts.yics.func_9536;
import scripts.yics.func_2698;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    val player as IPlayer = event.player;
    val level as int = func_9536(player);
    if(level == 5){
        event.player.sendRichTextMessage(format.gold("«««欢迎超级赞助者"+player.name+"游玩大轩整合包！»»»"));
    }
    if(level == 4){
        event.player.sendRichTextMessage(format.aqua("«欢迎高级赞助者"+player.name+"游玩大轩整合包！»"));
    }
    if(level == 3){
        event.player.sendRichTextMessage(format.yellow("☯欢迎中级赞助者"+player.name+"游玩大轩整合包！☯"));
    }
    if(level == 2){
        event.player.sendRichTextMessage(format.green("◇欢迎赞助者"+player.name+"游玩大轩整合包！◇"));
    }
    if(level == 10){
        event.player.sendRichTextMessage(format.red("«欢迎吉祥物"+player.name+"游玩大轩整合包！»"));
    }
    if(level == 0){
        player.sendChat("欢迎玩家"+player.name+"游玩大轩整合包。");
    }
    if(level ==5){
        server.commandManager.executeCommand(server,'tellraw @a {"text":"★★★[全局]欢迎超级赞助者加入游戏！★★★","color":"gold"}');
    }
    if(level ==4){
        server.commandManager.executeCommand(server,'tellraw @a {"text":"★[全局]欢迎高级赞助者加入游戏！★","color":"aqua"}');
    }
    if(level >=4){
    DelayManager.addDelayWork(function(){
        func_2698(player);
    },5 * 20
    );
    }
});
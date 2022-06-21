#priority 2

import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;

import scripts.API.config.disabledAntiCheat;

events.onGameStageAdd(function(event as GameStageAddEvent){
    var player as IPlayer = event.player;
    if(event.gameStage == "hero"){
        if(disabledAntiCheat) return;
        if(!player.hasGameStage("test1")) return;
        player.sendRichTextMessage(format.red("作弊模式无法通关！"));
        event.cancel();
    }
    if(event.gameStage == "test1" && !player.creative){
        player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
    }
    if(event.gameStage == "hero" && !player.hasGameStage("test1") &&!player.creative){
        event.player.sendRichTextMessage(format.blue("----------------------游戏提示----------------------"));
        event.player.sendRichTextMessage(format.blue("您已通关，感谢游玩整合包"));
        event.player.sendRichTextMessage(format.red("BY:Biggest_Xuan"));
    }
    if(player.hasGameStage("test1") && !player.creative && (event.gameStage == "ench_ingot" || event.gameStage == "chaotic_core"|| event.gameStage == "avaritia_ingot")){
        if(disabledAntiCheat) return;
        event.cancel();
        event.player.sendRichTextMessage(format.red("由于你玩整合包作弊了，所以后半段将无法游戏！"));
        event.player.sendRichTextMessage(format.red("感谢你的游玩！若坚持认定未作弊请联系作者！"));
    }
});
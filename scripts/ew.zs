#ikwid

import mods.ctintegration.gamestages.GameStageAddEvent;
import crafttweaker.player.IPlayer;

events.onGameStageAdd(function(event as GameStageAddEvent) {
    if(event.player.creative) return;
    if(event.gameStage == "bx_ingot"){
        event.player.sendRichTextMessage(format.red("--------------------"+"BUG说明"+"--------------------"));
        event.player.sendRichTextMessage(format.red("有时龙盾被攻击后会造成tps骤减，此时重进存档可解决问题"));
    }
    if(event.gameStage == "fusion_ingot"){
        event.player.sendRichTextMessage(format.red("--------------------"+"BUG说明"+"--------------------"));
        event.player.sendRichTextMessage(format.red("有时龙盾被攻击后会造成tps骤减，此时重进存档可解决问题"));
        event.player.sendRichTextMessage(format.green("此信息不会再次出现"));
    }
});
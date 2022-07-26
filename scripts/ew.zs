#ikwid

import mods.ctintegration.gamestages.GameStageAddEvent;
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

function says(p as IPlayer){
    p.sendRichTextMessage(ITextComponent.fromTranslation("bxp.stage.bug.head"));
    p.sendRichTextMessage(ITextComponent.fromTranslation("bxp.stage.bug.des1"));
}

events.onGameStageAdd(function(event as GameStageAddEvent) {
    var p as IPlayer = event.player;
    if(event.player.creative) return;
    if(event.gameStage == "bx_ingot"){
        says(p);
    }
    if(event.gameStage == "fusion_ingot"){
        says(p);
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.stage.bug.des2"));
    }
});
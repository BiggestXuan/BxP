import crafttweaker.events.IEventManager;

import mods.ctintegration.gamestages.GameStageAddedEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

import scripts.API.config.difficultyMap;

events.onGameStageAdded(function(event as GameStageAddedEvent){
    var player as IPlayer= event.player;
    var stage = event.gameStage;
    if(isNull(stage)){
        return;
    }
    for i,j in difficultyMap{
        if(stage == j){
            DifficultyManager.setDifficulty(player,i);
            var diff as ITextComponent = ITextComponent.fromData(["",{text:i as string}]);
            event.player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.difficulty.setting")+diff);
        }
    }
});
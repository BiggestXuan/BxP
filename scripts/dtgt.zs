#ikwid
import crafttweaker.events.IEventManager;

import mods.ctintegration.gamestages.GameStageAddedEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.player.IPlayer;

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
            event.player.sendRichTextMessage(format.red("你的游戏难度被设置为了"+i));
        }
    }
});
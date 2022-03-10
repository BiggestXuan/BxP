#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import mods.ctintegration.gamestages.GameStageAddedEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;
import crafttweaker.player.IPlayer;

events.onGameStageAdded(function(event as GameStageAddedEvent){
    var player as IPlayer= event.player;
    var stage = event.gameStage;
    var map as string[int]={
        20.0:"nether_star",
        45.0:"wyvern_core",
        120.0:"bx_ingot",
        225.0:"fusion_ingot",
        450.0:"dragon_heart",
        700.0:"awakened_core",
        1100.0:"ench_ingot",
        1850.0:"chaotic_core",
        3000.0:"avaritia_ingot",
        6000.0:"final_ingot",
    };
    if(isNull(stage)){
        return;
    }
    for i,j in map{
        if(stage == j){
            DifficultyManager.setDifficulty(player,i);
            event.player.sendRichTextMessage(format.red("你的游戏难度被设置为了"+i));
        }
    }
});
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
        50.0:"wyvern_core",
        150.0:"bx_ingot",
        350.0:"fusion_ingot",
        500.0:"dragon_heart",
        1200.0:"awakened_core",
        1500.0:"ench_ingot",
        2700.0:"chaotic_core",
        4000.0:"avaritia_ingot",
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
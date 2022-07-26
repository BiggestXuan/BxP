import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

import crafttweaker.event.IEventCancelable;
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

import scripts.API.config.disabledAntiCheat;

events.onGameStageAdd(function(event as GameStageAddEvent){
    var player as IPlayer = event.player;
    if(disabledAntiCheat) return;
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
	"disabled"
    ];
    if(event.gameStage == "creative_item"){
        for i in 0 .. 8{
            if(!player.hasGameStage(stage[i]) || player.hasGameStage("test1")){
                if(player.creative) return;
                event.cancel();
                player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.anticheat1"));
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
                return;
            }
        }
    }
    if(event.gameStage == "hero"){
        for i in 0 .. 10{
            if(!player.hasGameStage(stage[i])){
                event.cancel();
                player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.anticheat2"));
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
                return;
            }
        }
    }
});
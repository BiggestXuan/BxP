#priority 3

import crafttweaker.event.CommandEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

import mods.zenutils.command.ZenCommand;
import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

import scripts.rtnl.func_1083;
import scripts.meco.func_8714;
import scripts.kp.func_7441;
import scripts.API.config.disabledCommand;
import scripts.API.config.disabledAntiCheat;

static name as string[]=[];

function func_4871(player as IPlayer,permission as int) as bool{
    var useCommand as bool = true;
    if(permission == 2){
        if(player.hasGameStage("hero") && !player.hasGameStage("test1") && !player.creative && !disabledAntiCheat){
            return true;
        }
        else return false;
    }
    if(player.creative && !player.hasGameStage("woss")){
        return true;
    }
    return false;
}

events.onGameStageRemove(function (event as GameStageRemoveEvent){
    var player as IPlayer = event.player;
    if(event.gameStage == "tip") return;
    if(disabledAntiCheat) return;
    if(player.uuid == "29328b6c-6f03-4fba-9436-678b696e8aeb" && player.name == "Biggest_Xuan") return;
    event.player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.gamestage.deny"));
    for i in 0 .. 3{
        func_8714(player);
    }
    event.cancel();
});

events.onCommand(function(event as CommandEvent){
    if(event.commandSender instanceof IPlayer){
    if(event.commandSender.world.remote) return;
    if(disabledAntiCheat) return;
    var player as IPlayer = event.commandSender;
    if(event.commandSender instanceof IPlayer){
        for command in disabledCommand{
            if(!player.hasGameStage("test1") && event.command.name == command){
                event.cancel();
                func_1083(player);
                return;
            }
        }
        if(event.command.name == "vampirism" && !func_7441(player)){
            if(event.parameters.length >=1){
                if(event.parameters[0] == "fang"){
                    return;
                }
                else{
                    event.cancel();
                    func_1083(player); 
                } 
            }
            else{
                event.cancel();
                func_1083(player); 
            }
        }
    }
}
});

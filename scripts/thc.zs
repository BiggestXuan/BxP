import crafttweaker.event.CommandEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import crafttweaker.data.IData;

import scripts.tkb.func_4871;
import scripts.lxz.func_7524;
import scripts.cmr.func_3692;
import scripts.kp.func_7441;
import scripts.oxzc.func_6154;
import scripts.vcod.func_3368;
import scripts.meco.func_8714;
import scripts.cmr.func_7159;
import scripts.dml.func_3951;
import scripts.fc.func_4752;
import scripts.yics.func_9536;
import scripts.apcn.func_1239;
import scripts.cef.func_9100;
import scripts.bu.func_2832;
import scripts.cmr.func_1685;
import scripts.sl.name;
import scripts.gsn.stage;
import scripts.yics.gem;

import scripts.API.config.disabledAntiCheat;

events.onCommand(function(event as CommandEvent){
    if(event.commandSender.world.remote) return;
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        var p  = player;
        if(!player.creative && !disabledAntiCheat){
            if(event.command.name == "tpa"){
                event.cancel();
                player.sendChat(game.localize("bxp.command.deny1"));
            }
            if(event.command.name == "home" || event.command.name == "sethome"){
                event.cancel();
                player.sendChat(game.localize("bxp.command.deny2"));
            }
            if(event.command.name == "tp"){
                event.cancel();
                player.sendChat(game.localize("bxp.command.deny3"));
            }
            if(event.command.name == "kill" || event.command.name == "weather" || event.command.name == "time"){
                event.cancel();
                player.sendChat(game.localize("bxp.command.deny4"));
            }
        }
        var level = func_9536(player);
        if(event.command.name == "bx"){
            if(event.parameters.length !=1 && event.parameters.length !=2){
                func_3692(player);
                func_4752(player);
                return;
            }
            if(event.parameters[0] == "help"){
                func_9100(player,"bxp.command.head");
                func_3368(player,name);
                if(func_3951(player)){
                    func_9100(player,"bxp.command.name13");
                }
                if(func_7441(player)){
                    func_9100(player,"bxp.command.name14");
                }
                func_9100(player,"bxp.command.name15");
                return;
            }
            else if(event.parameters.length == 1){
                if(event.parameters[0] == "kill" || event.parameters[0] == "cheat" ||event.parameters[0] == "time" ||event.parameters[0] == "unable" || event.parameters[0] == "give" ||event.parameters[0] == "read" || event.parameters[0] == "tc"|| event.parameters[0] == "weather"){
                    func_3692(player);
                    func_4752(player);
                }
            }
            else if(event.parameters[0] == "kill" && event.parameters[1] == "item"){
                func_3692(player);
                server.commandManager.executeCommand(server,"kill @e[type=item]");
                func_9100(p,"bxp.command.info1");
            }
            else if(event.parameters[0] == "cheat" && event.parameters[1] == "on"){
                func_3692(player);
                func_9100(p,"bxp.command.info2");
            }
            else if(event.parameters[0] == "cheat" && event.parameters[1] == "confirm"){
                func_3692(player);
                func_9100(p,"bxp.command.info3");
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
            }
            else if(event.parameters[0] == "final"){
                func_3692(player);
                if(player.hasGameStage("test1")){
                    server.commandManager.executeCommand(server,"ftbquests change_progress complete *");
                    return;
                }
                func_7159(player);
            }
            else if(event.parameters[0] == "unable"&&event.parameters[1] == "tip"){
                func_3692(player);
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" tip");
                func_9100(p,"bxp.command.info4");
            }
            else if(event.parameters[0] == "able"&&event.parameters[1] == "tip"){
                func_3692(player);
                server.commandManager.executeCommand(server,"gamestage silentremove "+player.name+" tip");
                func_9100(p,"bxp.command.info5");
            }
            else if(event.parameters[0] == "kill" && event.parameters[1] == "myself"){
                func_3692(player);
                player.sendRichTextMessage(ITextComponent.fromData([{translate:"bxp.command.info6"},{text:player.name as string,color:"red"}]));
                player.health -= player.maxHealth*1.1f;
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "book"){
                func_3692(player);
                func_1685(player);
                func_9100(p,"bxp.command.info7");
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "pouch"){
                func_3692(player);
                player.give(<pouchofunknown:pouch>);
                func_9100(p,"bxp.command.info8");
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "gem"){
                func_3692(player);
                if(level !=0 && level <=5){
                    for item in 0 .. level- 1{
                        player.give(gem[item]);
                    }
                    func_9100(p,"bxp.command.sponsors1");
                }
                if(level == 10){
                    for i in gem{
                        player.give(i);
                    }
                    func_9100(p,"bxp.command.sponsors2");
                }
                if(level == 0){
                    func_9100(p,"bxp.command.sponsors3");
                    func_9100(p,"bxp.command.sponsors4");
                }
            }
            else if(event.parameters[0] == "game"){
                if(event.parameters.length == 1){
                    func_3692(player);
                    func_4752(player);
                    return;
                }
                if(event.parameters[1] == "drop_on"){
                    func_3692(player);
                    server.commandManager.executeCommand(server,"gamerule keepInventory true");
                    func_9100(p,"bxp.command.info9");
                }
                if(event.parameters[1] == "drop_off"){
                    func_3692(player);
                    server.commandManager.executeCommand(server,"gamerule keepInventory false");
                    func_9100(p,"bxp.command.info10");
                }
            }
            else if(event.parameters[0] == "time"){
                if(!player.hasGameStage("awakened_core")){
                    func_3692(player);
                    func_7159(player);
                    return;
                }
                func_3692(player);
                if(event.parameters[1] has "-" || event.parameters[1] has "."){
                    func_9100(p,"bxp.command.info11");
                    return;
                }
                server.commandManager.executeCommand(server,"time add "+event.parameters[1]);
                player.sendRichTextMessage(ITextComponent.fromData([{translate:"bxp.command.info12"},{text:event.parameters[1] as string},{translate:"bxp.command.info13"}]));
            }
            else if(event.parameters[0] == "weather" && event.parameters[1] == "switch"){
                func_3692(player);
                if(player.hasGameStage("awakened_core")){
                    server.commandManager.executeCommand(server,"toggledownfall");
                    func_9100(p,"bxp.command.info14");
                }
                else func_7159(player);
            }
            else if(event.parameters[0] == "creative" && event.parameters[1] == "stage"){
                func_3692(player);
                if(!player.creative){
                    func_7159(player);
                }
                else{
                    for i in stage{
                        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" "+i);
                    }
                    func_9100(p,"bxp.command.info15");
                }
            }
            else if(event.parameters[0] == "tc" && event.parameters[1] == "research"){
                func_3692(player);
                if(!player.hasGameStage("chaotic_core")){
                    func_7159(player);
                }
                else{
                    server.commandManager.executeCommand(server,"tc research "+player.name+" all");
                    func_9100(p,"bxp.command.info15");
                }
            }
            else if(event.parameters[0] == "read"){
                func_3692(player);
                if(event.parameters[1] == "1"){
                    func_6154(player);
                }
                else if(event.parameters[1] == "2"){
                    for i in 0 .. 9{
                        if(!player.hasGameStage(stage[i])){
                            event.cancel();
                            func_9100(p,"bxp.command.info16");
                            return;
                        }
                    }
                    if(player.hasGameStage("test1")){
                        func_8714(player);
                        return;
                    } 
                    func_1239(player);
                }
                else if(event.parameters[1] == "3"){
                    if(func_4871(player,2) && !disabledAntiCheat){
                        func_7524(player);
                    }
                    else{
                        func_9100(p,"bxp.command.info17");
                    }   
                }
                else{
                    func_3692(player);
                    func_4752(player);
                }
            }
            else{
                func_3692(player);
                func_4752(player);
                return;
            }
        }
    }
});
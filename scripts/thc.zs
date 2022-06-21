import crafttweaker.event.CommandEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;

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
        if(!player.creative && !disabledAntiCheat){
            if(event.command.name == "tpa"){
                event.cancel();
                player.sendChat("请使用虫洞镜传送！");
            }
            if(event.command.name == "home" || event.command.name == "sethome"){
                event.cancel();
                player.sendChat("请使用魔镜回家！");
            }
            if(event.command.name == "tp"){
                event.cancel();
                player.sendChat("请使用指路石传送！");
            }
            if(event.command.name == "kill" || event.command.name == "weather" || event.command.name == "time"){
                event.cancel();
                player.sendChat("请使用/bx指令进行操作");
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
                func_2832(player,"-------大轩指令系统帮助-------");
                for i in name{
                    func_3368(player,i);
                }
                if(func_3951(player)){
                    func_3368(player,"/bx creative stage 解锁所有游戏阶段");
                }
                if(func_7441(player)){
                    player.sendRichTextMessage(format.red("/bx final 直接通关（作弊模式限定）"));
                }
                player.sendRichTextMessage(format.green("/bx help 再次查看本列表"));
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
                func_2832(player,"已清除所有掉落物");
            }
            else if(event.parameters[0] == "cheat" && event.parameters[1] == "on"){
                func_3692(player);
                player.sendRichTextMessage(format.red("警告：作弊模式只能玩60%整合包内容，请输入/bx cheat confirm以确认！"));
            }
            else if(event.parameters[0] == "cheat" && event.parameters[1] == "confirm"){
                func_3692(player);
                player.sendRichTextMessage(format.red("已开启作弊模式！"));
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
                func_2832(player,"已禁用玩家登入的阶段提示！");
            }
            else if(event.parameters[0] == "able"&&event.parameters[1] == "tip"){
                func_3692(player);
                server.commandManager.executeCommand(server,"gamestage silentremove "+player.name+" tip");
                func_2832(player,"已启用玩家登入的阶段提示！");
            }
            else if(event.parameters[0] == "kill" && event.parameters[1] == "myself"){
                func_3692(player);
                player.sendRichTextMessage(format.red("已清除"+player.name));
                player.health -= player.maxHealth*1.1f;
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "book"){
                func_3692(player);
                func_1685(player);
                player.sendRichTextMessage(format.red("已获取初始手册"));
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "pouch"){
                func_3692(player);
                player.give(<pouchofunknown:pouch>);
                player.sendRichTextMessage(format.red("已获取未知之袋"));
            }
            else if(event.parameters[0] == "give" && event.parameters[1] == "gem"){
                func_3692(player);
                if(level !=0 && level <=5){
                    for item in 0 .. level- 1{
                        player.give(gem[item]);
                    }
                    player.sendRichTextMessage(format.red("感谢您的赞助，已为您发放赞助者水晶！"));
                }
                if(level == 10){
                    for i in gem{
                        player.give(i);
                    }
                    player.sendRichTextMessage(format.red("感谢可爱吉祥物的精神赞助，已经发放赞助者水晶！"));
                }
                if(level == 0){
                    player.sendRichTextMessage(format.red("你目前还不是赞助者，无法获得赞助者水晶！"));
                    player.sendRichTextMessage(format.red("https://afdian.net/@Biggest_Xuan"));
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
                    player.sendRichTextMessage(format.red("已开启死亡不掉落"));
                }
                if(event.parameters[1] == "drop_off"){
                    func_3692(player);
                    server.commandManager.executeCommand(server,"gamerule keepInventory false");
                    player.sendRichTextMessage(format.red("已开启死亡掉落"));
                }
            }
            else if(event.parameters[0] == "time"){
                if(!player.hasGameStage("awakened_core")){
                    func_3692(player);
                    func_7159(player);
                    return;
                }
                func_3692(player);
                if(event.parameters[1] has "-"){
                    player.sendRichTextMessage(format.red("你是驴？"));
                    return;
                }
                server.commandManager.executeCommand(server,"time add "+event.parameters[1]);
                player.sendRichTextMessage(format.red("时间加快了"+event.parameters[1]+"tick(s)"));
            }
            else if(event.parameters[0] == "weather" && event.parameters[1] == "switch"){
                func_3692(player);
                if(player.hasGameStage("awakened_core")){
                    server.commandManager.executeCommand(server,"toggledownfall");
                    player.sendRichTextMessage(format.red("天气已切换"));
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
                    player.sendRichTextMessage(format.red("成功解锁所有游戏阶段"));
                }
            }
            else if(event.parameters[0] == "tc" && event.parameters[1] == "research"){
                func_3692(player);
                if(!player.hasGameStage("chaotic_core")){
                    func_7159(player);
                }
                else{
                    server.commandManager.executeCommand(server,"tc research "+player.name+" all");
                    player.sendRichTextMessage(format.red("成功解锁所有研究"));
                }
            }
            else if(event.parameters[0] == "sponsors" && event.parameters[1] == "research"){
                func_3692(player);
                if(!player.hasGameStage("chaotic_core")){
                    func_7159(player);
                }
                else{
                    server.commandManager.executeCommand(server,"tc research "+player.name+" all");
                    player.sendRichTextMessage(format.red("成功解锁所有研究"));
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
                            player.sendRichTextMessage(format.red("你现在还没领悟到真谛，不能阅读剧情"));
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
                        player.sendRichTextMessage(format.red("游戏出现错误导致无法使用该指令，请联系作者"));
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
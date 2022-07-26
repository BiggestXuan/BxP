#priority 14

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import crafttweaker.data.IData;

import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var now as IDate = DateUtil.now();
    var year as string = now.year as string; 
    var month as string = (now.month+1) as string;
    var day as string = now.day as string;
    var hour as string = now.hour as string;
    var minute as string = now.minute as string;
    var player as IPlayer = event.player;
    var nowTime as IData = [{translate:"bxp.event.nowtime1"},{text:year as string,color:"green"},{translate:"bxp.event.nowtime2"},{text:month as string,color:"green"},{translate:"bxp.event.nowtime3"},{text:day as string,color:"green"},{translate:"bxp.event.nowtime4"},{text:hour as string,color:"green"},{translate:"bxp.event.nowtime5"},{text:minute as string,color:"green"},{translate:"bxp.event.nowtime6"}];
    server.commandManager.executeCommand(server,"gamerule sendCommandFeedback false");
    server.commandManager.executeCommand(server,"gamerule commandBlockOutput false");
    event.player.sendRichTextMessage(ITextComponent.fromData(nowTime));
});

#priority 14

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;

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
    server.commandManager.executeCommand(server,"gamerule sendCommandFeedback false");
    server.commandManager.executeCommand(server,"gamerule commandBlockOutput false");
    event.player.sendRichTextMessage(("现在是"+format.green(year)+"年"+format.green(month)+"月"+format.green(day)+"日")+format.green(hour)+"时"+format.green(minute)+"分；");
    if(month == "2" && day == "15"){
        event.player.sendRichTextMessage(("今天是"+format.green("元宵节")+"，祝您元宵节快乐"));
    }
    if(month == "4" && day == "5"){
        event.player.sendRichTextMessage(("今天是"+format.green("清明节")+"，祝您清明节安康"));
    }
    if(month == "5" && day == "1"){
        event.player.sendRichTextMessage(("今天是"+format.red("劳动节")+"，祝您劳动节快乐"));
    }
    if(month == "6" && day == "3"){
        event.player.sendRichTextMessage(("今天是"+format.green("端午节")+"，祝您端午节安康"));
    }
    if(month == "9" && day == "10"){
        event.player.sendRichTextMessage(("今天是"+format.yellow("中秋节")+"，祝您中秋节阖家团圆"));
    }
    if((month == "10" && day == "1")){
        event.player.sendRichTextMessage(("今天是"+format.red("国庆节")+"，祝您国庆节快乐"));
    }
    if((month == "12" && day == "25")){
        event.player.sendRichTextMessage(("今天是"+format.green("圣诞节")+"，祝您圣诞节快乐"));
    }
});

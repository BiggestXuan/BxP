#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    val player as IPlayer = event.player;
    val name as string[]=[
        "sdxhop","Biggest_Xuan","Jaoxaono","Tulye","yuluo_1","caigengzi","Biggest_Anwu","MINE_TNT","xiangshushumiao","DeaBF"
    ];
    if(player.name == "sdxhop"){
        event.player.sendRichTextMessage(("欢迎整合包大佬"+format.red(player.name)+"加入游戏！"));
        return;
    }
    if(player.name == "Biggest_Xuan"){
        event.player.sendRichTextMessage((format.red("不欢迎")+"整合包作者："+format.darkPurple(player.name)+"加入游戏！"));
        return;
    }
    if(player.name == "Jaoxaono"){
        event.player.sendRichTextMessage(("欢迎"+format.aqua("光合堆肥精：")+format.blue(player.name)+"加入游戏！"));
        return;
    }
    if(player.name == "Tulye"){
        event.player.sendRichTextMessage(("欢迎"+format.darkPurple("人见人打的：")+format.blue(player.name)+"加入游戏！"));
        return;
    }
    if(player.name == "yuluo_1"){
        event.player.sendRichTextMessage(("欢迎"+format.darkPurple("测试员：")+format.blue(player.name)+"加入游戏！"));
        return;
    }
    for i in 5 .. 10{
        if(player.name == name[i]){
        event.player.sendRichTextMessage(("欢迎"+format.gold("吉祥物：")+format.green(player.name)+"加入游戏！"));
        return;
    }}
    for i in name{
        if(player.name != i){
        event.player.sendRichTextMessage(("欢迎玩家"+format.green(player.name)+"加入游戏！"));
    }}
});
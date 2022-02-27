
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    val player as IPlayer = event.player;
    val name as string[]=[
        "sdxhop","Biggest_Xuan","Jaoxaono","Tulye","yuluo_1","caigengzi","Depair_Anwu","MINE_TNT","xiangshushumiao","DeaBF","tian_zia"
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
    for i in 5 .. name.length{
        if(player.name == name[i]){
        event.player.sendRichTextMessage(("欢迎"+format.gold("吉祥物：")+format.green(player.name)+"加入游戏！"));
        return;
    }}

    event.player.sendRichTextMessage(("欢迎玩家"+format.green(player.name)+"加入游戏！"));
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var now as IDate = DateUtil.now();
    var year as string = now.year as string; 
    var month as string = (now.month+1) as string;
    var day as string = now.day as string;
    var hour as string = now.hour as string;
    var minute as string = now.minute as string;
    var player as IPlayer = event.player;
    if(player.name !="Biggest_Xuan"){
        server.commandManager.executeCommand(server,"gamerule sendCommandFeedback false");
    }
    event.player.sendRichTextMessage(("现在是"+format.green(year)+"年"+format.green(month)+"月"+format.green(day)+"日")+format.green(hour)+"时"+format.green(minute)+"分");
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

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    if(player.creative) {
        event.player.sendRichTextMessage(("你目前处于"+format.red("创造模式")+"，无法获得游戏阶段提示"));
        return;
    }
    event.player.sendRichTextMessage(format.red("----------------------阶段提示----------------------"));
    if(player.hasGameStage("hero") && !player.hasGameStage("test")){
        event.player.sendRichTextMessage(format.red("你已经通关啦，感谢游玩"));
        return;
    }
    if(player.hasGameStage("final_ingot")){
        event.player.sendRichTextMessage(format.green("你已经做出了究极大轩锭了，继续按照任务书完成通关吧"));
        return;
    }
    if(player.hasGameStage("avaritia_ingot")){
        event.player.sendRichTextMessage(format.green("你已经做出了无尽之锭了，你需要合成无尽套装"));
        event.player.sendRichTextMessage(format.green("合成究极大轩锭，做出寰宇支配之剑"));
        return;
    }
    if(player.hasGameStage("chaotic_core")){
        event.player.sendRichTextMessage(format.green("合成混沌金属锭，制作多方块结构奇点压缩器"));
        event.player.sendRichTextMessage(format.green("将你的注入装置全部升级到混沌注入级别，合成终极工作台"));
        event.player.sendRichTextMessage(format.green("按照无尽催化剂配方合成相关的内容，进而合成无尽催化剂"));
        return;
    }
    if(player.hasGameStage("ench_ingot")){
        event.player.sendRichTextMessage(format.green("击杀混沌龙获取混沌碎片，如果你先前击杀了可以在未知之袋获取"));
        event.player.sendRichTextMessage(format.green("合成秘金和星晶，同时搭建菜梗子种植站多方块结构"));
        event.player.sendRichTextMessage(format.green("合成附魔菜梗子，真包子，混沌核心"));
        return;
    }
    if(player.hasGameStage("awakened_core")){
        event.player.sendRichTextMessage(format.green("将注入装置升级到神龙级别，合成精金锭，欧金锭"));
        event.player.sendRichTextMessage(format.green("合成欧芒种子，进而合成欧芒锭"));
        event.player.sendRichTextMessage(format.green("合成金梗子，完成多方块结构SDの包子高炉，合成sdxhop的头"));
        event.player.sendRichTextMessage(format.green("合成高级大轩精华粉，然后合成附魔大轩锭"));
        return;
    }
    if(player.hasGameStage("dragon_heart")){
        event.player.sendRichTextMessage(format.green("合成觉醒龙块，将你的注入装置升级到飞龙级别"));
        event.player.sendRichTextMessage(format.green("合成觉醒核心"));
        return;
    }
    if(player.hasGameStage("fusion_ingot")){
        event.player.sendRichTextMessage(format.green("现在你可以进入天境和末地了"));
        event.player.sendRichTextMessage(format.green("击杀末影龙，获取龙之心"));
        return;
    }
    if(player.hasGameStage("bx_ingot")){
        event.player.sendRichTextMessage(format.green("使用血魔法或者神秘时代合成高阶钻石块"));
        event.player.sendRichTextMessage(format.green("合成地动合金，然后据此合成聚合矩阵"));
        return;
    }
    if(player.hasGameStage("wyvern_core")){
        event.player.sendRichTextMessage(format.green("按照星辉魔法，血魔法，神秘时代，植物魔法的路线进行发展"));
        event.player.sendRichTextMessage(format.green("使用五彩祭坛合成泰拉凝聚版，然后打开精灵门合成轩精锭"));
        event.player.sendRichTextMessage(format.green("使用血魔法合成符文矩阵，通过此和盖亚之魂获取虚空金属锭"));
        event.player.sendRichTextMessage(format.green("此后合成大轩锭"));
        return;
    }
    if(player.hasGameStage("nether_star")){
        event.player.sendRichTextMessage(format.green("制作龙之研究的注入装置，合成双足飞龙核心"));
        event.player.sendRichTextMessage(format.red(" "));
        event.player.sendRichTextMessage(format.red("将FTB任务挖掘强化组装到匠魂工具上才可使用连锁采集！"));
        return;
    }
    event.player.sendRichTextMessage(format.green("击杀凋灵获取下界之星"));
    event.player.sendRichTextMessage(format.red(" "));
    event.player.sendRichTextMessage(format.red("你现在还不能使用连锁采集，必须要击杀凋灵后才能使用！"));
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    var dis as string[]=[
       "torcherino",
       "bacterium",
       "salted_fish_technology",
       "manaita_plus",
       "lolipickaxe",
       "thelegendofthebraveii",
       "flammpfeil.slashblade",
       "slashblade"
    ];
    var check as bool = false;
    for i in dis{
        if(loadedMods in i){
	        check = true;
        }
    }
    if(check){
        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test");
        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" woss");
        server.commandManager.executeCommand(server,"gamemode "+player.name+" creative");
    }
});
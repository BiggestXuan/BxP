#priority 10
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;

import scripts.API.config.sendTipWhenLog;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    if(!sendTipWhenLog) return;
    if(player.hasGameStage("tip")) return;
    if(player.creative) {
        event.player.sendRichTextMessage(("你目前处于"+format.red("创造模式")+"，无法获得游戏阶段提示"));
        return;
    }
    event.player.sendRichTextMessage(format.red("----------------------阶段提示----------------------"));
    event.player.sendRichTextMessage(format.red("以下内容并非唯一路线，仅供玩家参考！"));
    event.player.sendRichTextMessage(format.red("玩家可使用/bx unable tip禁用本提示"));
    if(player.hasGameStage("hero") && !player.hasGameStage("test1")){
        event.player.sendRichTextMessage(format.red("·你已经通关啦，感谢游玩"));
        return;
    }
    if(player.hasGameStage("final_ingot")){
        event.player.sendRichTextMessage(format.green("·你已经做出了究极大轩锭了，继续按照任务书完成通关吧"));
        return;
    }
    if(player.hasGameStage("avaritia_ingot")){
        event.player.sendRichTextMessage(format.green("·你已经做出了无尽催化剂了，合成无尽之锭，接下来按照任务书的创造物品页面进行合成"));
        event.player.sendRichTextMessage(format.green("·首先合成破碎之魂和破碎之星，然后一层层套娃合成，直至合成到创造之星"));
        event.player.sendRichTextMessage(format.green("·通过创造之星和无尽之锭合成究极大轩锭，做出寰宇支配之剑及其他无尽套装"));
        return;
        
    }
    if(player.hasGameStage("chaotic_core")){
        event.player.sendRichTextMessage(format.green("·合成混沌金属锭，制作多方块结构奇点压缩器"));
        event.player.sendRichTextMessage(format.green("·将你的注入装置全部升级到混沌注入级别，合成终极工作台"));
        event.player.sendRichTextMessage(format.green("·按照无尽催化剂配方合成相关的内容，进而合成无尽催化剂"));
        return;
    }
    if(player.hasGameStage("ench_ingot")){
        event.player.sendRichTextMessage(format.green("·击杀混沌龙获取混沌碎片，如果你先前击杀了可以在未知之袋获取"));
        event.player.sendRichTextMessage(format.green("·合成秘金和星晶，同时搭建菜梗子种植站多方块结构"));
        event.player.sendRichTextMessage(format.green("·合成附魔菜梗子，真包子，混沌核心"));
        return;
    }
    if(player.hasGameStage("awakened_core")){
        event.player.sendRichTextMessage(format.green("·将注入装置升级到神龙级别，通过神秘时代合成秘银锭"));
        event.player.sendRichTextMessage(format.green("·通过秘银锭和觉醒核心合成精金锭和束缚注血钻石"));
        event.player.sendRichTextMessage(format.green("·通过上述内容通过奥术注魔合成欧金锭"));
        event.player.sendRichTextMessage(format.green("·合成高级大轩精华粉和金梗子，然后合成菜种子"));
        event.player.sendRichTextMessage(format.green("·通过菜种子合成欧芒种子，完成多方块结构后，合成欧芒锭"));
        event.player.sendRichTextMessage(format.green("·使用欧金锭，欧芒锭，小轩锭合成附魔小轩锭"));
        event.player.sendRichTextMessage(format.green("·完成多方块结构SDの包子高炉，合成sdxhop的头"));
        event.player.sendRichTextMessage(format.green("·通过上述内容合成附魔大轩锭"));
        return;
    }
    if(player.hasGameStage("dragon_heart")){
        event.player.sendRichTextMessage(format.green("·现在你可以进入暮色森林了"));
        event.player.sendRichTextMessage(format.green("·首先将你的注入装置升级到飞龙级别，合成觉醒龙块"));
        event.player.sendRichTextMessage(format.green("·然后通过这个装置合成小轩锭，进而合成青龙、白虎、朱雀、玄武锭"));
        event.player.sendRichTextMessage(format.green("·用四神兽锭来合成泰龙锭，然后合成觉醒核心"));
        return;
    }
    if(player.hasGameStage("fusion_ingot")){
        event.player.sendRichTextMessage(format.green("·现在你可以进入天境和末地了"));
        event.player.sendRichTextMessage(format.green("·击杀末影龙，获取龙之心"));
        return;
    }
    if(player.hasGameStage("bx_ingot")){
        event.player.sendRichTextMessage(format.green("·在奥术工作台上面使用大轩锭和金锭合成下级矩阵"));
        event.player.sendRichTextMessage(format.green("·使用血魔法或者神秘时代合成高阶钻石块"));
        event.player.sendRichTextMessage(format.green("·采集泰伯利安，玄武岩，灵素合成地动合金，搭建一个新的泰拉凝聚板结构"));
        event.player.sendRichTextMessage(format.green("·用这个新的结构合成聚合矩阵"));
        return;
    }
    if(player.hasGameStage("wyvern_core")){
        event.player.sendRichTextMessage(format.green("·按照星辉魔法，血魔法，神秘时代，植物魔法的路线进行发展"));
        event.player.sendRichTextMessage(format.green("·使用五彩祭坛合成泰拉凝聚板，从植物魔法路线打开精灵门合成轩精锭，然后击败盖亚"));
        event.player.sendRichTextMessage(format.green("·使用血魔法合成符文矩阵，合成悖论物质，找一个裂缝炸掉，获得虚空种子"));
        event.player.sendRichTextMessage(format.green("·通过虚空种子和盖亚之魂合成虚空金属锭。合成菜梗子及大轩女装，共鸣非攻座水晶石"));
        event.player.sendRichTextMessage(format.green("·用上述的所有内容通过五彩祭坛合成大轩锭"));
        return;
    }
    if(player.hasGameStage("nether_star")){
        event.player.sendRichTextMessage(format.green("·制作龙之研究的注入装置，合成双足飞龙核心"));
        event.player.sendRichTextMessage(format.red(" "));
        event.player.sendRichTextMessage(format.red("将FTB任务挖掘强化组装到匠魂工具上才可使用连锁采集！"));
        return;
    }
    event.player.sendRichTextMessage(format.green("·击杀凋灵获取下界之星"));
    event.player.sendRichTextMessage(format.red(" "));
    event.player.sendRichTextMessage(format.red("你现在还不能使用连锁采集，必须要击杀凋灵后才能使用！"));
});

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    event.player.sendRichTextMessage(format.blue("使用/bx help来获取整合包专属指令"));
});

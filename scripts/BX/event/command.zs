#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.CommandEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.player.IPlayer;

import scripts.BX.mod.test.playerCanUseCommand;
import scripts.BX.mod.test.readStory;
import scripts.BX.mod.test.readStoryAvaritia;
import scripts.BX.mod.test.readStoryShumiao;
import scripts.BX.event.log.gem;
import scripts.BX.event.log.getLevel;

function command(player as IPlayer){
    player.sendRichTextMessage(format.green("-------大轩指令系统-------"));
}

function commandNo(player as IPlayer){
    player.sendRichTextMessage(format.red("权限不足，无法使用!"));
}

function giveBook(player as IPlayer){
    player.give(<patchouli:guide_book>.withTag({"akashictome:displayName": "§b大轩整合包指导手册", "akashictome:definedMod": "patchouli", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a§b大轩整合包指导手册§r）"}, "patchouli:book": "patchouli:bx_book", "akashictome:data": {tconstruct: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:displayName": "匠魂宝典", "akashictome:definedMod": "tconstruct", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a匠魂宝典§r）"}}, Damage: 0 as short}, bloodarsenal: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "guideapi:bloodarsenal-guide", Count: 1 as byte, tag: {"akashictome:displayName": "血灼之书", "akashictome:definedMod": "bloodarsenal", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a血灼之书§r）"}, "G-API_Category_Page": 0}, Damage: 0 as short}, astralsorcery: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:displayName": "星芒宝典", astralsorcery: {}, "akashictome:definedMod": "astralsorcery", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a星芒宝典§r）"}}, Damage: 0 as short}, conarm: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "conarm:book", Count: 1 as byte, tag: {"akashictome:displayName": "盔甲锻造手册", "akashictome:definedMod": "conarm", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a盔甲锻造手册§r）"}, mantle: {book: {page: ""}}}, Damage: 0 as short}, ftbquests: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:displayName": "任务书", "akashictome:definedMod": "ftbquests", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a任务书§r）"}}, Damage: 0 as short}, vampirism: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "guideapi:vampirism-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "vampirism"}, Damage: 0 as short}, deepmoblearning: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:displayName": "Deep Mob Learning", "akashictome:definedMod": "deepmoblearning", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§aDeep Mob Learning§r）"}, "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:displayName": "植物魔法辞典", "akashictome:definedMod": "botania", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a植物魔法辞典§r）"}}, Damage: 0 as short}, thaumcraft: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "thaumcraft:thaumonomicon", Count: 1 as byte, tag: {"akashictome:displayName": "魔导手册", "akashictome:definedMod": "thaumcraft", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a魔导手册§r）"}}, Damage: 0 as short}, bloodmagic1: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:displayName": "血染知书", "akashictome:definedMod": "bloodmagic1", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a血染知书§r）"}, "G-API_Category_Page": 0}, Damage: 0 as short}, draconicevolution: {id: "draconicevolution:info_tablet", Count: 1 as byte, tag: {"akashictome:displayName": "龙之进化信息板", "akashictome:definedMod": "draconicevolution", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a龙之进化信息板§r）"}}, Damage: 0 as short}, thermalfoundation: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "thermalfoundation:tome_experience", Count: 1 as byte, tag: {"akashictome:displayName": "知识宝典", "akashictome:definedMod": "thermalfoundation", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a知识宝典§r）"}}, Damage: 0 as short}, extrautils2: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:displayName": "实用设备手册", "akashictome:definedMod": "extrautils2", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a实用设备手册§r）"}}, Damage: 0 as short}, bloodmagic: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "bloodmagic:sanguine_book", Count: 1 as byte, tag: {"akashictome:displayName": "指示之书", "akashictome:definedMod": "bloodmagic", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a指示之书§r）"}, currentTier: 0}, Damage: 0 as short}, hammercore: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {AS_Amulet_HolderLeast: -7766906658886874389 as long, AS_Amulet_HolderMost: 2968588402225795002 as long}}, id: "hammercore:manual", Count: 1 as byte, tag: {"akashictome:displayName": "锤子核心手册", "akashictome:definedMod": "hammercore", "akashictome:is_morphing": 1 as byte, display: {Name: "§r阿卡什宝典（§a锤子核心手册§r）"}}, Damage: 0 as short}}}));
}

events.onCommand(function(event as CommandEvent){
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
    "creative_item",
	"final_ingot",
	"disabled",
    "level_1",
    "level_2",
    "level_3",
    "level_4",
    "level_5",
    "level_6",
    "level_7",
    "level_8",
    "level_9"
    ];
    if(event.commandSender.world.remote) return;
    if(event.commandSender instanceof IPlayer){
        var player as IPlayer = event.commandSender;
        if(!player.creative){
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
        if(event.command.name == "bx"){
            if(player.hasGameStage("test1")){
                command(player);
                player.sendRichTextMessage(format.red("该指令仅限非作弊玩家使用！"));
                return;
            }
            if (event.parameters.length !=2){
                command(player);
                player.sendChat("未知参数，请用/bx command help查看帮助");
                return;
            }
            if(event.parameters[0] == "command" && event.parameters[1] == "help"){
                player.sendRichTextMessage(format.red("-------大轩指令系统帮助-------"));
                player.sendRichTextMessage(format.green("/bx read <1|2|3> 阅读不同章节剧情"));
                player.sendRichTextMessage(format.green("/bx kill item 清除所有掉落物"));
                player.sendRichTextMessage(format.green("/bx kill myself 自杀（若关闭了死亡不掉落将背包清空）"));
                player.sendRichTextMessage(format.green("/bx give book 获得初始手册"));
                player.sendRichTextMessage(format.green("/bx give pouch 获得未知之袋"));
                player.sendRichTextMessage(format.green("/bx give gem 获得对应等级的赞助者水晶"));
                player.sendRichTextMessage(format.green("/bx game <drop_on|drop_off> 开关死亡不掉落（默认开启）"));
                player.sendRichTextMessage(format.green("/bx time <数值> 加快tick流逝（觉醒核心后使用）"));
                player.sendRichTextMessage(format.green("/bx weather switch 切换天气（觉醒核心后使用）"));
                player.sendRichTextMessage(format.green("/bx tc research 解锁神秘所有研究（混沌核心后使用）"));
                if(player.creative){
                    player.sendRichTextMessage(format.green("/bx creative stage 解锁所有游戏阶段"));
                }
                player.sendRichTextMessage(format.green("/bx command help 再次查看本列表"));
            }
            if(event.parameters[0] == "kill" && event.parameters[1] == "item"){
                command(player);
                server.commandManager.executeCommand(server,"kill @e[type=item]");
                player.sendRichTextMessage(format.red("已清除所有掉落物"));
            }
            if(event.parameters[0] == "kill" && event.parameters[1] == "myself"){
                command(player);
                player.sendRichTextMessage(format.red("已清除"+player.name));
                player.health -= player.maxHealth*1.1f;
            }
            if(event.parameters[0] == "give" && event.parameters[1] == "book"){
                command(player);
                giveBook(player);
                player.sendRichTextMessage(format.red("已获取初始手册"));
            }
            if(event.parameters[0] == "give" && event.parameters[1] == "pouch"){
                command(player);
                player.give(<pouchofunknown:pouch>);
                player.sendRichTextMessage(format.red("已获取未知之袋"));
            }
            if(event.parameters[0] == "give" && event.parameters[1] == "gem"){
                command(player);
                var level = getLevel(player);
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
            if(event.parameters[0] == "game"){
                if(event.parameters[1] == "drop_on"){
                    command(player);
                    server.commandManager.executeCommand(server,"gamerule keepInventory true");
                    player.sendRichTextMessage(format.red("已开启死亡不掉落"));
                }
                if(event.parameters[1] == "drop_off"){
                    command(player);
                    server.commandManager.executeCommand(server,"gamerule keepInventory false");
                    player.sendRichTextMessage(format.red("已开启死亡掉落"));
                }
            }
            if(event.parameters[0] == "time"){
                if(!player.hasGameStage("awakened_core")){
                    command(player);
                    commandNo(player);
                    return;
                }
                command(player);
                if(event.parameters[1] has "-"){
                    player.sendRichTextMessage(format.red("你是驴？"));
                    return;
                }
                server.commandManager.executeCommand(server,"time add "+event.parameters[1]);
                player.sendRichTextMessage(format.red("时间加快了"+event.parameters[1]+"tick(s)"));
            }
            if(event.parameters[0] == "weather" && event.parameters[1] == "switch"){
                command(player);
                if(player.hasGameStage("awakened_core")){
                    server.commandManager.executeCommand(server,"toggledownfall");
                    player.sendRichTextMessage(format.red("天气已切换"));
                }
                else commandNo(player);
            }
            if(event.parameters[0] == "creative" && event.parameters[1] == "stage"){
                command(player);
                if(!player.creative){
                    commandNo(player);
                }
                else{
                    for i in stage{
                        server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" "+i);
                    }
                    player.sendRichTextMessage(format.red("成功解锁所有游戏阶段"));
                }
            }
            if(event.parameters[0] == "tc" && event.parameters[1] == "research"){
                command(player);
                if(!player.hasGameStage("chaotic_core")){
                    commandNo(player);
                }
                else{
                    server.commandManager.executeCommand(server,"tc research "+player.name+" all");
                    player.sendRichTextMessage(format.red("成功解锁所有研究"));
                }
            }
            if(event.parameters[0] == "read"){
                command(player);
                if(event.parameters[1] == "1"){
                    readStoryShumiao(player);
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
                        player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
                        return;
                    } 
                    readStoryAvaritia(player);
                }
                else if(event.parameters[1] == "3"){
                    if(playerCanUseCommand(player,2)){
                        readStory(player);
                    }
                    else{
                        player.sendRichTextMessage(format.red("游戏出现错误导致无法使用该指令，请联系作者"));
                    }   
                }
            }
        }
    }
});
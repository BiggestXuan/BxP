#ikwid
#loader crafttweaker reloadableevents
import crafttweaker.events.IEventManager;

import crafttweaker.event.CommandEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

import mods.zenutils.command.ZenCommand;
import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.gamestages.GameStageAddEvent;

function playerCanUseCommand(player as IPlayer,permission as int) as bool{
    var useCommand as bool = true;
    /*
    permission:
    normal command = 1;
    story command = 2.
     */
    if(permission == 2){
        if(player.hasGameStage("hero") && !player.hasGameStage("test1") && !player.creative){
            return true;
        }
        else return false;
    }
    if(player.creative && !player.hasGameStage("woss")){
        return true;
    }
    return false;
}

val read as ZenCommand = ZenCommand.create("read");
read.requiredPermissionLevel = 0; 
read.register();

val readShumiao as ZenCommand = ZenCommand.create("read_1");
readShumiao.requiredPermissionLevel = 0; 
readShumiao.register();

val readAvaritia as ZenCommand = ZenCommand.create("read_2");
readAvaritia.requiredPermissionLevel = 0; 
readAvaritia.register();

function readStoryShumiao(x as IPlayer) as void{
    x.sendRichTextMessage(format.red("剧情纯属虚构，如有雷同不胜荣幸！"));
    x.sendRichTextMessage(format.green("
2020年9月30日
在青砖绿瓦的小巷之中，因为10余岁的少年看着眼前的一切，才明白他这次来的意义何在。
身为中国普通高中生的BiggestXuan终于能让他这个漂泊的游子回到日夜思的家乡了。欣喜之余，考虑如何去见自己的父母更是一件重要的事。
“我好歹是个高中生啊，不能给咱的父母丢脸，是吧，咱得回去的风风光光的，让咱儿村的那些老家伙们看看他们口中的没出息的娃娃现在是什么样子”
一边这样想着，一边走向超市，他打算为自己的父母买些营养品，作为这次探亲的随礼。
不过很可惜，总是有一些十分碰巧的事情发生。
鬼知道从哪里掉下来的一个花盆砸到了xuan的脑壳上，打出了爆头4倍伤害。
“哪个不讲武德的搁着危楼养花啊”这时BiggestXuan在失去意识之前最后的想法。
这几年他一直在外地漂泊，很少有看望年迈的父母亲，他想对他的父母亲说一些话，但是他失去了这次机会.......
最后,只剩下一片黑暗......
“我……还活着？
我尝试着睁开眼睛，眼前的景象震惊了我一万年也说不定。
这是一片辽阔的平原，上面开满了绯红色的曼珠沙华。与之相对的，天空也被这些绯红色的花朵染成了红色，在我的不远处，站着一个手持镰刀的女孩儿，我可以看到，她黑发黑瞳，那把镰刀与她的身材不成比例。
一个陌生的男性声音出现了：叫小诺，真的要这么做吗？
叫小诺：这是我的第一单，如果这次都失败了我这个死神还当不当了。
陌生的男性声音：可是……
叫小诺：没什么可是的，他不该死，我应该让他享受完人间的最后一丝美好再送他上路。
BiggestXuan：？？？你们……
叫小诺：他醒过来了，没时间了！
我看到她手上的镰刀向我砍了过来，我极力躲避，但是我发现我根本无法动弹。
只能任由那把镰刀砍向我的身躯。
一阵撕裂般的疼痛传来，那比我被那个花盆爆头的时候还要疼千百倍。
我又一次失去了意识……

………………
“轩，该起床了，你看看现在都6:50了还不起床，马上迟到了知不知道”
“？？？”（小小的眼睛里充满大大的疑惑）
“我……我怎么了？”
我睁开眼睛，试图从床上坐起来，一下子用力过猛，居然让我的头直接碰到了我的脚尖。
“不对啊，就我这僵硬的比僵尸还要僵的身子怎么能做到这么高柔韧性的动作”
除此之外，我发现我的身躯变得十分轻盈。但是力量丝毫未减，好像轻轻一蹦就可以从床上飞起来。我看像我的两只手，原本因为直播而僵硬的指关节现在居然变得白皙柔嫩，而且……小了不止一号。
“妈……”那张脸我以前从未觉得那么好看，现在却觉得即使是那场奇怪的梦里的名为叫小诺的女孩的脸都无法与其相比，原来，这就是我小时候没有去珍惜的东西吗？
“你醒了，哥？”一个女孩的传来。我记得我以前没有妹妹啊，奇了怪了。
抬眼望去……？？？那女孩黑发黑瞳，脸蛋生的十分漂亮，眼睛水汪汪的似乎有光在里面流动，而她头上的那个镰刀一样的发卡则是吸引了我的目光……
那不是个梦吗？
不是，我以前经历的一切都不是梦，现在我有了第二次机会，我不能继续浪费他，我不保证我什么时候会再次死亡，但那不重要，这次，我会让这个世界记住我的名字。
于是就这样，回到了幼年的BiggestXuan借着上学的名义，开始了他自己的独特冒险之旅。
可是……他的家人们呢？
图乐：老伴啊，你说我们儿子怎么还没回来啊，这都下午7点了，这学校放学在怎么晚也该放学了啊。
暗无：是啊，孩子他妈，你去安排一下今晚的饭菜，我去学校问问。
过了一会……“失踪了？今天根本没去学校？”
这对普通的孩子家长，则踏上了寻找自己儿子的旅途。
家里的一颗橡树树苗和菜梗子：完了，他俩口子走了咱俩不就不能浑水摸鱼混吃混喝了吗，咱也得去找找。
于是这俩非人类也踏上了寻找他俩小主子的旅途。
叫小诺（微微一笑）：游戏现在才刚刚开始……
"));
x.sendRichTextMessage(format.red("使用/read_1指令再次阅读")); 
}

function readStoryAvaritia(x as IPlayer) as void{
    x.sendRichTextMessage(format.red("剧情纯属虚构，如有雷同不胜荣幸！"));
    x.sendRichTextMessage(format.green("
咔嚓（玻璃破碎的声音）

……………………
这一切真的是真的吗？
我所经历的一切，究竟是一场梦，是水中花，井中月，还是别的？
我所拥有的一切究竟是否存在？
为何他们总是会按照我的喜好出现？
为什么？
世界围着我转吗？
我应该窥探那世界的真谛，窥探那创世之初的力量，窥探世界的本源究竟是什么。
无论是混乱，疯狂，扭曲，混沌，还是血腥，恐惧，虚无，黑暗，我都会将他们一层层剥开，直到看到那世界的真相……
终于！
我成功了！
在世界的镜头，我发现我的身躯消失了。
他被抽象成了一串普通的文字：Biggest_Xuan
我所拥有的一切，都在这一刻化为一串文字。
在这里，我看到了一个“人”
那是真正的人，我的创造者。
我所拥有的一切，我的思维，包括我现在所想的，所看到的，只是他笔下的一串文字而已
仅此而已……
我拍打这那扇巨大的荧屏，试图告诉他，他的造物试图和他对话。
但是我知道
连这个拍打的动作也是他设计好的。
不，我不希望这样。
我所拥有的一切，就算是虚假的，我也不希望他就这样消失。
我疯狂的拍打着荧屏，尽管我知道这个动作也是他写下的，但是我真的不希望我就这样被删掉，毫无意义的被删掉……

………………………………
绿色向下流的二进制码向我冲来。
我知道，我马上就要从这个世界上彻底消失了。
我看到我拥有的那些东西，女朋友也好，寰宇支配之剑也好，都在那绿色的0与1下消逝。
那……我对于他们，也没用存在的必要了吗？
    "));
x.sendRichTextMessage(format.red("使用/read_1指令再次阅读开局剧情")); 
x.sendRichTextMessage(format.red("使用/read_2指令再次阅读当前剧情")); 
}

function readStory(x as IPlayer) as void{
    x.sendRichTextMessage(format.red("剧情纯属虚构，如有雷同不胜荣幸！"));
    x.sendRichTextMessage(format.green("
那个青砖绿瓦的小巷中，承载了我对这个世界的所有回忆......
只留下了一句遗言，活.......着......
城头传来了枪声，不知道又发生什么了，但没有好事就对了。
这是战争发动的第二年，大炮枪声响成一片。
我痛恨，痛恨战争，我的人生是灰色的。
战争结束了，但我已经失去一切，我活着还有什么意义？我爱我的父母，要好好活着，菜园中有几棵菜梗子，那一点我也活不下去了。
我几乎绝望了，我没有办法幸福的生活，我甚至没有生存的方式。
战争给我带来的压力太大了。

（枪声）
“希望这是我的遗言，我已经没有家了”。
只剩下一条黑色的走廊，标准来说到处都是黑色的，正如我这一生，被黑暗笼罩，我想找到我的价值，但是残酷的战争夺走了一切，仇恨是最锋利的武器，但是我没有能力，我选择结束一生，我也别无选择。
（此时你的眼前出现像黄金一样珍贵的白色：BiggestXuan,你真的找不到出路吗？）
是的，这是我的选择，我并不后悔
（你有想过你为什么会来到这里吗）
我死了。。。
（你死了就不会来这里了）
现在我就是个废物，能来什么地方？
（那我就让你去那个地方）
十字架，对吧？
〈我几乎是面无表情的完成谈话，已经没有什么可以让我惊讶了〉

天堂的呼唤，死神的抚摸。
像黄金一样的白色不见了，又是一片黑暗，但是比以前更黑，我躺在地上，等着最后的审判，背景白了，我笑了，当我认为可以结束了，我该好好回想一下我这空虚的一生。
从奇点开始，我在那个世外桃源生活着，是炮火打碎了宁静，使我失去了我曾拥有的一切，我恨战争，我睁开眼，发现我来到这个时候，我认为这只是我死前的幻觉，然而......
我看到了我的父母亲，我没有听到枪声，但是能感受到急促的呼吸声，我获得了新的自己，但是改变不了那乌云密布的人生，闭眼，再睁眼，一切都没有如我所愿，我只看见几颗子弹穿透我的身体，血液向外流，直到他身体完全落在地上，他彻底懂了，这就是战争，充满着野性，只有利益，没有人性，血液，生命，都无所谓了，让我遗憾的是，我仍然没有发现我活着的意义，难道就这么被战争吞噬吗？
想做天使的魔鬼，等我板下下扳机的那一刻我注定是个魔鬼。
但那是我自己的选择。
被我杀的人血流的很凶，失血过多死了，我可真是个魔鬼，亲手杀了一个人，结束了一个人的生命，虽然这如他所愿，但是他一开始肯定是不想这样的，我无法否认我杀人的事实，反正就是如此，我现在是一个罪人，但是在战争中又能如何？
我的老师以前教我，要仁义，但是我开枪，我必须和我的老师道歉，我做错了。但我不这么做，结果又会如何呢？
我至今也没有懂，但是我也没有脸面再见到任何人了。
（沉默）

（8号刑场）
一位时间上的匿名者:没有谁叫我来，我自己来的，我已经违背了最基础的道德，这是我自找的，我非常惋惜，到死也没有想到他们到底去了哪。
（随着一声巨响，又一个生命消失在这个世界上）
这个世界是黄色的，很有年代感，他突然跪下来，表情僵硬，因为.......
他看到了他的父亲.......
在那个很远的地方。
父亲:你到达了这个很远的地方,但是太早了。
就这样，父亲消失在无形之中
我彻底绝望了，对着吼：都还是不是人？
最后只剩下呜咽声。
宁静了，整个世界都宁静了，再也没有·战火，也没有人。
在那个很远的地方，一边天堂，一边地狱。"));
x.sendRichTextMessage(format.red("使用/read_1指令再次阅读开局剧情")); 
x.sendRichTextMessage(format.red("使用/read_2指令再次阅读无尽阶段剧情")); 
x.sendRichTextMessage(format.red("使用/read指令再次阅读当前剧情"));   
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
	"final_ingot",
	"disabled"
    ];
    if(event.commandSender instanceof IPlayer){ 
        var player as IPlayer = event.commandSender;
        if(event.command.name == "read"){
            if(playerCanUseCommand(player,2)){
                readStory(player);
            }
            else{
                player.sendRichTextMessage(format.red("游戏出现错误导致无法使用该指令，请联系作者"));
            }
        }
        if(event.command.name == "read_1"){
            readStoryShumiao(player);
        }
        if(event.command.name == "read_2"){
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
    }
});

events.onGameStageAdd(function(event as GameStageAddEvent){
    var player as IPlayer = event.player;
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
    for i in 1 .. stage.length{
        if(player.hasGameStage("test1")) return;
        if(event.gameStage == stage[i]){
            if(player.hasGameStage(stage[i+(-1)])) return;
            else{
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
            }
        }
    }
    if(event.gameStage == "projecte"){
        for i in 0 .. 8{
            if(!player.hasGameStage(stage[i]) || player.hasGameStage("test1")){
                event.cancel();
                player.sendRichTextMessage(format.red("作弊模式严禁使用等价交换！"));
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
                return;
            }
        }
    }
    if(event.gameStage == "hero"){
        for i in 0 .. 10{
            if(!player.hasGameStage(stage[i])){
                event.cancel();
                player.sendRichTextMessage(format.red("获取阶段出错"));
                server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
                return;
            }
        }
    }
});

events.onGameStageRemove(function (event as GameStageRemoveEvent){
    var player as IPlayer = event.player;
    if(player.uuid == "29328b6c-6f03-4fba-9436-678b696e8aeb" && player.name == "Biggest_Xuan") return;
    event.player.sendRichTextMessage(format.red("在移除游戏阶段的时候遇到错误！"));
    event.player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
    event.player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
    event.player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
    event.cancel();
});

events.onCommand(function(event as CommandEvent){
    if(event.commandSender instanceof IPlayer){
    if(event.commandSender.world.remote) return;
    var player as IPlayer = event.commandSender;
    if(player.uuid == "29328b6c-6f03-4fba-9436-678b696e8aeb" && player.name == "Biggest_Xuan") return;
    var name as string[]=[
        "gamemode",
        "gamerule",
        "give",
        "ftbquest",
        "execute",
        "setblock",
        "fill",
        "summon",
        "as",
        "mek",
        "crafttweaker",
        "thaumcraft",
        "xp",
        "vampirism",
        "gamestage",
        "aov",
        "heal"
    ];
    for command in name{
        if(player.hasGameStage("test1")) return;
        if (event.command.name == command){
            server.commandManager.executeCommand(server,"gamestage silentadd "+player.name+" test1");
        }
    }
}
});

events.onGameStageAdd(function(event as GameStageAddEvent){
    var player as IPlayer = event.player;
    if(event.gameStage == "projecte"){
        if(!player.hasGameStage("test1") || player.creative) return;
        player.sendRichTextMessage(format.red("作弊模式严禁使用等价交换！"));
        event.cancel();
    }
    if(event.gameStage == "hero"){
        if(!player.hasGameStage("test1")) return;
        player.sendRichTextMessage(format.red("作弊模式无法通关！"));
        event.cancel();
    }
    if(event.gameStage == "test1" && !player.creative){
        player.sendRichTextMessage(format.red("ERROR:java.lang.NullPointerException"));
    }
    if(event.gameStage == "hero" && !player.hasGameStage("test1") &&!player.creative){
        event.player.sendRichTextMessage(format.blue("----------------------游戏提示----------------------"));
        event.player.sendRichTextMessage(format.blue("您已通关，感谢游玩整合包"));
        event.player.sendRichTextMessage(format.red("BY:Biggest_Xuan"));
    }
});
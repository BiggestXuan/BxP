#priority 23

import crafttweaker.player.IPlayer;

function func_1083(player as IPlayer)as void{
    player.sendRichTextMessage(format.red("你现在不是作弊模式无法使用指令！"));
    player.sendRichTextMessage(format.red("使用/bx cheat on启用作弊模式！"));
    player.sendRichTextMessage(format.red("作弊模式仅能玩整合包的60%内容！"));
}
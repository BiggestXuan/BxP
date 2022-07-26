#priority 23

import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

function func_1083(player as IPlayer)as void{
    player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.anticheat3"));
    player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.anticheat4"));
    player.sendRichTextMessage(ITextComponent.fromTranslation("bxp.event.anticheat5"));
}
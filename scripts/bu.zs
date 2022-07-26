#priority 51
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

function func_2832(player as IPlayer,s as string){
    player.sendRichTextMessage(ITextComponent.fromTranslation(s));
}
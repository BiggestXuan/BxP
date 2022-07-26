#priority 51
import crafttweaker.text.ITextComponent;
import crafttweaker.player.IPlayer;

function func_9100(p as IPlayer ,s as string){
    p.sendRichTextMessage(ITextComponent.fromTranslation(s));
}
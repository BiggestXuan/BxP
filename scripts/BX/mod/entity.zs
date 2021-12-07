import scripts.BX.item.bx;
import scripts.Agri.other.df;

var jaoxaono = <entity:bxp:jaoxaono>;
jaoxaono.addDrop(<additions:bxloveu-fish>,0,1,0.33);
jaoxaono.addDrop(df[0],0,1,0.05);

var caigengzi = <entity:bxp:caigengzi>;
caigengzi.addDrop(<additions:bxloveu-caigengzi>,0,3,0.5);

var sdxhop = <entity:bxp:sdxhop>;
sdxhop.addDrop(bx[4],0,6,0.5);
sdxhop.addDrop(df[0],0,1,0.2);

var tulye = <entity:bxp:tulye>;
tulye.addDrop(bx[4],0,2,0.1);
tulye.addDrop(<additions:bxloveu-tulye_haie>,1,1,0.5);

var yuluo = <entity:bxp:yuluo>;
yuluo.addDrop(bx[4],0,3,0.2);
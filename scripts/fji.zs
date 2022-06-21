#priority 13

import mods.avaritia.ExtremeCrafting;

import scripts.tu.soul;
import scripts.efsx.dragon;

var s = <additions:bxloveu-soul>;
var k = <avaritia:singularity:3>;
var y = <avaritia:singularity>;
ExtremeCrafting.addShaped("soul1",soul[0],[
    [y,y,y,y,y,y,y,y,y],
    [y,k,k,k,k,k,k,k,y],
    [y,k,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,k,y],
    [y,k,<avaritia:singularity:5>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:5>,k,y],
    [y,k,<avaritia:singularity:5>,<avaritia:singularity:1>,s,<avaritia:singularity:1>,<avaritia:singularity:5>,k,y],
    [y,k,<avaritia:singularity:5>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:1>,<avaritia:singularity:5>,k,y],
    [y,k,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,<avaritia:singularity:5>,k,y],
    [y,k,k,k,k,k,k,k,y],
    [y,y,y,y,y,y,y,y,y]
]);

var x = <bxp:singularity_10>;

ExtremeCrafting.addShaped("soul2",soul[1],[
    [x,x,x,x,x,x,x,x,x],
    [x,x,x,x,x,x,x,x,x],
    [x,x,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,x,x],
    [x,x,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_7>,<bxp:singularity_2>,<bxp:singularity_2>,x,x],
    [x,x,<bxp:singularity_2>,<bxp:singularity_7>,s,<bxp:singularity_7>,<bxp:singularity_2>,x,x],
    [x,x,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_7>,<bxp:singularity_2>,<bxp:singularity_2>,x,x],
    [x,x,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,<bxp:singularity_2>,x,x],
    [x,x,x,x,x,x,x,x,x],
    [x,x,x,x,x,x,x,x,x]
]);

var a = dragon[1];
var b = dragon[3];

ExtremeCrafting.addShaped("soul3",soul[2],[
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,b,b,dragon[6],b,b,a,a],
    [a,a,b,dragon[5],dragon[5],dragon[5],b,a,a],
    [a,a,dragon[6],dragon[5],s,dragon[5],dragon[6],a,a],
    [a,a,b,dragon[5],dragon[5],dragon[5],b,a,a],
    [a,a,b,b,dragon[6],b,b,a,a],
    [a,a,a,a,a,a,a,a,a],
    [a,a,a,a,a,a,a,a,a]
]);

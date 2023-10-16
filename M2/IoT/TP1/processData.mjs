import {readFile, writeFile} from 'fs/promises';

function removeByteOrderMark(str){
    return str.replace(/^\ufeff/g,"");
}

let data = await readFile('./donnees2.json', {encoding: "utf-16le"})
    .then(res => removeByteOrderMark(res))
    .then(res => JSON.parse(res))

function tryIncrement(obj, prop){
    if (obj[prop]){
        obj[prop]++
    } else {
        obj[prop] = 1;
    }
}


function initDR(){
    return {
        gateways: {},
        rssi : [],
        lsnr: [],
        count: 0
    }
}

function tryDR(DRs, name){
    if (DRs[name]) return DRs[name];
    let dr = initDR();
    DRs[name] = dr
    return dr;
}


let DRs = {}
let gatewaysBestCount = {}

for (let trame of data){
    if (trame.all_gw){
        console.log("Trame : ");
        let drName = trame.text;
        console.log("Message : ", drName);

        let dr = tryDR(DRs, drName);
        dr.count++;

        for (let gw of trame.all_gw){
            console.log("GW reached :", gw.desc);
            tryIncrement(dr.gateways, gw.desc);
        }

        let best = trame.best_gw.desc
        console.log("Bets gateway :", best)
        tryIncrement(gatewaysBestCount, trame.best_gw.desc)
    }
}

let bestGW = ""
let max = 0;
for (let gw in gatewaysBestCount){
    if (gatewaysBestCount[gw] > max) {
        bestGW = gw;
        max = gatewaysBestCount[gw];
    }
}

for (let trame of data){
    if (trame.all_gw){
        let drName = trame.text;

        let dr = tryDR(DRs, drName);
        for (let gw of trame.all_gw){
            if (gw.desc == bestGW){
                dr.rssi.push(gw.rssi);
                dr.lsnr.push(gw.lsnr);
            }
        }
    }

}

writeFile("./result.json", JSON.stringify(DRs, null, 4))
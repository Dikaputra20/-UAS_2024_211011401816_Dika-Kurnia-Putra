import 'dart:convert';
import 'package:crypto/models/crypto_model.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

class CryptoService {
  final Dio _dio = Dio();

  Future<Either<String, CryptoModel>> GETCrypto() async {
    try {
      var response = await _dio.get(
        "https://api.coinlore.net/api/tickers/",
      );
      var result = CryptoModel.fromJson(json.decode('{"data":[{"id":"90","symbol":"BTC","name":"Bitcoin","nameid":"bitcoin","rank":1,"price_usd":"55388.76","percent_change_24h":"-3.19","percent_change_1h":"-0.51","percent_change_7d":"-10.27","price_btc":"1.00","market_cap_usd":"1091155840995.10","volume24":47988909107.32,"volume24a":35818036020.6219,"csupply":"19699952.00","tsupply":"19699952","msupply":"21000000"},{"id":"80","symbol":"ETH","name":"Ethereum","nameid":"ethereum","rank":2,"price_usd":"2941.94","percent_change_24h":"-5.49","percent_change_1h":"-0.99","percent_change_7d":"-14.97","price_btc":"0.053101","market_cap_usd":"360020680094.72","volume24":26696448491.5099,"volume24a":17102288590.9411,"csupply":"122375302.00","tsupply":"122375302","msupply":""},{"id":"518","symbol":"USDT","name":"Tether","nameid":"tether","rank":3,"price_usd":"1.00","percent_change_24h":"0.32","percent_change_1h":"-0.03","percent_change_7d":"0.17","price_btc":"0.000018","market_cap_usd":"101000122015.00","volume24":85342640809.4202,"volume24a":58652932463.9069,"csupply":"100729057191.00","tsupply":"103797122782.55","msupply":""},{"id":"2710","symbol":"BNB","name":"Binance Coin","nameid":"binance-coin","rank":4,"price_usd":"488.17","percent_change_24h":"-6.14","percent_change_1h":"-0.67","percent_change_7d":"-16.32","price_btc":"0.008811","market_cap_usd":"81426938160.41","volume24":1432018933.56851,"volume24a":844319766.198543,"csupply":"166801148.00","tsupply":"192443301","msupply":"200000000"},{"id":"48543","symbol":"SOL","name":"Solana","nameid":"solana","rank":5,"price_usd":"131.49","percent_change_24h":"-2.02","percent_change_1h":"-0.92","percent_change_7d":"-10.71","price_btc":"0.002373","market_cap_usd":"58250097537.53","volume24":4453575999.6197,"volume24a":3022958999.5224,"csupply":"443015903.00","tsupply":"491561409.22682","msupply":""},{"id":"33285","symbol":"USDC","name":"USD Coin","nameid":"usd-coin","rank":6,"price_usd":"1.00","percent_change_24h":"-0.06","percent_change_1h":"0.01","percent_change_7d":"-0.06","price_btc":"0.000018","market_cap_usd":"29192337526.08","volume24":7094641957.12063,"volume24a":5233705037.62638,"csupply":"29187435574.00","tsupply":"29187435574.21","msupply":""},{"id":"46971","symbol":"STETH","name":"Staked Ether","nameid":"staked-ether","rank":7,"price_usd":"2938.15","percent_change_24h":"-5.58","percent_change_1h":"-1.02","percent_change_7d":"-15.04","price_btc":"0.053033","market_cap_usd":"27090346784.40","volume24":182031703.163792,"volume24a":82698124.7384607,"csupply":"9220200.00","tsupply":"9901295","msupply":"9901295"},{"id":"54683","symbol":"TON","name":"TON Coin","nameid":"toncoin","rank":8,"price_usd":"7.08","percent_change_24h":"-0.62","percent_change_1h":"-0.72","percent_change_7d":"-8.01","price_btc":"0.000128","market_cap_usd":"24558036995.28","volume24":655344753.275172,"volume24a":451874647.66731,"csupply":"3468312277.00","tsupply":"5047558528","msupply":"5047558528"},{"id":"58","symbol":"XRP","name":"XRP","nameid":"ripple","rank":9,"price_usd":"0.419602","percent_change_24h":"-5.64","percent_change_1h":"0.08","percent_change_7d":"-11.73","price_btc":"0.000008","market_cap_usd":"18004925143.85","volume24":1880688596.1161,"volume24a":1244951816.64939,"csupply":"42909539227.00","tsupply":"99991841593","msupply":"100000000000"},{"id":"2","symbol":"DOGE","name":"Dogecoin","nameid":"dogecoin","rank":10,"price_usd":"0.100476","percent_change_24h":"-6.86","percent_change_1h":"-0.70","percent_change_7d":"-20.45","price_btc":"0.000002","market_cap_usd":"14502923983.19","volume24":1478878218.27714,"volume24a":895856865.34691,"csupply":"144342016384.00","tsupply":"144342016384","msupply":""},{"id":"257","symbol":"ADA","name":"Cardano","nameid":"cardano","rank":11,"price_usd":"0.344989","percent_change_24h":"-8.86","percent_change_1h":"-1.66","percent_change_7d":"-12.07","price_btc":"0.000006","market_cap_usd":"12243415379.65","volume24":686620613.427313,"volume24a":455315282.644878,"csupply":"35489244418.00","tsupply":"35983607755.528","msupply":"45000000000"},{"id":"2713","symbol":"TRX","name":"TRON","nameid":"tron","rank":12,"price_usd":"0.126654","percent_change_24h":"0.64","percent_change_1h":"-0.13","percent_change_7d":"3.77","price_btc":"0.000002","market_cap_usd":"11135934275.80","volume24":820012730.255595,"volume24a":538229199.092683,"csupply":"87923847381.00","tsupply":"100000000000","msupply":""},{"id":"44883","symbol":"AVAX","name":"Avalanche","nameid":"avalanche","rank":13,"price_usd":"24.49","percent_change_24h":"-3.14","percent_change_1h":"-1.79","percent_change_7d":"-12.21","price_btc":"0.000442","market_cap_usd":"9240810424.03","volume24":478950401.93446,"volume24a":353421794.245486,"csupply":"377285092.00","tsupply":"435974732.16531","msupply":"720000000"},{"id":"33422","symbol":"WBTC","name":"Wrapped Bitcoin","nameid":"wrapped-bitcoin","rank":14,"price_usd":"55470.90","percent_change_24h":"-3.07","percent_change_1h":"-0.41","percent_change_7d":"-10.32","price_btc":"1.00","market_cap_usd":"8652683640.77","volume24":138214877.964935,"volume24a":88788916.8049905,"csupply":"155986.00","tsupply":"155986.90058764","msupply":""},{"id":"45088","symbol":"SHIB","name":"Shiba Inu","nameid":"shiba-inu","rank":15,"price_usd":"0.000014","percent_change_24h":"-6.11","percent_change_1h":"-0.78","percent_change_7d":"-20.15","price_btc":"2.52E-10","market_cap_usd":"8221006331.08","volume24":44387746.5216458,"volume24a":31629901.6575817,"csupply":"589289410812691.00","tsupply":"999982367717358","msupply":""},{"id":"45219","symbol":"DOT","name":"Polkadot","nameid":"polkadot","rank":16,"price_usd":"5.59","percent_change_24h":"-2.43","percent_change_1h":"-1.14","percent_change_7d":"-10.66","price_btc":"0.000101","market_cap_usd":"7302162822.07","volume24":485979962.733987,"volume24a":223982885.431622,"csupply":"1307052068.00","tsupply":"1388001203.0802","msupply":"1388001203.0802"},{"id":"2751","symbol":"LINK","name":"ChainLink","nameid":"chainlink","rank":17,"price_usd":"12.09","percent_change_24h":"-6.21","percent_change_1h":"-0.55","percent_change_7d":"-16.00","price_btc":"0.000218","market_cap_usd":"7097888386.06","volume24":641789729.09027,"volume24a":492966474.181959,"csupply":"587099970.00","tsupply":"1000000000","msupply":"1000000000"},{"id":"2321","symbol":"BCH","name":"Bitcoin Cash","nameid":"bitcoin-cash","rank":18,"price_usd":"316.39","percent_change_24h":"-7.70","percent_change_1h":"-1.14","percent_change_7d":"-18.62","price_btc":"0.005711","market_cap_usd":"6235232251.18","volume24":460013126.852181,"volume24a":316864092.593478,"csupply":"19707341.00","tsupply":"19707341","msupply":"21000000"},{"id":"33833","symbol":"LEO","name":"UNUS SED LEO","nameid":"unus-sed-leo","rank":19,"price_usd":"5.69","percent_change_24h":"-0.93","percent_change_1h":"-0.09","percent_change_7d":"-0.74","price_btc":"0.000103","market_cap_usd":"5277291234.89","volume24":5589272.62976267,"volume24a":5786895.36969151,"csupply":"927132386.00","tsupply":"985239504","msupply":""},{"id":"48563","symbol":"NEAR","name":"NEAR Protocol","nameid":"near-protocol","rank":20,"price_usd":"4.34","percent_change_24h":"-8.54","percent_change_1h":"-1.62","percent_change_7d":"-15.82","price_btc":"0.000078","market_cap_usd":"4534893085.45","volume24":458768722.141005,"volume24a":304125721.178315,"csupply":"1043761976.00","tsupply":"1043761976","msupply":"1043761976"},{"id":"47305","symbol":"UNI","name":"Uniswap","nameid":"uniswap","rank":21,"price_usd":"7.49","percent_change_24h":"-5.70","percent_change_1h":"-0.28","percent_change_7d":"-21.84","price_btc":"0.000135","market_cap_usd":"4482545596.18","volume24":256071033.983686,"volume24a":180807043.341901,"csupply":"598736139.00","tsupply":"1000000000","msupply":"1000000000"},{"id":"1","symbol":"LTC","name":"Litecoin","nameid":"litecoin","rank":22,"price_usd":"59.88","percent_change_24h":"-12.31","percent_change_1h":"-1.14","percent_change_7d":"-18.37","price_btc":"0.001081","market_cap_usd":"4463562908.83","volume24":885204929.895561,"volume24a":649518913.671381,"csupply":"74544062.00","tsupply":"74544062","msupply":"84000000"},{"id":"70485","symbol":"KAS","name":"Kaspa","nameid":"kaspa","rank":23,"price_usd":"0.159207","percent_change_24h":"-3.96","percent_change_1h":"-2.53","percent_change_7d":"-12.19","price_btc":"0.000003","market_cap_usd":"3650109397.87","volume24":151430937.637029,"volume24a":102542861.586708,"csupply":"22926816511.00","tsupply":"22926816511.397","msupply":"28704026601"},{"id":"93841","symbol":"PEPE","name":"Pepe","nameid":"pepe","rank":24,"price_usd":"0.000008","percent_change_24h":"-9.36","percent_change_1h":"-1.75","percent_change_7d":"-31.92","price_btc":"1.51E-10","market_cap_usd":"3514030274.76","volume24":7091214.97806261,"volume24a":7898810.09045022,"csupply":"420689899999990.00","tsupply":"420689899999994","msupply":"420690000000000"},{"id":"100423","symbol":"FDUSD","name":"First Digital USD","nameid":"first-digital-usd","rank":25,"price_usd":"0.999764","percent_change_24h":"0.00","percent_change_1h":"-0.02","percent_change_7d":"-0.09","price_btc":"0.000018","market_cap_usd":"3098033732.05","volume24":7628965321.42099,"volume24a":5520216792.61141,"csupply":"3098764893.00","tsupply":"3098764893.85","msupply":null},{"id":"118","symbol":"ETC","name":"Ethereum Classic","nameid":"ethereum-classic","rank":26,"price_usd":"19.36","percent_change_24h":"-9.91","percent_change_1h":"-0.67","percent_change_7d":"-20.25","price_btc":"0.000349","market_cap_usd":"2824140477.09","volume24":449369221.318828,"volume24a":314175740.860018,"csupply":"145903895.00","tsupply":"210700000","msupply":"210700000"},{"id":"96901","symbol":"WBETH","name":"Wrapped Beacon ETH","nameid":"wrapped-beacon-eth","rank":27,"price_usd":"3066.59","percent_change_24h":"-5.50","percent_change_1h":"-1.02","percent_change_7d":"-14.91","price_btc":"0.055351","market_cap_usd":"2727425390.94","volume24":22835215.0582678,"volume24a":12376895.6737145,"csupply":"889399.00","tsupply":"889399.86447924","msupply":"889399.86447924"},{"id":"28","symbol":"XMR","name":"Monero","nameid":"monero","rank":28,"price_usd":"147.52","percent_change_24h":"-6.08","percent_change_1h":"-1.11","percent_change_7d":"-11.65","price_btc":"0.002663","market_cap_usd":"2715452271.80","volume24":57955722.4320575,"volume24a":49759331.9065608,"csupply":"18406889.00","tsupply":"18406889.932412","msupply":""},{"id":"89","symbol":"XLM","name":"Stellar","nameid":"stellar","rank":29,"price_usd":"0.083536","percent_change_24h":"-4.92","percent_change_1h":"0.15","percent_change_7d":"-8.39","price_btc":"0.000002","market_cap_usd":"2419203176.19","volume24":165049764.461666,"volume24a":71710469.6241398,"csupply":"28960135100.00","tsupply":"104303927518","msupply":"104303927518"},{"id":"44863","symbol":"RNDR","name":"Render Token","nameid":"render-token","rank":30,"price_usd":"6.43","percent_change_24h":"-4.23","percent_change_1h":"-2.37","percent_change_7d":"-17.22","price_btc":"0.000116","market_cap_usd":"2406154510.75","volume24":261648955.659206,"volume24a":143249083.576143,"csupply":"374355803.00","tsupply":"531039932","msupply":"536870912"},{"id":"33531","symbol":"OKB","name":"OKB","nameid":"okb","rank":31,"price_usd":"36.15","percent_change_24h":"-10.16","percent_change_1h":"0.20","percent_change_7d":"-15.06","price_btc":"0.000653","market_cap_usd":"2169257854.72","volume24":24973688.1141087,"volume24a":6664668.30916351,"csupply":"60000000.00","tsupply":"300000000","msupply":""},{"id":"33830","symbol":"ATOM","name":"Cosmos","nameid":"cosmos","rank":32,"price_usd":"5.52","percent_change_24h":"-10.06","percent_change_1h":"-1.40","percent_change_7d":"-20.33","price_btc":"0.000100","market_cap_usd":"2149120596.42","volume24":326277188.770352,"volume24a":240053646.285818,"csupply":"389254388.00","tsupply":"389254388","msupply":""},{"id":"111341","symbol":"APT","name":"Aptos","nameid":"aptos","rank":33,"price_usd":"5.65","percent_change_24h":"-7.72","percent_change_1h":"-0.96","percent_change_7d":"-19.34","price_btc":"0.000102","market_cap_usd":"2083610356.22","volume24":217910515.826373,"volume24a":118891612.466144,"csupply":"368468672.00","tsupply":"1084577363.9802","msupply":"1084577363.9802"},{"id":"121595","symbol":"MNT","name":"Mantle","nameid":"mantle","rank":34,"price_usd":"0.631187","percent_change_24h":"-7.09","percent_change_1h":"-0.09","percent_change_7d":"-22.15","price_btc":"0.000011","market_cap_usd":"2039781879.41","volume24":277515309.055164,"volume24a":267540439.558792,"csupply":"3231662126.00","tsupply":"6219316794.99","msupply":"6219316795"},{"id":"48569","symbol":"STX","name":"Stacks","nameid":"stacks","rank":35,"price_usd":"1.37","percent_change_24h":"-5.23","percent_change_1h":"-0.84","percent_change_7d":"-20.64","price_btc":"0.000025","market_cap_usd":"1983903337.60","volume24":148612476.890983,"volume24a":114192287.659333,"csupply":"1444838084.00","tsupply":"1818000000","msupply":"1818000000"},{"id":"12377","symbol":"MKR","name":"Maker","nameid":"maker","rank":36,"price_usd":"2109.42","percent_change_24h":"-6.54","percent_change_1h":"-1.51","percent_change_7d":"-17.87","price_btc":"0.038075","market_cap_usd":"1948197290.94","volume24":140464651.830665,"volume24a":144502344.063001,"csupply":"923569.00","tsupply":"977631","msupply":"1005577"},{"id":"32607","symbol":"FIL","name":"Filecoin","nameid":"filecoin","rank":37,"price_usd":"3.51","percent_change_24h":"-9.71","percent_change_1h":"-1.10","percent_change_7d":"-22.19","price_btc":"0.000063","market_cap_usd":"1825763159.10","volume24":269956929.197997,"volume24a":206701150.539806,"csupply":"519800264.00","tsupply":"1960855109","msupply":""},{"id":"121593","symbol":"IMX","name":"Immutable","nameid":"immutable-x","rank":38,"price_usd":"1.29","percent_change_24h":"-5.72","percent_change_1h":"-0.40","percent_change_7d":"-17.95","price_btc":"0.000023","market_cap_usd":"1797883856.93","volume24":78807098.1342413,"volume24a":56163959.3617009,"csupply":"1389224659.00","tsupply":"2000000000","msupply":"2000000000"},{"id":"121613","symbol":"WIF","name":"dogwifhat","nameid":"dogwifhat","rank":39,"price_usd":"1.77","percent_change_24h":"-0.36","percent_change_1h":"-0.04","percent_change_7d":"-14.44","price_btc":"0.000032","market_cap_usd":"1771230459.66","volume24":573245005.319473,"volume24a":383981633.801227,"csupply":"998920172.00","tsupply":"998920172.89","msupply":null},{"id":"2741","symbol":"VET","name":"VeChain","nameid":"vechain","rank":40,"price_usd":"0.023300","percent_change_24h":"0.35","percent_change_1h":"-1.52","percent_change_7d":"-12.92","price_btc":"4.21E-7","market_cap_usd":"1694276320.39","volume24":75635000.6738873,"volume24a":52826934.3105362,"csupply":"72714516834.00","tsupply":"85985041177","msupply":"86712634466"},{"id":"46183","symbol":"INJ","name":"Injective Protocol","nameid":"injective-protocol","rank":41,"price_usd":"19.14","percent_change_24h":"-3.00","percent_change_1h":"-0.81","percent_change_7d":"-17.14","price_btc":"0.000346","market_cap_usd":"1612933791.28","volume24":198708402.273956,"volume24a":96672356.3795304,"csupply":"84255555.00","tsupply":"100000000","msupply":"100000000"},{"id":"48561","symbol":"GRT","name":"The Graph","nameid":"the-graph","rank":42,"price_usd":"0.168465","percent_change_24h":"-7.22","percent_change_1h":"-1.29","percent_change_7d":"-22.31","price_btc":"0.000003","market_cap_usd":"1586559264.94","volume24":101710059.448466,"volume24a":66052093.5796451,"csupply":"9417713956.00","tsupply":"10794953797","msupply":""},{"id":"93845","symbol":"SUI","name":"Sui","nameid":"sui","rank":43,"price_usd":"0.641490","percent_change_24h":"-9.67","percent_change_1h":"-1.31","percent_change_7d":"-22.93","price_btc":"0.000012","market_cap_usd":"1556347186.01","volume24":156668169.431664,"volume24a":74278915.6952254,"csupply":"2426143881.00","tsupply":"10000000000","msupply":"10000000000"},{"id":"67117","symbol":"BGB","name":"Bitget Token","nameid":"bitget-token","rank":44,"price_usd":"1.03","percent_change_24h":"-4.16","percent_change_1h":"1.21","percent_change_7d":"-10.48","price_btc":"0.000019","market_cap_usd":"1440448835.34","volume24":123221917.899158,"volume24a":78502171.1808918,"csupply":"1400001000.00","tsupply":"2000000000","msupply":"2000000000"},{"id":"42441","symbol":"AR","name":"Arweave","nameid":"arweave","rank":45,"price_usd":"21.97","percent_change_24h":"-7.21","percent_change_1h":"1.35","percent_change_7d":"-16.16","price_btc":"0.000397","market_cap_usd":"1438255332.22","volume24":124640561.534874,"volume24a":71980423.8556723,"csupply":"65454185.00","tsupply":"65454185","msupply":"66000000"},{"id":"46981","symbol":"LDO","name":"Lido DAO","nameid":"lido-dao","rank":46,"price_usd":"1.59","percent_change_24h":"-7.24","percent_change_1h":"-2.15","percent_change_7d":"-32.80","price_btc":"0.000029","market_cap_usd":"1418966771.17","volume24":195981258.709962,"volume24a":223154027.040125,"csupply":"891684188.00","tsupply":"1000000000","msupply":"1000000000"},{"id":"121619","symbol":"TAO","name":"Bittensor","nameid":"bittensor","rank":47,"price_usd":"215.44","percent_change_24h":"-3.08","percent_change_1h":"-0.22","percent_change_7d":"-25.04","price_btc":"0.003889","market_cap_usd":"1373204426.92","volume24":58433401.4983202,"volume24a":52745788.5281198,"csupply":"6374044.00","tsupply":"6374044","msupply":"21000000"},{"id":"121611","symbol":"ONDO","name":"Ondo","nameid":"ondo-finance","rank":48,"price_usd":"0.984022","percent_change_24h":"-5.92","percent_change_1h":"-2.06","percent_change_7d":"-15.99","price_btc":"0.000018","market_cap_usd":"1366724319.56","volume24":317705083.132919,"volume24a":193813944.63331,"csupply":"1388916453.00","tsupply":"10000000000","msupply":null},{"id":"82537","symbol":"BONK","name":"Bonk","nameid":"bonk","rank":49,"price_usd":"0.000022","percent_change_24h":"3.94","percent_change_1h":"0.82","percent_change_7d":"-9.42","price_btc":"3.93E-10","market_cap_usd":"1325103734.36","volume24":14029118.0560434,"volume24a":14298737.7178099,"csupply":"60837624528360.00","tsupply":"93689234980612","msupply":"93863283342446"},{"id":"51947","symbol":"FLOKI","name":"Floki Inu","nameid":"floki-inu","rank":50,"price_usd":"0.000137","percent_change_24h":"-6.98","percent_change_1h":"-2.32","percent_change_7d":"-20.18","price_btc":"2.47E-9","market_cap_usd":"1308848425.47","volume24":89508872.3877695,"volume24a":78705205.0089569,"csupply":"9558929413813.00","tsupply":"10000000000000","msupply":""},{"id":"32479","symbol":"TUSD","name":"TrueUSD","nameid":"trueusd","rank":51,"price_usd":"0.999049","percent_change_24h":"-0.05","percent_change_1h":"-0.11","percent_change_7d":"0.21","price_btc":"0.000018","market_cap_usd":"1287230106.25","volume24":63114981.043115,"volume24a":43260976.0049377,"csupply":"1288455467.00","tsupply":"1288455467.01","msupply":""},{"id":"32360","symbol":"THETA","name":"Theta Token","nameid":"theta-token","rank":52,"price_usd":"1.23","percent_change_24h":"-7.91","percent_change_1h":"-0.94","percent_change_7d":"-21.41","price_btc":"0.000022","market_cap_usd":"1228379975.00","volume24":39198286.8527722,"volume24a":21857158.3501702,"csupply":"1000000000.00","tsupply":"1000000000","msupply":null},{"id":"70497","symbol":"OP","name":"Optimism","nameid":"optimism","rank":53,"price_usd":"1.33","percent_change_24h":"-12.65","percent_change_1h":"-1.11","percent_change_7d":"-25.98","price_btc":"0.000024","market_cap_usd":"1211251873.07","volume24":324203537.960941,"volume24a":189240160.05844,"csupply":"911294948.00","tsupply":"4294967296","msupply":"4294967296"},{"id":"33644","symbol":"FTM","name":"Fantom","nameid":"fantom","rank":54,"price_usd":"0.419184","percent_change_24h":"-8.35","percent_change_1h":"-1.27","percent_change_7d":"-25.39","price_btc":"0.000008","market_cap_usd":"1175237537.27","volume24":232686397.318346,"volume24a":249221503.440797,"csupply":"2803634835.00","tsupply":"3175000000","msupply":"3175000000"},{"id":"32893","symbol":"PHB","name":"Red Pulse Phoenix","nameid":"red-pulse","rank":55,"price_usd":"1.41","percent_change_24h":"-12.10","percent_change_1h":"-2.73","percent_change_7d":"-24.27","price_btc":"0.000025","market_cap_usd":"1168954909.56","volume24":925049.719883697,"volume24a":296039.550249365,"csupply":"829588687.00","tsupply":"1362278592","msupply":""},{"id":"46018","symbol":"AAVE","name":"Aave","nameid":"aave","rank":56,"price_usd":"78.70","percent_change_24h":"-3.73","percent_change_1h":"-0.71","percent_change_7d":"-16.49","price_btc":"0.001420","market_cap_usd":"1161036615.43","volume24":150173003.047425,"volume24a":116666806.845554,"csupply":"14753494.00","tsupply":"16000000","msupply":"16000000"},{"id":"36447","symbol":"RUNE","name":"THORChain","nameid":"thorchain","rank":57,"price_usd":"3.31","percent_change_24h":"-7.47","percent_change_1h":"-0.83","percent_change_7d":"-19.69","price_btc":"0.000060","market_cap_usd":"1129510923.40","volume24":138319121.561532,"volume24a":86021875.3960259,"csupply":"341449340.00","tsupply":"482982777","msupply":"500000000"},{"id":"130947","symbol":"NOT","name":"Notcoin","nameid":"notcoin","rank":58,"price_usd":"0.010315","percent_change_24h":"-13.16","percent_change_1h":"-1.15","percent_change_7d":"-32.09","price_btc":"1.86E-7","market_cap_usd":"1059548746.36","volume24":310943613.250522,"volume24a":195015782.61774,"csupply":"102719221714.00","tsupply":"102719221714","msupply":null},{"id":"34406","symbol":"ALGO","name":"Algorand","nameid":"algorand","rank":59,"price_usd":"0.126767","percent_change_24h":"-5.66","percent_change_1h":"-0.58","percent_change_7d":"-11.06","price_btc":"0.000002","market_cap_usd":"1021195669.01","volume24":94654541.5550757,"volume24a":52129541.2713884,"csupply":"8055675995.00","tsupply":"8055675995.2288","msupply":"10000000000"},{"id":"48039","symbol":"JASMY","name":"JasmyCoin","nameid":"jasmycoin","rank":60,"price_usd":"0.021067","percent_change_24h":"-9.48","percent_change_1h":"-1.34","percent_change_7d":"-31.71","price_btc":"3.80E-7","market_cap_usd":"1020078381.16","volume24":164986251.560571,"volume24a":118363870.865332,"csupply":"48419999999.00","tsupply":"50000000000","msupply":"50000000000"},{"id":"126779","symbol":"BRETT","name":"Brett","nameid":"based-brett","rank":61,"price_usd":"0.118663","percent_change_24h":"-7.78","percent_change_1h":"-1.52","percent_change_7d":"-25.22","price_btc":"0.000002","market_cap_usd":"1015141505.09","volume24":55663699.6100478,"volume24a":37931361.4009863,"csupply":"8554838671.00","tsupply":"9999998655","msupply":"10000000000"},{"id":"87933","symbol":"CHEEL","name":"Cheelee","nameid":"cheelee","rank":62,"price_usd":"18.75","percent_change_24h":"-2.31","percent_change_1h":"0.60","percent_change_7d":"-7.91","price_btc":"0.000338","market_cap_usd":"1009606526.42","volume24":6377283.34570099,"volume24a":6478221.87442933,"csupply":"53837995.00","tsupply":"1000000000","msupply":"1000000000"},{"id":"33536","symbol":"MATIC","name":"Matic Network","nameid":"matic-network","rank":63,"price_usd":"0.457933","percent_change_24h":"-8.89","percent_change_1h":"-1.56","percent_change_7d":"-19.03","price_btc":"0.000008","market_cap_usd":"996092244.17","volume24":441779255.756812,"volume24a":243124534.351055,"csupply":"2175190262.00","tsupply":"10000000000","msupply":""},{"id":"33718","symbol":"FET","name":"Fetch.ai","nameid":"fetch","rank":64,"price_usd":"1.15","percent_change_24h":"-5.46","percent_change_1h":"-2.24","percent_change_7d":"-23.48","price_btc":"0.000021","market_cap_usd":"963351695.04","volume24":206429950.991591,"volume24a":132996475.124779,"csupply":"835063108.00","tsupply":"1152997575","msupply":""},{"id":"56831","symbol":"MSOL","name":"Marinade staked SOL","nameid":"marinade-staked-sol","rank":65,"price_usd":"157.89","percent_change_24h":"-1.36","percent_change_1h":"-0.49","percent_change_7d":"-10.70","price_btc":"0.002850","market_cap_usd":"948297139.46","volume24":3938494.10306169,"volume24a":3539938.9356482,"csupply":"6006252.00","tsupply":null,"msupply":null},{"id":"33085","symbol":"QNT","name":"Quant","nameid":"quant","rank":66,"price_usd":"72.06","percent_change_24h":"1.20","percent_change_1h":"-0.73","percent_change_7d":"-1.34","price_btc":"0.001301","market_cap_usd":"869941891.23","volume24":29515999.5135393,"volume24a":15460847.9831396,"csupply":"12072738.00","tsupply":"45467000","msupply":"45467000"},{"id":"48839","symbol":"PENDLE","name":"Pendle","nameid":"pendle","rank":67,"price_usd":"3.54","percent_change_24h":"-12.88","percent_change_1h":"-0.77","percent_change_7d":"-32.53","price_btc":"0.000064","market_cap_usd":"842432392.60","volume24":149863516.884136,"volume24a":171586867.048629,"csupply":"238185588.00","tsupply":"258446028","msupply":"258446029"},{"id":"93847","symbol":"ARB","name":"Arbitrum","nameid":"arbitrum","rank":68,"price_usd":"0.616367","percent_change_24h":"-13.27","percent_change_1h":"-1.15","percent_change_7d":"-25.42","price_btc":"0.000011","market_cap_usd":"785867985.41","volume24":275983117.810197,"volume24a":129301776.426149,"csupply":"1275000000.00","tsupply":"10000000000","msupply":""},{"id":"32354","symbol":"AGIX","name":"SingularityNET","nameid":"singularitynet","rank":69,"price_usd":"0.612642","percent_change_24h":"-0.01","percent_change_1h":"0.00","percent_change_7d":"-3.49","price_btc":"0.000011","market_cap_usd":"782133648.65","volume24":35096904.7810548,"volume24a":34528806.1267599,"csupply":"1276656352.00","tsupply":"1276656352.3525","msupply":"2000000000"},{"id":"120829","symbol":"CORE","name":"Core","nameid":"core","rank":70,"price_usd":"0.901967","percent_change_24h":"-17.11","percent_change_1h":"-1.50","percent_change_7d":"-32.85","price_btc":"0.000016","market_cap_usd":"781530559.49","volume24":103376689.899252,"volume24a":71379866.0588343,"csupply":"866473242.00","tsupply":"2100000000","msupply":"2100000000"},{"id":"2750","symbol":"KCS","name":"KuCoin Shares","nameid":"kucoin-shares","rank":71,"price_usd":"8.75","percent_change_24h":"-5.67","percent_change_1h":"-0.05","percent_change_7d":"-12.25","price_btc":"0.000158","market_cap_usd":"776813813.92","volume24":1570806.31436593,"volume24a":1013334.96488993,"csupply":"88745681.00","tsupply":"170118637","msupply":""},{"id":"33819","symbol":"CRO","name":"Crypto.com Chain","nameid":"crypto-com-chain","rank":72,"price_usd":"0.082679","percent_change_24h":"-3.38","percent_change_1h":"0.13","percent_change_7d":"-10.14","price_btc":"0.000001","market_cap_usd":"767330002.58","volume24":9400361.3658865,"volume24a":5701693.29397141,"csupply":"9280821918.00","tsupply":"100000000000","msupply":""},{"id":"48589","symbol":"FLOW","name":"Flow","nameid":"flow","rank":73,"price_usd":"0.497583","percent_change_24h":"-10.63","percent_change_1h":"-1.50","percent_change_7d":"-20.61","price_btc":"0.000009","market_cap_usd":"743117241.81","volume24":50186021.0104669,"volume24a":34425489.8013082,"csupply":"1493452839.00","tsupply":"1493452839.236","msupply":""},{"id":"84965","symbol":"FLR","name":"Flare","nameid":"flare","rank":74,"price_usd":"0.021326","percent_change_24h":"-0.94","percent_change_1h":"-1.52","percent_change_7d":"-13.37","price_btc":"3.85E-7","market_cap_usd":"741635433.25","volume24":27593322.4279695,"volume24a":8797809.94893862,"csupply":"34776372125.00","tsupply":"100559787198","msupply":""},{"id":"69801","symbol":"USDD","name":"USDD","nameid":"usdd","rank":75,"price_usd":"0.999303","percent_change_24h":"0.13","percent_change_1h":"0.05","percent_change_7d":"0.19","price_btc":"0.000018","market_cap_usd":"735619885.04","volume24":6677264.60216533,"volume24a":5999774.97071959,"csupply":"736133316.00","tsupply":"738812469","msupply":""},{"id":"56821","symbol":"ENS","name":"Ethereum Name Service","nameid":"ethereum-name-service","rank":76,"price_usd":"23.06","percent_change_24h":"-8.37","percent_change_1h":"-1.45","percent_change_7d":"-15.08","price_btc":"0.000416","market_cap_usd":"711521653.23","volume24":282434205.805752,"volume24a":269321960.806603,"csupply":"30854026.00","tsupply":"100000000","msupply":"100000000"},{"id":"46194","symbol":"AKT","name":"Akash Network","nameid":"akash-network","rank":77,"price_usd":"3.10","percent_change_24h":"0.71","percent_change_1h":"1.21","percent_change_7d":"-15.00","price_btc":"0.000056","market_cap_usd":"711201034.45","volume24":19477428.9133529,"volume24a":12655919.8832114,"csupply":"229746379.00","tsupply":"229746379.73338","msupply":"388539008"},{"id":"121623","symbol":"FTN","name":"Fasttoken","nameid":"fasttoken","rank":78,"price_usd":"2.31","percent_change_24h":"1.32","percent_change_1h":"-0.22","percent_change_7d":"4.29","price_btc":"0.000042","market_cap_usd":"703581912.01","volume24":37146003.7944421,"volume24a":33802277.7891123,"csupply":"304850250.00","tsupply":"715893316","msupply":"1000000000"},{"id":"100427","symbol":"SEI","name":"Sei","nameid":"sei","rank":79,"price_usd":"0.272351","percent_change_24h":"-4.23","percent_change_1h":"0.92","percent_change_7d":"-24.04","price_btc":"0.000005","market_cap_usd":"694495517.93","volume24":115603129.605806,"volume24a":90249165.6912592,"csupply":"2550000000.00","tsupply":"10000000000","msupply":"10000000000"},{"id":"3682","symbol":"XTZ","name":"Tezos","nameid":"tezos","rank":80,"price_usd":"0.696063","percent_change_24h":"-1.42","percent_change_1h":"-1.88","percent_change_7d":"-10.18","price_btc":"0.000013","market_cap_usd":"677510617.29","volume24":38304411.7802902,"volume24a":23775887.0949716,"csupply":"973346110.00","tsupply":"994119793.63736","msupply":""},{"id":"33234","symbol":"BCHSV","name":"Bitcoin SV","nameid":"bitcoin-cash-sv","rank":81,"price_usd":"34.57","percent_change_24h":"-9.00","percent_change_1h":"-0.59","percent_change_7d":"-24.11","price_btc":"0.000624","market_cap_usd":"666103701.12","volume24":84691028.6281628,"volume24a":76163068.5884092,"csupply":"19266077.00","tsupply":"21000000","msupply":"21000000"},{"id":"46575","symbol":"AXS","name":"Axie Infinity","nameid":"axie-infinity","rank":82,"price_usd":"4.75","percent_change_24h":"-9.47","percent_change_1h":"-0.57","percent_change_7d":"-24.15","price_btc":"0.000086","market_cap_usd":"656776659.08","volume24":69315312.1814433,"volume24a":45784148.9123146,"csupply":"138242758.00","tsupply":"270000000","msupply":"270000000"},{"id":"133","symbol":"NEO","name":"Neo","nameid":"neo","rank":83,"price_usd":"9.25","percent_change_24h":"-8.24","percent_change_1h":"-0.47","percent_change_7d":"-20.70","price_btc":"0.000167","market_cap_usd":"652447114.25","volume24":52849163.555287,"volume24a":28290461.330058,"csupply":"70538831.00","tsupply":"100000000","msupply":"100000000"},{"id":"46968","symbol":"FRAX","name":"Frax","nameid":"frax","rank":84,"price_usd":"0.997067","percent_change_24h":"0.29","percent_change_1h":"0.00","percent_change_7d":"0.00","price_btc":"0.000018","market_cap_usd":"647557278.35","volume24":14028962.5814234,"volume24a":5768388.7686114,"csupply":"649462235.00","tsupply":"1044853133.2588","msupply":""},{"id":"48555","symbol":"HBAR","name":"Hedera Hashgraph","nameid":"hedera-hashgraph","rank":85,"price_usd":"0.065073","percent_change_24h":"-5.03","percent_change_1h":"-0.18","percent_change_7d":"-17.25","price_btc":"0.000001","market_cap_usd":"626882520.49","volume24":72649206.7996792,"volume24a":44310820.7501464,"csupply":"9633530220.00","tsupply":"50000000000","msupply":"50000000000"},{"id":"86181","symbol":"CBETH","name":"Coinbase Wrapped Staked ETH","nameid":"coinbase-wrapped-staked-eth","rank":86,"price_usd":"3161.51","percent_change_24h":"-5.53","percent_change_1h":"-1.02","percent_change_7d":"-14.91","price_btc":"0.057065","market_cap_usd":"618615686.09","volume24":3439948.31917027,"volume24a":3870516.21206,"csupply":"195671.00","tsupply":"1455079","msupply":"1455079"},{"id":"167","symbol":"GNO","name":"Gnosis","nameid":"gnosis-gno","rank":87,"price_usd":"237.16","percent_change_24h":"-6.70","percent_change_1h":"-0.75","percent_change_7d":"-20.48","price_btc":"0.004281","market_cap_usd":"614154770.03","volume24":11873883.2864583,"volume24a":8744870.7364435,"csupply":"2589588.00","tsupply":"10000000","msupply":"10000000"},{"id":"45161","symbol":"SAND","name":"The Sandbox","nameid":"the-sandbox","rank":88,"price_usd":"0.266416","percent_change_24h":"-7.84","percent_change_1h":"-0.60","percent_change_7d":"-21.40","price_btc":"0.000005","market_cap_usd":"599898288.47","volume24":113365872.381401,"volume24a":72596248.8740528,"csupply":"2251731926.00","tsupply":"3000000000","msupply":"3000000000"},{"id":"42855","symbol":"XAUT","name":"Tether Gold","nameid":"tether-gold","rank":89,"price_usd":"2379.03","percent_change_24h":"0.47","percent_change_1h":"0.06","percent_change_7d":"2.19","price_btc":"0.042941","market_cap_usd":"586487833.19","volume24":14283922.6595027,"volume24a":10348840.3800457,"csupply":"246524.00","tsupply":"246524","msupply":""},{"id":"97137","symbol":"ORDI","name":"Ordinals","nameid":"ordinals","rank":90,"price_usd":"27.66","percent_change_24h":"-15.37","percent_change_1h":"-1.95","percent_change_7d":"-29.73","price_btc":"0.000499","market_cap_usd":"580950989.73","volume24":246928734.709346,"volume24a":135722245.816563,"csupply":"21000000.00","tsupply":"21000000","msupply":"21000000"},{"id":"45577","symbol":"GALA","name":"Gala","nameid":"gala","rank":91,"price_usd":"0.020628","percent_change_24h":"-11.27","percent_change_1h":"-1.07","percent_change_7d":"-26.69","price_btc":"3.72E-7","market_cap_usd":"573459575.97","volume24":148470074.42476,"volume24a":107138431.194858,"csupply":"27799861148.00","tsupply":"44959375544","msupply":"50000000000"},{"id":"32604","symbol":"NEXO","name":"Nexo","nameid":"nexo","rank":92,"price_usd":"1.02","percent_change_24h":"-2.93","percent_change_1h":"-1.38","percent_change_7d":"-14.97","price_btc":"0.000018","market_cap_usd":"572132947.99","volume24":21036940.6509784,"volume24a":7364240.20111412,"csupply":"560000011.00","tsupply":"1000000000","msupply":"1000000000"},{"id":"45178","symbol":"OM","name":"MANTRA DAO","nameid":"mantra-dao","rank":93,"price_usd":"0.792556","percent_change_24h":"0.78","percent_change_1h":"-1.68","percent_change_7d":"12.21","price_btc":"0.000014","market_cap_usd":"554438070.85","volume24":51797543.7904049,"volume24a":93166297.0508878,"csupply":"699557404.00","tsupply":"888888888","msupply":"888888888"},{"id":"46572","symbol":"ROSE","name":"Oasis Network","nameid":"oasis-network","rank":94,"price_usd":"0.082275","percent_change_24h":"-3.36","percent_change_1h":"-1.40","percent_change_7d":"-14.91","price_btc":"0.000001","market_cap_usd":"552364045.59","volume24":30671481.6940798,"volume24a":20488326.9069557,"csupply":"6713599876.00","tsupply":"10000000000","msupply":"10000000000"},{"id":"258","symbol":"MANA","name":"Decentraland","nameid":"decentraland","rank":95,"price_usd":"0.280770","percent_change_24h":"-6.42","percent_change_1h":"-0.21","percent_change_7d":"-17.85","price_btc":"0.000005","market_cap_usd":"535799021.54","volume24":73616804.1963748,"volume24a":52844998.8646958,"csupply":"1908319865.00","tsupply":"2193179327","msupply":""},{"id":"51539","symbol":"XEC","name":"eCash","nameid":"ecash","rank":96,"price_usd":"0.000027","percent_change_24h":"-5.22","percent_change_1h":"-0.32","percent_change_7d":"-16.34","price_btc":"4.90E-10","market_cap_usd":"533460446.03","volume24":13140782.9579841,"volume24a":10234539.5957569,"csupply":"19654923423092.00","tsupply":"19654923423092","msupply":"21000000000000"},{"id":"126763","symbol":"ENA","name":"Ethena","nameid":"ethena","rank":97,"price_usd":"0.373513","percent_change_24h":"-13.48","percent_change_1h":"-1.53","percent_change_7d":"-33.75","price_btc":"0.000007","market_cap_usd":"532256563.34","volume24":112672999.402848,"volume24a":81609583.5837984,"csupply":"1425000000.00","tsupply":"15000000000","msupply":"15000000000"},{"id":"34391","symbol":"CHZ","name":"Chiliz","nameid":"chiliz","rank":98,"price_usd":"0.059831","percent_change_24h":"-8.94","percent_change_1h":"-0.53","percent_change_7d":"-22.74","price_btc":"0.000001","market_cap_usd":"531797874.02","volume24":104976396.561538,"volume24a":66887835.7522796,"csupply":"8888290621.00","tsupply":"8888888888","msupply":"8888888888"},{"id":"2679","symbol":"EOS","name":"EOS","nameid":"eos","rank":99,"price_usd":"0.468404","percent_change_24h":"-10.67","percent_change_1h":"-1.16","percent_change_7d":"-20.08","price_btc":"0.000008","market_cap_usd":"524269486.49","volume24":195524451.998217,"volume24a":104310665.291267,"csupply":"1119266872.00","tsupply":"1119266872.1783","msupply":""},{"id":"120827","symbol":"HNT","name":"Helium","nameid":"helium","rank":100,"price_usd":"3.10","percent_change_24h":"-7.79","percent_change_1h":"-0.11","percent_change_7d":"-14.34","price_btc":"0.000056","market_cap_usd":"498862571.55","volume24":9471764.50948437,"volume24a":6538688.72931803,"csupply":"160875441.00","tsupply":"160875441.82421","msupply":"223000000"}],"info":{"coins_num":12833,"time":1720190282}}'));
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
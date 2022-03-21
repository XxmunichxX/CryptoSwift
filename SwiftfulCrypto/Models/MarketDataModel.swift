//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Francesco Monaco on 19/03/22.
//

import Foundation

//JSON DATA:
/*
 URL: https://api.coingecko.com/api/v3/global

 JSON RESPONSE:
 
 {
   "data": {
     "active_cryptocurrencies": 13296,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 775,
     "total_market_cap": {
       "btc": 47294370.45832266,
       "eth": 668077874.2792952,
       "ltc": 17533593284.441536,
       "bch": 6343486202.577618,
       "bnb": 4886112682.613878,
       "eos": 914387462995.5211,
       "xrp": 2414896627917.5015,
       "xlm": 10130678678364.865,
       "link": 130396278499.92465,
       "dot": 100853402901.01363,
       "yfi": 95565433.3821777,
       "usd": 1979516447319.5552,
       "aed": 7270763911004.713,
       "ars": 216829028179032.03,
       "aud": 2666018689799.3164,
       "bdt": 170718645159601.5,
       "bhd": 745818452823.6918,
       "bmd": 1979516447319.5552,
       "brl": 9944595752221.637,
       "cad": 2495190379428.534,
       "chf": 1845105301030.1104,
       "clp": 1590561260585733.5,
       "cny": 12592100024689.176,
       "czk": 44540109822913.64,
       "dkk": 13331944296874.822,
       "eur": 1788956317001.8923,
       "gbp": 1501795784055.033,
       "hkd": 15489617224453.152,
       "huf": 672243785509720.2,
       "idr": 28390917718213624,
       "ils": 6423669437703.258,
       "inr": 150337658629953.03,
       "jpy": 235988086938775.47,
       "krw": 2397926838789489,
       "kwd": 600985152439.1138,
       "lkr": 521854271466911.56,
       "mmk": 3508259954913650.5,
       "mxn": 40307903658544.44,
       "myr": 8301696076768.734,
       "ngn": 823320480769150.1,
       "nok": 17312049144095.662,
       "nzd": 2864922481942.4355,
       "php": 103626694279438.67,
       "pkr": 354693019273823.25,
       "pln": 8446537295219.134,
       "rub": 212798192284299.72,
       "sar": 7430980033701.445,
       "sek": 18621647737731.074,
       "sgd": 2684620205854.7793,
       "thb": 65812239025849.05,
       "try": 29314857020000.027,
       "twd": 56160861126903.09,
       "uah": 58417497999748.86,
       "vef": 198208981870.10715,
       "vnd": 45261609080826070,
       "zar": 29508750656014.953,
       "xdr": 1419831926037.3179,
       "xag": 79414141857.74362,
       "xau": 1030199744.6785182,
       "bits": 47294370458322.66,
       "sats": 4729437045832266
     },
     "total_volume": {
       "btc": 2775862.97836008,
       "eth": 39211699.40315909,
       "ltc": 1029104563.6984326,
       "bch": 372320179.60764474,
       "bnb": 286782108.99785286,
       "eos": 53668423573.63911,
       "xrp": 141738267811.60065,
       "xlm": 594603028149.3297,
       "link": 7653388733.080699,
       "dot": 5919419682.3332815,
       "yfi": 5609051.266900654,
       "usd": 116184365452.36353,
       "aed": 426745174306.53046,
       "ars": 12726412596746.004,
       "aud": 156477451944.3394,
       "bdt": 10020041755962.008,
       "bhd": 43774551002.75596,
       "bmd": 116184365452.36353,
       "brl": 583681205941.3125,
       "cad": 146450973574.53137,
       "chf": 108295330853.78261,
       "clp": 93355299484628.47,
       "cny": 739071985515.576,
       "czk": 2614206314860.905,
       "dkk": 782495892103.3948,
       "eur": 104999761327.72638,
       "gbp": 88145360169.01376,
       "hkd": 909136850446.4718,
       "huf": 39456210507622.61,
       "idr": 1666356833845706,
       "ils": 377026398798.5007,
       "inr": 8823814267957.652,
       "jpy": 13850921103699.57,
       "krw": 140742254778029.6,
       "kwd": 35273805720.068596,
       "lkr": 30629352674027.47,
       "mmk": 205911376617008.7,
       "mxn": 2365804141523.752,
       "myr": 487253991834.1212,
       "ngn": 48323401278947.08,
       "nok": 1016101405578.363,
       "nzd": 168151773169.35852,
       "php": 6082193323064.143,
       "pkr": 20818106073588.77,
       "pln": 495755201854.2722,
       "rub": 12489829510353.248,
       "sar": 436148788293.1501,
       "sek": 1092966077152.5089,
       "sgd": 157569236426.49533,
       "thb": 3862737912873.319,
       "try": 1720585886420.597,
       "twd": 3296266632249.0054,
       "uah": 3428716111758.516,
       "vef": 11633540512.745165,
       "vnd": 2656553491904276,
       "zar": 1731966145016.6543,
       "xdr": 83334630333.09311,
       "xag": 4661078563.999651,
       "xau": 60465829.312373675,
       "bits": 2775862978360.08,
       "sats": 277586297836008.03
     },
     "market_cap_percentage": {
       "btc": 40.148118721091066,
       "eth": 17.998104778073255,
       "usdt": 4.061118145031797,
       "bnb": 3.44308123101042,
       "usdc": 2.6712974158383562,
       "xrp": 1.990112327408871,
       "luna": 1.7070989896770958,
       "sol": 1.4861134268346097,
       "ada": 1.4263446607580448,
       "avax": 1.2141458863905905
     },
     "market_cap_change_percentage_24h_usd": 4.281998750686749,
     "updated_at": 1647697103
   }
 }
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}

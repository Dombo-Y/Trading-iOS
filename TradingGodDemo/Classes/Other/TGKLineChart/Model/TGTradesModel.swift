//
//  TGTradesModel.swift
//  TradingGodDemo
//
//  Created by 尹东博 on 2022/12/10.
//

import UIKit
import YYModel

/*
 {"arg":{"channel":"trades",
 "instId":"ETH-USDT-SWAP"},
 "data":[
 {"instId":"ETH-USDT-SWAP",
 "tradeId":"757974798",
 "px":"1265.09",
 "sz":"78",
 "side":"sell",
 "ts":"1670657146222"}]}
 */

@objcMembers
class TGTradesModel: NSObject,YYModel {
    var instId:String = ""
    var tradeId:String = ""
    var px:String = ""
    var sz:String = ""
    var side:String = "" // buy、sell
    var ts:String = ""
    // ----
    var bf_px:CGFloat = 0.0
    var buyVolume:CGFloat = 0.0
    var sellVolume:CGFloat = 0.0
    
    override var description: String { 
        let timeStr = NSString.timeStampToString(timeStamp: Double(ts) ?? 0)
        if side == "buy" {
            return "成交时间戳:\(timeStr), 成交价格px: \(px), 成交数量:\(sz), 🍎成交方向:\(side) , 总买量:\(buyVolume), 总卖量:\(sellVolume)"
        }
        return "成交时间戳:\(timeStr), 成交价格px: \(px), 成交数量:\(sz), 🫐成交方向:\(side), 总买量:\(buyVolume), 总卖量:\(sellVolume)"
    }
}

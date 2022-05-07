//
//  HiTaokeHelper.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/5/7.
//

import Foundation
import Alamofire
import SwiftyJSON
import Hi_Kit_Module
import Hi_Helper_Module

class HiTaokeHelper {
    
    class func fetchData(pageId:Int,pageSize:Int,kindCount:Int, _ success: @escaping (Array<HiTaokeModel>)->(), _ failure: @escaping (Error?)->()) {
        
        let HiRequestTaoKeSwiftURL = "https://openapi.dataoke.com";
        let HiTAOKEAPIKEYSWIFT = "5dd614ef167bc";
        let HiTAOKEAPISECRETSWIFT = "062700f10da8f4be66a130dd5a92f72c";
        
        var taokeModels = [HiTaokeModel]()
        var taokeSonModels = [HiTaokeSonModel]()
        //请求链接：
        let urlString = "\(HiRequestTaoKeSwiftURL)/api/goods/explosive-goods-list";
        //APIKey
        let apiKey = HiTAOKEAPIKEYSWIFT;
        let apiSecret = HiTAOKEAPISECRETSWIFT;
        //Nonce：一个6位的随机数
        let nonceString = Int(arc4random_uniform(899999) + 100000);
        //Timer：毫秒级时间戳
        let timerString = Date().milliStamp;
        let needEncyptString = "appKey=\(apiKey)&timer=\(timerString)&nonce=\(nonceString)&key=\(apiSecret)";
        let encyptedString = needEncyptString.md5.uppercased()
        let params = ["signRan":encyptedString,"appKey":apiKey,"nonce":nonceString,"version":"v1.0.0","timer":timerString,"pageId":1,"pageSize":pageSize] as [String : Any];
        Alamofire.request(urlString, method:.get, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result{
            case .success(let json):
                for i in 0..<Int(JSON(json)["data"]["list"].count) {
                    let dataList:Dictionary = HiJsonStrHelper.convertDictJsonStr(jsonStr: "\(JSON(json)["data"]["list"][i])") as! [String : Any];
                    let taokeSonModel:HiTaokeSonModel = HiTaokeSonModel();
                    taokeSonModel.dtitle = dataList["dtitle"] as! String;
                    taokeSonModel.goodsId = dataList["goodsId"] as! String;
                    taokeSonModel.mainPic = dataList["mainPic"] as! String;
                    taokeSonModel.actualPrice = dataList["actualPrice"] as! Double;
                    taokeSonModel.itemLink = dataList["itemLink"] as! String;
                    taokeSonModels.append(taokeSonModel);
                }
                for _ in 0..<kindCount {
                    let taokeModel:HiTaokeModel = HiTaokeModel();
                    taokeModel.taokeSonModel = taokeSonModels;
                    taokeModels.append(taokeModel)
                }
                success(taokeModels);
                break
            case .failure(let error):
                failure(error);
                break
            }
        }
    }
}


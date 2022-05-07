//
//  HiTaokeSonModel.swift
//  MGMovie
//
//  Created by stone on 2020/12/18.
//  Copyright © 2020 Stone. All rights reserved.
//

import Foundation
import HandyJSON

class HiTaokeSonModel: HandyJSON  {
    //营销主图链接
    @objc var mainPic = ""
    //短标题
    @objc var dtitle = ""
    //券后价
    @objc var actualPrice:Double = 0.00;
    //商品淘宝链接
    @objc var itemLink = "";
    //商品淘宝链接
    @objc var goodsId = "";
    
    required init() {}
}


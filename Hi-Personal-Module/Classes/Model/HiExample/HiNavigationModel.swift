//
//  HiNavigationModel.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/5/7.
//

import Foundation
import HandyJSON

class HiNavigationModel: HandyJSON {
    var id: Int = 0
    var msg = [HiNavigationMsgModel]()
    var name: String?
    
    required init() {}
}

class HiNavigationMsgModel: HandyJSON {
    var data = [HiNavigationMsgDataModel]()
    var name: String?
    
    required init() {}
}

class HiNavigationMsgDataModel: HandyJSON {
    var id: Int = 0
    var name: String?
    
    required init() {}
}

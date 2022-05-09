//
//  HiCareModel.swift
//
//
//  Created by JSONConverter on 2022/05/09.
//  Copyright © 2022年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

struct HiCareModel:HandyJSON {
    var homePage = [HiCareHomePageModel]()
}

struct HiCareHomePageModel:HandyJSON {
    var childs = [HiCareHomePageChildsModel]()
    var clientType: String?
    var content: String?
    var grpId: Int = 0
    var grpStas: String?
    var grpType: String?
    var imgUrl: String?
    var key: String?
    var ver: String?
}

struct HiCareHomePageChildsModel:HandyJSON {
    var childs = [String]()
    var clientType: String?
    var content: String?
    var grpId: Int = 0
    var grpStas: String?
    var grpType: String?
    var imgUrl: String?
    var item: HiCareHomePageChildsItemModel?
    var key: String?
    var ver: String?
}

struct HiCareHomePageChildsItemModel:HandyJSON {
    var checkLevel: Int = 0
    var clientType: Int = 0
    var content: String?
    var imgUrl: String?
    var linkType: Int = 0
    var moduStas: Int = 0
    var subKey: String?
    var url: String?
}


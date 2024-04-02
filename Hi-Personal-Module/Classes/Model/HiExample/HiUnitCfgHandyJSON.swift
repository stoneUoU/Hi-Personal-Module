//
//  HiUnitCfgHandyJSON.swift
//
//
//  Created by JSONConverter on 2024/03/29.
//  Copyright © 2024年 JSONConverter. All rights reserved.
//

import Foundation
import HandyJSON

class HiUnitCfgHandyJSON: HandyJSON {
	var appVersion: HiUnitCfgHandyJSONAppVersion?
	var homeWindowNotice: HiUnitCfgHandyJSONHomeWindowNotice?
	var newCntrVer: HiUnitCfgHandyJSONNewCntrVer?
	var topList: HiUnitCfgHandyJSONTopList?

	required init() {}
}

class HiUnitCfgHandyJSONTopList: HandyJSON {
	var list = [HiUnitCfgHandyJSONTopListList]()

	required init() {}
}

class HiUnitCfgHandyJSONTopListList: HandyJSON {
	var bizCode: String?
	var newsId: String?
	var newsPkId: Int = 0
	var picUrl: String?
	var rid: String?
	var rlsDate: Int = 0
	var rlsDateStr: String?
	var stas: String?
	var summary: String?
	var title: String?
	var url: String?
	var visitCount: String?
	var visitCountUrl: String?

	required init() {}
}

class HiUnitCfgHandyJSONNewCntrVer: HandyJSON {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init() {}
}

class HiUnitCfgHandyJSONAppVersion: HandyJSON {
	var content: String?
	var newVersion: String?
	var newVersionSize: String?
	var sysType: String?
	var title: String?
	var updateState: String?
	var url: String?
	var version: String?

	required init() {}
}

class HiUnitCfgHandyJSONHomeWindowNotice: HandyJSON {
	var annoWay: String?
	var clikCont: String?
	var clikStas: String?
	var clikType: String?
	var clikUrl: String?
	var crterTime: Int = 0
	var invdTime: Int = 0
	var lginFlag: Bool = false
	var notcId: String?
	var notcInfo: String?
	var notcType: String?
	var popNotcTtl: String?
	var popUpFlag: Bool = false

	required init() {}
}

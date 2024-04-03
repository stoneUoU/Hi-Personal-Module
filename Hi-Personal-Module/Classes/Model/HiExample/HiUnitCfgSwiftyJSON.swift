//
//  HiUnitCfgSwiftyJSON.swift
//
//
//  Created by JSONConverter on 2024/03/29.
//  Copyright © 2024年 JSONConverter. All rights reserved.
//

import Foundation
import SwiftyJSON

class HiUnitCfgSwiftyJSON:NSObject {
	var appVersion: HiUnitCfgSwiftyJSONAppVersion
	var homeWindowNotice: HiUnitCfgSwiftyJSONHomeWindowNotice
	var newCntrVer: HiUnitCfgSwiftyJSONNewCntrVer
	var topList: HiUnitCfgSwiftyJSONTopList
    required init(json: JSON) {
		appVersion = HiUnitCfgSwiftyJSONAppVersion(json: json["appVersion"])
		homeWindowNotice = HiUnitCfgSwiftyJSONHomeWindowNotice(json: json["homeWindowNotice"])
		newCntrVer = HiUnitCfgSwiftyJSONNewCntrVer(json: json["newCntrVer"])
		topList = HiUnitCfgSwiftyJSONTopList(json: json["topList"])
	}
}

class HiUnitCfgSwiftyJSONAppVersion:NSObject {
	var content: String
	var newVersion: String
	var newVersionSize: String
	var sysType: String
	var title: String
	var updateState: String
	var url: String
	var version: String

	init(json: JSON) {
		content = json["content"].stringValue
		newVersion = json["newVersion"].stringValue
		newVersionSize = json["newVersionSize"].stringValue
		sysType = json["sysType"].stringValue
		title = json["title"].stringValue
		updateState = json["updateState"].stringValue
		url = json["url"].stringValue
		version = json["version"].stringValue
	}
}

class HiUnitCfgSwiftyJSONHomeWindowNotice:NSObject {
	var annoWay: String
	var clikCont: String
	var clikStas: String
	var clikType: String
	var clikUrl: String
	var crterTime: Int = 0
	var invdTime: Int = 0
	var lginFlag: Bool = false
	var notcId: String
	var notcInfo: String
	var notcType: String
	var popNotcTtl: String
	var popUpFlag: Bool = false

	init(json: JSON) {
		annoWay = json["annoWay"].stringValue
		clikCont = json["clikCont"].stringValue
		clikStas = json["clikStas"].stringValue
		clikType = json["clikType"].stringValue
		clikUrl = json["clikUrl"].stringValue
		crterTime = json["crterTime"].intValue
		invdTime = json["invdTime"].intValue
		lginFlag = json["lginFlag"].boolValue
		notcId = json["notcId"].stringValue
		notcInfo = json["notcInfo"].stringValue
		notcType = json["notcType"].stringValue
		popNotcTtl = json["popNotcTtl"].stringValue
		popUpFlag = json["popUpFlag"].boolValue
	}
}

class HiUnitCfgSwiftyJSONTopList:NSObject {
	var list = [HiUnitCfgSwiftyJSONTopListList]()

	init(json: JSON) {
		list = json["list"].arrayValue.compactMap({ HiUnitCfgSwiftyJSONTopListList(json: $0)})
	}
}

class HiUnitCfgSwiftyJSONTopListList:NSObject {
	var bizCode: String
	var newsId: String
	var newsPkId: Int = 0
	var picUrl: String
	var rid: String
	var rlsDate: Int = 0
	var rlsDateStr: String
	var stas: String
	var summary: String
	var title: String
	var url: String
	var visitCount: String
	var visitCountUrl: String

	init(json: JSON) {
		bizCode = json["bizCode"].stringValue
		newsId = json["newsId"].stringValue
		newsPkId = json["newsPkId"].intValue
		picUrl = json["picUrl"].stringValue
		rid = json["rid"].stringValue
		rlsDate = json["rlsDate"].intValue
		rlsDateStr = json["rlsDateStr"].stringValue
		stas = json["stas"].stringValue
		summary = json["summary"].stringValue
		title = json["title"].stringValue
		url = json["url"].stringValue
		visitCount = json["visitCount"].stringValue
		visitCountUrl = json["visitCountUrl"].stringValue
	}
}

class HiUnitCfgSwiftyJSONNewCntrVer:NSObject {
	var content: String
	var contractType: String
	var createTime: String
	var newVersion: Int = 0
	var title: String

	init(json: JSON) {
		content = json["content"].stringValue
		contractType = json["contractType"].stringValue
		createTime = json["createTime"].stringValue
		newVersion = json["newVersion"].intValue
		title = json["title"].stringValue
	}
}

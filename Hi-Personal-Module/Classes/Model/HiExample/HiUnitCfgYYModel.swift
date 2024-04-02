//
//  HiUnitCfgYYModel.swift
//
//
//  Created by JSONConverter on 2024/03/29.
//  Copyright © 2024年 JSONConverter. All rights reserved.
//

import Foundation
import YYModel

@objcMembers
class HiUnitCfgYYModel: NSObject, YYModel {
	var appVersion: HiUnitCfgYYModelAppVersion?
	var homeWindowNotice: HiUnitCfgYYModelHomeWindowNotice?
	var newCntrVer: HiUnitCfgYYModelNewCntrVer?
	var topList: HiUnitCfgYYModelTopList?
}

@objcMembers
class HiUnitCfgYYModelHomeWindowNotice: NSObject, YYModel {
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
}

@objcMembers
class HiUnitCfgYYModelTopList: NSObject, YYModel {
	var list = [HiUnitCfgYYModelTopListList]()

	static func modelContainerPropertyGenericClass() -> [String : Any]? {
		["list": HiUnitCfgYYModelTopListList.self]
	}
}

@objcMembers
class HiUnitCfgYYModelTopListList: NSObject, YYModel {
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
}

@objcMembers
class HiUnitCfgYYModelNewCntrVer: NSObject, YYModel {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?
}

@objcMembers
class HiUnitCfgYYModelAppVersion: NSObject, YYModel {
	var content: String?
	var newVersion: String?
	var newVersionSize: String?
	var sysType: String?
	var title: String?
	var updateState: String?
	var url: String?
	var version: String?
}

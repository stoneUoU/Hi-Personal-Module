//
//  HiUnitCfgKakaJSONModel.swift
//
//
//  Created by JSONConverter on 2024/04/03.
//  Copyright © 2024年 JSONConverter. All rights reserved.
//

import Foundation
import KakaJSON

class HiUnitCfgKakaJSONModel: Convertible {
	var appVersion: HiUnitCfgKakaJSONModelAppVersion?
	var newCntrVer: HiUnitCfgKakaJSONModelNewCntrVer?
	var topList: HiUnitCfgKakaJSONModelTopList?

	required init() {}
}

class HiUnitCfgKakaJSONModelNewCntrVer: Convertible {
	var content: String?
	var contractType: String?
	var createTime: String?
	var newVersion: Int = 0
	var title: String?

	required init() {}
}

class HiUnitCfgKakaJSONModelAppVersion: Convertible {
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

class HiUnitCfgKakaJSONModelTopList: Convertible {
	var list = [HiUnitCfgKakaJSONModelTopListList]()

	required init() {}
}

class HiUnitCfgKakaJSONModelTopListList: Convertible {
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

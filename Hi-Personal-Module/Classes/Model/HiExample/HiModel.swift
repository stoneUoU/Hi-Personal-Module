////
////  HiModel.swift
////  Hi-Personal-Module
////
////  Created by stone on 2022/5/7.
////

import UIKit
import HandyJSON

class HiModel: HandyJSON {
    
    var swfitCls = [String]()
    var type_id: Int = 0
    var type_name: String?
    var data = [HiModelData]()
    var news = [HiModelData]()
    var top_all = [HiModelData]()
    var top_hit = [HiModelData]()
    var top_score = [HiModelData]()
    
    func mapping(mapper: HelpingMapper) {
            // specify 'cat_id' field in json map to 'id' property in object
            mapper <<<
                self.swfitCls <-- "class"
        }
    
    required init() {}
}

class HiModelData: HandyJSON {
    var hit: Int = 0
    var id: Int = 0
    var img: String?
    var isMovie: Bool = false
    var name: String?
    var qingxidu: String?
    var score: String?
    var type_id: Int = 0
    var type_id_1: Int = 0
    var year: String?
    required init() {}
}

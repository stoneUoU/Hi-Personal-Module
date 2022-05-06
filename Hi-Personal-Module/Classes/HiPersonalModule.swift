//
//  HiPersonalModule.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/4/29.
//

import Foundation
import Hi_Router_Module

//MARK: - 模块A
public class HiPersonalModule: HiRouterModuleProtocol {
    public var module: String { "Hi_Personal_Module" }
    public var scheme: String { "personal" }
    public var pathDic: [String: String] {
        ["personal":"HiPersonalViewController"]
    }
    
    public class func registerPages() {
        HiPersonalModule().registerPages()
    }
}


/// 对自创建的 OC 类的使用
open class OCFileClass: NSObject {
    public var ocFile = OCFile()
}

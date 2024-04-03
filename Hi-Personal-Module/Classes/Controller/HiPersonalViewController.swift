//
//  HiPersonalViewController.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/4/28.
//

import UIKit
import SwiftyJSON
import HandyJSON
import Hi_Network_Module
import Hi_Helper_Module

class HiPersonalViewController:UIViewController {
    
    //MARK: LifeCycle
    deinit {
            
    }

    //视图初始化
    override func loadView() {
        super.loadView()
    }
        
    // 当加载视图结束时调用该方法
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white;
        self.setUI();
    }
        
    // 视图将要显示时调用该方法
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
        
    // 当视图已经显示时调用该方法
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
        
    // 当视图将要消失时调用该方法
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
        
    // 当时图已经消失时调用该方法
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
        
    // 当接收到内存警告时会执行这个方法
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    //MARK: Public Method
      
    //MARK: Private Method

    func setUI() {
        self.view.addSubview(self.personalView);
        self.setMas();
    }
        
    func setMas() {
        self.personalView.snp.makeConstraints { make in
            make.edges.equalTo(self.view);
        }
    }
        
    //MARK: lazy load
    lazy var personalView: HiPersonalView = {[weak self] in
      let personalView = HiPersonalView(frame:.zero)
        personalView.personalViewDelegate = self
        personalView.handle = { [weak self]  in
      }
      return personalView
    }()
}

//MARK: IB-Action
extension HiPersonalViewController {
    
}
//MARK: Notice
extension HiPersonalViewController {
    
}

//MARK: Delegate
extension HiPersonalViewController:HiPersonalViewDelegate {
    
    func toOperate(view: HiPersonalView) {
//        let oc = OCFileClass();
//        oc.ocFile.toFile();
        self.fetchDatas { boolean in
            if (boolean) {

            }
        };
//        self.fetchTaoke();
//        self.fetchJson();
//        self.fetchLog();
    }
    
    func fetchDatas(callback:@escaping (_ isBoolean:Bool)->()) {
        var params = Dictionary<String,Any>();
        params["contractVersionQueryDTO"] = ["contractType":4];
        params["noticeTypeParamDTO"] = [:];
        HiAPI.request(.fetchUnitCfg(params), success: { json in
//            HandyJSON
            let dataHandyJSON:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            if let handyJSON:HiUnitCfgHandyJSON = HiUnitCfgHandyJSON.deserialize(from: dataHandyJSON) {
                let dataHandyJSONs:[HiUnitCfgHandyJSONTopListList] = handyJSON.topList?.list ?? [];
                let dataHandyJSON:HiUnitCfgHandyJSONTopListList = dataHandyJSONs[0];
//                print(JSON(dataHandyJSON.toJSON()));
            }
            
//            SwiftyJSON
            let swiftyJSON:HiUnitCfgSwiftyJSON = HiUnitCfgSwiftyJSON.init(json: JSON(json)["data"]);
            let dataSwiftyJSONs:[HiUnitCfgSwiftyJSONTopListList] = swiftyJSON.topList.list;
            let dataSwiftyJSON:HiUnitCfgSwiftyJSONTopListList = dataSwiftyJSONs[0];
//            print(JSON(json)["data"]["appVersion"]);
            
            let yyModel:HiUnitCfgYYModel = HiUnitCfgYYModel.yy_model(with: JSON(json)["data"].rawValue as! [AnyHashable : Any])!;
            let dataYYModels:[HiUnitCfgYYModelTopListList] = yyModel.topList?.list ?? [];
            let dataYYModel:HiUnitCfgYYModelTopListList = dataYYModels[0];
//            print(yyModel.yy_modelToJSONString()!);
            
            let putJson:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            let kakaModel:HiUnitCfgKakaJSONModel = putJson.kj.model(HiUnitCfgKakaJSONModel.self)
            let dataKakaModels:[HiUnitCfgKakaJSONModelTopListList] = kakaModel.topList?.list ?? [];
            let dataKakaModel:HiUnitCfgKakaJSONModelTopListList = dataKakaModels[0];
//            print(kakaModel.kj.JSONString());
            
//            let putJson:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
            let objectMapperModel:HiUnitCfgObjectMapperModel = HiUnitCfgObjectMapperModel(JSON: putJson)!;
            let dataObjectMapperModels:[HiUnitCfgObjectMapperModelTopListList] = objectMapperModel.topList?.list ?? [];
            let dataObjectMapperModel:HiUnitCfgObjectMapperModelTopListList = dataObjectMapperModels[0];
            print(dataObjectMapperModel.toJSONString(prettyPrint: true)!);
            
            
            callback(true);
        }, error: { statusCode in
            callback(true);
        }, failure: { error in
            callback(true);
        })
    }
    
//    func fetchDatas(callback:@escaping (_ isBoolean:Bool)->()) {
//        var params = Dictionary<String,Any>();
//        params["type_id"] = 2;
//        params["order"] = "all";
//        HiAPI.request(.fetchHomeData(params), success: { json in
//
//            let data:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
//            if let hiModel:HiModel = HiModel.deserialize(from: data) {
//                print(JSON(hiModel.toJSON()))
//            }
//
//            callback(true);
//        }, error: { statusCode in
//            callback(true);
//        }, failure: { error in
//            callback(true);
//        })
//    }
    
//    func fetchDatas(callback:@escaping (_ isBoolean:Bool)->()) {
//        HiAPI.request(.fetchNavigationData(()), success: { json in
//
//            let data:[Any] = JSON(json).rawValue as! [Any];
//            if let hiNavigationModels = [HiNavigationModel].deserialize(from: data) {
//                hiNavigationModels.forEach({ (hiNavigationModel) in
//                    print(JSON(hiNavigationModel?.toJSON()));
//                })
//            }
//            callback(true);
//
//        }, error: { statusCode in
//            callback(true);
//        }, failure: { error in
//            callback(true);
//        })
//    }
    
//    func fetchDatas(callback:@escaping (_ isBoolean:Bool)->()) {
//        HiAPI.request(.fetchBaseInfo(()), success: { json in
//            if JSON(json)["code"] == 1 {
////                正确的方式：
////                let data:[String : Any] = JSON(json)["data"].rawValue as! [String : Any];
//                if let hiExampleModel:HiExampleModel = HiExampleModel.deserialize(from: "\(JSON(json)["data"])") {
//                    print("\(JSON(hiExampleModel.toJSON()))")
//                }
//            }
//            callback(true);
//        }, error: { statusCode in
//            callback(true);
//        }, failure: { error in
//            callback(true);
//        })
//    }
    
    func mergeRequest(_ id: String, page:Int = 1, order:String, _ success: @escaping ()->(), _ failure: @escaping (Error?)->()) {
        let group = DispatchGroup()
        let queue = DispatchQueue.global()
        queue.async(group: group, execute: {
            group.enter()
            self.fireRankingModels(id, order: order) {
                group.leave()
            } _: { (_: Error?) in
                group.leave()
            }
        })
        queue.async(group: group, execute: {
            group.enter()
            self.fireHomeModels(id, page: page) {
                group.leave()
            } _: { (_: Error?) in
                group.leave()
            }
        })
        group.notify(queue: queue) {
            DispatchQueue.main.async {
                success();
            }
        }
    }
    //请求主页主要数据
    func fireHomeModels(_ id: String, page:Int = 1,_ success: @escaping ()->(), _ failure: @escaping (Error?)->()) {
    }
    //请求排行版信息：
    func fireRankingModels(_ type_id: String, order:String,_ success: @escaping ()->(), _ failure: @escaping (Error?)->()) {
        
    }
}


extension HiPersonalViewController {
    
//    func fetchTaoke() {
//        DispatchQueue.global().async {
//            HiTaokeHelper.fetchData(pageId: 1, pageSize: 9, kindCount: 1) { [weak self] taokeModels in
//                DispatchQueue.main.async {
//                    taokeModels.forEach({ (taokeModel) in
//                        print(JSON(taokeModel.toJSON()));
//                    })
//                }
//            } _: { (_: Error?) in
//            }
//        }
//    }
    
    func fetchJson() {
//        let dict:Dictionary<AnyHashable,Any> = HiJsonLoadHelper.fetchJson(named: "HiMask", moduled: "Hi_Personal_Module");
//        print(HiJsonStrHelper.convertDictToJsonStr(dict: dict));
        
        let dict:Dictionary<String,Any> = HiJsonLoadHelper.fetchJson(named: "HiMask", moduled: "Hi_Personal_Module") as Dictionary<String, Any>;
        if let hiCareModel:HiCareModel = HiCareModel.deserialize(from: dict) {
            print(JSON(hiCareModel.toJSON()))
        }
    }
    
//    func fetchLog() {
//        HiLocalData.saveStore("年度费用明细查询");
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            print("store_____\(HiLocalData.getStore())");
//        }
//    }
}

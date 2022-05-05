//
//  HiPersonalViewController.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/4/28.
//

import UIKit

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
        self.view.backgroundColor = .green;
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
        super.viewWillDisappear(animated)
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
        personalView.backgroundColor = .red;
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
        
    }
}

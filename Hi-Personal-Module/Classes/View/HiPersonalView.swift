//
//  HiPersonalView.swift
//  Hi-Personal-Module
//
//  Created by stone on 2022/4/28.
//

import UIKit
import SnapKit
import Hi_Router_Module

typealias HiHandle = () -> Void

protocol HiPersonalViewDelegate: AnyObject {
    func toOperate(view:HiPersonalView)
}
class HiPersonalView: UIView {
    var handle: HiHandle?
    weak var personalViewDelegate : HiPersonalViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    //MARK: Public Method
    //MARK: Private Method
    //MARK: lazy load
    @objc lazy var excuteButton: UIButton = {
        let excuteButton = UIButton.init(type: UIButton.ButtonType.custom)
        excuteButton.setTitle("Hi-Personal-Module", for: UIControl.State.normal)
        excuteButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        excuteButton.setTitleColor(.black, for: .normal)
        excuteButton.layer.borderWidth = 0.5;
        excuteButton.layer.borderColor = UIColor.lightGray.cgColor;
        excuteButton.layer.cornerRadius = 22;
        excuteButton.layer.masksToBounds = true;
        excuteButton.addTarget(self, action: #selector(toExcute(_:)), for: .touchUpInside)
        return excuteButton;
    }()
    
}
    
//MARK: Public Method
extension HiPersonalView {
    func setUI() {
        self.addSubview(self.excuteButton)
        self.setMas()
    }
    func setMas() {
        self.excuteButton.snp.makeConstraints { make in
            make.center.equalTo(self);
            make.size.equalTo(CGSize.init(width: HiSCREENWIDTH - 32, height: 44));
        }
    }
}
 
//MARK: IB-Action
extension HiPersonalView {
    @objc func toExcute(_ sender: UIButton) {
        self.personalViewDelegate?.toOperate(view: self);
    }
}
    
//MARK: Notice
extension HiPersonalView {
    
}
    
//MARK: Delegate
extension HiPersonalView {

}

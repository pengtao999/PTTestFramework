//
//  TotalView.swift
//  swift练习
//
//  Created by zb on 2018/3/26.
//  Copyright © 2018年 zb. All rights reserved.
//

import UIKit


class TotalView: UIView {
    lazy var titleLabel : UILabel? = UILabel()
    lazy var valueLabel : UILabel? = UILabel()
   
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.backgroundColor = UIColor.white
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //titleView
   private func setUI() {
        
        //MARK: addView
        self.addSubview(self.titleLabel!)
        self.addSubview(self.valueLabel!)
        
       //MARK: 设置控件的属性
       if  SIZESCALE {
           self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
           self.valueLabel?.font = UIFont.systemFont(ofSize: 12)
        }else{
           self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
           self.valueLabel?.font = UIFont.systemFont(ofSize: 12)
        }
        self.titleLabel?.text = "title"
        self.valueLabel?.text = "value"
        self.titleLabel?.textColor = UIColor.gray
        self.valueLabel?.textColor = UIColor.red
        self.titleLabel?.backgroundColor = UIColor.clear

        //MARK: 布局
        self.titleLabel?.snp.makeConstraints({ (make) in
            make.top.equalTo(self.snp.top).offset(5)
            make.left.equalTo(self.snp.left).offset(0)
             make.bottom.equalTo(self.snp.bottom).offset(-5)
        })
        self.valueLabel?.snp.makeConstraints({ (make) in
            make.top.equalTo(self.snp.top).offset(5)
            make.right.equalTo(self).offset(0)
            make.bottom.equalTo(self.snp.bottom).offset(-5)
           // make.left.equalTo(self.titleLabel!).offset(0)
        })
    }
    
    //MARK: 对外数据调用接口
    func setTitleAndValue(title : NSString, value : NSString) {
        self.titleLabel?.text = title as String
        self.valueLabel?.text = value as String
    }
}



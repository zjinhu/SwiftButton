//
//  ViewController.swift
//  SwiftButton
//
//  Created by iOS on 2020/4/30.
//  Copyright © 2020 36kr. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let but = SwiftButton.init(.imageButtonTypeTop)
        but.backgroundColor = .orange
        but.title = "按钮1按钮1按钮1按钮1按钮1按钮1按钮1按钮1按钮1"
        but.image = UIImage.init(named: "image1")
        but.titleLabel.textColor = .cyan
        but.titleLabel.font = UIFont.systemFont(ofSize: 13)
        self.view.addSubview(but)
        but.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(80)
        }
        
        let btn2 = SwiftButton.init(.imageButtonTypeLeft)
        btn2.backgroundColor = .yellow
        btn2.image = UIImage.init(named: "image3")
        btn2.title = "按钮2";
        btn2.titleLabel.textColor = .red
        btn2.titleLabel.font = UIFont.systemFont(ofSize: 13)
        btn2.titleLabel.textAlignment = .left
        self.view.addSubview(btn2)
        btn2.snp.makeConstraints { (make) in
            make.top.equalTo(but.snp.bottom).offset(20)
            make.left.equalTo(but.snp.left).offset(0)
        }
        
        let btn3 = SwiftButton.init(.imageButtonTypeLeft,marginArr: [0])
        btn3.backgroundColor = .cyan
        btn3.title = "按钮3"
        btn3.titleLabel.textColor = .red
        btn3.titleLabel.font = UIFont.systemFont(ofSize: 13)
        btn3.titleLabel.textAlignment = .left
        self.view.addSubview(btn3)
        btn3.snp.makeConstraints { (make) in
            make.top.equalTo(but.snp.bottom).offset(20)
            make.left.equalTo(btn2.snp.right).offset(20)
        }
        
        let btn4 = SwiftButton.init(.imageButtonTypeLeft,marginArr: [0])
        btn4.backgroundColor = .gray
        btn4.image = UIImage.init(named: "image3")
        self.view.addSubview(btn4)
        btn4.snp.makeConstraints { (make) in
            make.top.equalTo(but.snp.bottom).offset(20)
            make.left.equalTo(btn3.snp.right).offset(20)
        }
        
        let btn5 = SwiftButton.init(.imageButtonTypeLeft,marginArr: [10,20,5])
        btn5.setImage(normal: UIImage.init(named: "image1")!, highLight: UIImage.init(named: "image3")!)
        btn5.setTitleColor(normal: .red, highLight: .green)
        btn5.setLayerColor(normal: .purple, highLight: .black)
        btn5.title = "123123"
        btn5.titleLabel.textColor = .red
        btn5.titleLabel.font = UIFont.systemFont(ofSize: 13)
        btn5.titleLabel.textAlignment = .left
        btn5.layer.borderWidth = 2
        
        self.view.addSubview(btn5)
        btn5.snp.makeConstraints { (make) in
            make.top.equalTo(btn2.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(10)
        }
        
        let btn6 = SwiftButton.init(.imageButtonTypeLeft,marginArr: [5,10])
        btn6.backgroundColor = .gray
        btn6.image = UIImage.init(named: "image3")
        btn6.title = "123123"
        btn6.titleLabel.textColor = .red
        btn6.titleLabel.font = UIFont.systemFont(ofSize: 13)
        btn6.titleLabel.textAlignment = .left
        self.view.addSubview(btn6)
        btn6.snp.makeConstraints { (make) in
            make.top.equalTo(btn5.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(10)
            make.width.height.equalTo(100);
        }
        
        btn6.handleControlEvent(.touchUpInside) { (btn) in
            print(btn.title as Any)
        }
    }
    
}



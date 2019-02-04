//
//  ViewController.swift
//  Singleton
//
//  Created by 益田英知 on 2019/02/04.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        print(DataManager.sharedInstance.userName)
    }

}

final class DataManager {

    //  初回アクセスのタイミングで初期化
    static let sharedInstance = DataManager()
    
    var userName: String

    // 外部からのインスタンス生成を禁止
    private init() {
        userName = "user"
    }
    
}

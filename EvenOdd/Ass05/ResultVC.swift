//
//  ResultVC.swift
//  Ass05
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    var ans = ""
    private let label:UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.text = ""
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        self.view.backgroundColor = .black
        title = "Result Of EVEN & ODD"
        label.text = ans
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        label.frame = CGRect(x: 20, y: 370, width: 200, height: 50)
    }
}

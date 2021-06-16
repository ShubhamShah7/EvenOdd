//
//  ViewController.swift
//  Ass05
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let textbox : UITextField = {
       let txt = UITextField()
        txt.backgroundColor = .yellow
        txt.layer.cornerRadius = 20
        txt.textAlignment = .center
        txt.borderStyle = .roundedRect
        txt.attributedPlaceholder = NSAttributedString(string: "Enter Number", attributes: [NSAttributedString.Key.foregroundColor : UIColor.red])
        return txt
    }()
    
    private let button:UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .green
        btn.layer.cornerRadius = 20
        btn.setTitle("Check Even/Odd", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(checkAns), for: .touchUpInside)
        return btn
    }()
    
    @objc func checkAns()
    {
        let temp = textbox.text!
        var result = ""
        if (Int(temp) != nil)
        {
            if(Int(temp)!%2 == 0)
            {
                result = "Even Number"
            } else {
                result = "Odd Number"
            }
            print(result)
            let vc = ResultVC()
            vc.ans = result
            navigationController?.pushViewController(vc, animated: true)
        } else {
            let alert = UIAlertController(title: "Warning", message: "Please Enter Only Number", preferredStyle: .alert)
            textbox.text = ""
            alert.addAction(UIAlertAction(title: "OK", style: .destructive))
            self.present(alert,animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textbox)
        view.addSubview(button)
        self.view.backgroundColor = .red
    }
    
    override func viewDidLayoutSubviews() {
        textbox.frame = CGRect(x:85, y:250, width:200, height: 50)
        button.frame = CGRect(x:85,y:310, width: 200, height: 60)
    }
}


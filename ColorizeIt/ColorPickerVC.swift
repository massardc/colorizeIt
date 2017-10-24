//
//  ColorPickerVC.swift
//  ColorizeIt
//
//  Created by Clément on 24/10/2017.
//  Copyright © 2017 ClementM. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colorBtnPressed(sender: UIButton) {
        if delegate != nil {
            delegate?.userChose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }

}

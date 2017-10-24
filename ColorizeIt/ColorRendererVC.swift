//
//  ViewController.swift
//  ColorizeIt
//
//  Created by Clément on 24/10/2017.
//  Copyright © 2017 ClementM. All rights reserved.
//

import UIKit

class ColorRendererVC: UIViewController, ColorTransferDelegate {
    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userChose(color: UIColor, withName colorName: String) {
        colorNameLbl.text = colorName
        view.backgroundColor = color
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toColorPickerSegue" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
}


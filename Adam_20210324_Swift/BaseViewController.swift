//
//  BaseViewController.swift
//  Adam_20210324_Swift
//
//  Created by Adam on 2021/3/24.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configEvent()
        configUI()
    }
    func configEvent() {
        
    }
    func configUI() {
        self.view.backgroundColor = UIColor.white
    }
}

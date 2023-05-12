//
//  Bai1Form2ViewController.swift
//  BaiTapUIBuoi9
//
//  Created by Trương Duy Tân on 12/05/2023.
//

import UIKit

class Bai1Form2ViewController: UIViewController {

    var heightValue:Int = 0
    var stepperWeightValue: Int = 0
    var stepperAgeValue: Int = 0
    @IBOutlet weak var lblTrangThai: UILabel!
    
    @IBOutlet weak var lblChiSo: UILabel!
    
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var btnForm2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        lblChiSo.text = "\(stepperWeightValue/(heightValue * heightValue))"
//        print(heightValue)
//        print(stepperWeightValue)
        print("man2 \(heightValue) \(stepperWeightValue) \(stepperAgeValue)")
        setChiSo = heightValue
        lblChiSo.text = "\(stepperWeightValue)"
        
    }
    

    

}

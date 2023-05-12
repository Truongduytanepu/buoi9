//
//  Bai1ViewController.swift
//  BaiTapUIBuoi9
//
//  Created by Trương Duy Tân on 12/05/2023.
//

import UIKit

class Bai1ViewController: UIViewController {
    @IBOutlet weak var Male: UIView!
    @IBOutlet weak var Female: UIView!
    
    @IBOutlet weak var lblHeight: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var stepperWeight: UIStepper!
    
    @IBOutlet weak var stepperAge: UIStepper!
    
    @IBOutlet weak var Height: UIView!
    @IBOutlet weak var Weight: UIView!
    @IBOutlet weak var Age: UIView!
    
    @IBOutlet weak var calculateButton: UIButton!
    var heightValue: Int = 0
    var weightValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Female.tag = 1
        Male.tag = 2
        heightSlider.value = 0
        stepperWeight.value = 0
        stepperAge.value = 0
        setUI()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        
        let touch = touches.first
        if touch?.view?.tag == 1 {
            Female.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.23, alpha: 1.00)
            Male.backgroundColor = UIColor(red: 0.21, green: 0.21, blue: 0.27, alpha: 1.00)
        }
        if touch?.view?.tag == 2 {
                    Male.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.23, alpha: 1.00)
                Female.backgroundColor = UIColor(red: 0.21, green: 0.21, blue: 0.27, alpha: 1.00)
        }

        
        
    }
    
    @IBAction func onChangeHeight(_ sender: UISlider) {

        
        lblHeight.text = "\(Int(heightSlider.value))"
        heightValue = Int(heightSlider.value)
    }
    
    
    @IBAction func onChangeValueWeight(_ sender: UIStepper) {
        lblWeight.text = "\(Int(stepperWeight.value))"
        weightValue = Int(stepperWeight.value)
    }
    
    @IBAction func onChangeValueAge(_ sender: UIStepper) {
        lblAge.text = "\(Int(stepperAge.value))"
    }
    
    func setUI(){
        Male.layer.cornerRadius = 5
        Female.layer.cornerRadius = 5
        Height.layer.cornerRadius = 5
        Weight.layer.cornerRadius = 5
        Age.layer.cornerRadius = 5
        calculateButton.layer.cornerRadius = 5
//        lblHeight.center = CGPoint(x: self.view.frame.width/2 - 10, y: Height.frame.height - 120)
    }
    
    @IBAction func GotoForm2(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //b2; khởi tạo màn
        let firstVC = mainStoryboard.instantiateViewController(withIdentifier: "Bai1Form2ViewController") as! Bai1Form2ViewController
        print("\(heightSlider.value) \(stepperWeight.value) \(stepperAge.value)")
        firstVC.heightValue = Int(heightSlider.value)
        firstVC.stepperWeightValue = Int(stepperWeight.value)
        firstVC.stepperAgeValue = Int(stepperAge.value)
        firstVC.modalPresentationStyle = .fullScreen
        self.present(firstVC, animated: true)
    }
    
   

}

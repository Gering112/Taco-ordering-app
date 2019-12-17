//
//  ViewController.swift
//  hw#3 new
//
//  Created by Gering Dong on 12/7/18.
//  Copyright © 2018 Gering Dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    

    

    @IBOutlet weak var nameBox: UITextField!
    @IBOutlet weak var chickeTaco: UIImageView!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if (segmentOutlet.selectedSegmentIndex == 0){
            print("Chicken")
            chickeTaco.image = UIImage(named: "chickentaco")
            
            
        }else if (segmentOutlet.selectedSegmentIndex == 1){
            print("Beef")
            chickeTaco.image = UIImage(named: "taco")
        }
        
    }
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    
    
    @IBOutlet weak var numOfQuantity: UILabel!
    @IBAction func quantity(_ sender: UIStepper) {
        numOfQuantity.text = String(Int(sender.value))
        
        
    
    }
    
    @IBOutlet weak var GuacOutlet: UISwitch!
    
    
    @IBAction func placeOrder(_ sender: UIButton) {
//        alert(title: "Do you want to place this order?", message: "hi")
//
//
//    }
    
    
    
        
        
        let defaultAction = UIAlertAction(title: "Yes", style: .default) { (action) in print ("confirmed")
        
        var message = "Hello \(self.nameBox.text!), you've placed an order of " + self.segmentOutlet.titleForSegment(at: self.segmentOutlet.selectedSegmentIndex)! + " taco that is "
        if self.sliderOutlet.value <= 3 {
            message.append("not at all")
        }
        else if self.sliderOutlet.value < 7 {
            message.append("somewhat")
        }
        else {
            message.append("extremely")
        }
        message.append(" spicy with " + self.numOfQuantity.text! + " oz of meat and ")
        if self.GuacOutlet.isOn == false {
            message.append("no ")
        }
        message.append("guacamole.")
        
        let newAlert = UIAlertController(title: "Order Placed!", message: message, preferredStyle: .alert)
        newAlert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(newAlert, animated: true)
        }
        
            
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        let alert = UIAlertController(title: "Do you want to place this order?", message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true)
        }


        
        
    }

    
    
    
    




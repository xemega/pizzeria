//
//  ViewControllerQueso.swift
//  Pizzeria
//
//  Created by César Méndez on 11/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import UIKit

class ViewControllerQueso: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let vValores = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var vMasa = ""
    var vTamanio = ""
    var vQueso = ""

    @IBOutlet weak var queso: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        queso.dataSource = self
        queso.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return vValores.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return vValores[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        vQueso = vValores[row]
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if vQueso==""
        {
            vQueso="Mozarela"
        }
        
        let sigvista = segue.destinationViewController as! ViewControllerIngred
       
        sigvista.vTamanio = vTamanio
        sigvista.vQueso = vQueso
        sigvista.vMasa = vMasa
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

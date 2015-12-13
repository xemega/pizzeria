//
//  ViewController.swift
//  Pizzeria
//
//  Created by César Méndez on 11/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var tamanio: UIPickerView!
    let vValores = ["Chica","Mediana","Grande"]
    var vTamanio = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tamanio.dataSource = self
        tamanio.delegate = self
        
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
        vTamanio = vValores[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
         if vTamanio==""
         {
            vTamanio="Chica"
         }
        
        let sigvista = segue.destinationViewController as! ViewControllerMasa
        sigvista.vTamanio=vTamanio
        
    }

}


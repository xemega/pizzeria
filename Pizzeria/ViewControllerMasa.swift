//
//  ViewControllerMasa.swift
//  Pizzeria
//
//  Created by César Méndez on 11/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import UIKit

class ViewControllerMasa: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate  {

    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var masa: UIPickerView!
    
    
    let vValores = ["Delgada","Crujiente","Gruesa"]
    var vMasa = ""
    var vTamanio = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        masa.dataSource = self
        masa.delegate = self

        // Do any additional setup after loading the view.
              
    }
    
    override func viewWillAppear(animated: Bool) {
        //lblMasa.text = vTamanio
        
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
        vMasa = vValores[row]
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if vMasa==""
        {
            vMasa="Delgada"
        }
        
        let sigvista = segue.destinationViewController as! ViewControllerQueso
        sigvista.vTamanio=vTamanio
        sigvista.vMasa=vMasa
        
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

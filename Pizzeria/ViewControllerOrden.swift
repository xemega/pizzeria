//
//  ViewControllerOrden.swift
//  Pizzeria
//
//  Created by César Méndez on 12/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import UIKit

class ViewControllerOrden: UIViewController {
    var vOrden = ""

    @IBOutlet weak var orden: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        orden.text=vOrden

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

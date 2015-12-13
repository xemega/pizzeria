//
//  ViewControllerIngre.swift
//  Pizzeria
//
//  Created by César Méndez on 12/12/15.
//  Copyright © 2015 César Méndez. All rights reserved.
//

import UIKit

class ViewControllerIngre: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var lastSelectedIndexPath = NSIndexPath(forRow: -1, inSection: 0)
    var datos = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Anchoa"]
    var seleccion = [""]
    
    var vMasa = ""
    var vTamanio = ""
    var vQueso = ""
    
    
  
    @IBOutlet weak var ingredientes: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientes.dataSource = self
        ingredientes.delegate = self
        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datos.count
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
       
        cell.textLabel!.text = datos[indexPath.row]
        
        
        if cell.selected
        {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        
        return cell
    }
    
    
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        let valorcelda = cell?.textLabel?.text
        
        
        
        if cell!.selected == true
        {
            
            
            if seleccion.count <= 5
            {
                cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
                
                seleccion.insert(valorcelda!, atIndex: 0)
                
                
                
            }
            else
            {
                cell!.accessoryType = UITableViewCellAccessoryType.None
                
                let alertController = UIAlertController(title: "Aviso", message:
                    "Ya seleccionó 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
        else
        {
            cell!.accessoryType = UITableViewCellAccessoryType.None
        }
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigvista = segue.destinationViewController as! ViewControllerOrden
        //var vIngre = ""
        
       /* if seleccion.count == 0
        {
            seleccion.insert("Jamón", atIndex: 0)
        } */
        
      /*      for n in seleccion
            {
                vIngre = vIngre  + " - " + n + " \n "
            } */
        
        
        sigvista.vOrden = " Masa: \(vMasa) \n Tamaño: \(vTamanio) \n Queso: \(vQueso) \n Ingredientes: \n "
        
    
    }
    
    

  

}

//
//  Ingredientes.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {
    var tipoIngredientes = DatosPizza (p: "", m: "", q: "", i: "")

    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! DatosPizza
        tipoIngredientes.tamanoPi = c.tamanoPi
        tipoIngredientes.tipoMasa = c.tipoMasa
        tipoIngredientes.tipoQueso = c.tipoQueso
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    @IBAction func elijaIngredientes(value: Float) {
        if value == 0{
            tipoIngredientes.ingredientes = "Elija Su Ingrediente"
        }
        if value == 1{
            tipoIngredientes.ingredientes = "Jamon"
        }
        if value == 2{
            tipoIngredientes.ingredientes = "Pepperoni"
        }
        if value == 3{
            tipoIngredientes.ingredientes = "Salchicha"
        }
        ingredientes.setText(tipoIngredientes.ingredientes)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func siguiente() {
        pushControllerWithName("vistaFinal", context: tipoIngredientes)
    }
    

}

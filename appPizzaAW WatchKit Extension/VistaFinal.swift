//
//  VistaFinal.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit
import Foundation


class VistaFinal: WKInterfaceController {
    
    var finPizza = DatosPizza (p: "", m: "", q: "", i: "")
    
    @IBOutlet var labelTamanoPizza: WKInterfaceLabel!
    
    @IBOutlet var labelTipoMasa: WKInterfaceLabel!
    
    @IBOutlet var labelTipoQueso: WKInterfaceLabel!
    
    @IBOutlet var labelIngredientes: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! DatosPizza
        
        finPizza.tamanoPi = c.tamanoPi
        finPizza.tipoMasa = c.tipoMasa
        finPizza.tipoQueso = c.tipoQueso
        finPizza.ingredientes = c.ingredientes
        
        labelTamanoPizza.setText(finPizza.tamanoPi)
        labelTipoMasa.setText(finPizza.tipoMasa)
        labelTipoQueso.setText(finPizza.tipoQueso)
        labelIngredientes.setText(finPizza.ingredientes)
        
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

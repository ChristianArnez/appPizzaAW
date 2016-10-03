//
//  TipoDeQueso.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit
import Foundation


class TipoDeQueso: WKInterfaceController {
  
    var datosTipoQueso = DatosPizza (p: "", m: "", q: "", i: "")
    
    @IBOutlet var datoTipoDeQueso: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! DatosPizza
        
        datosTipoQueso.tamanoPi = c.tamanoPi
        datosTipoQueso.tipoMasa = c.tipoMasa
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    @IBAction func elijaSuQueso(value: Float) {
        if value == 0{
            datosTipoQueso.tipoQueso = "Elija Su Queso"
        }
        if value == 1{
            datosTipoQueso.tipoQueso = "Mozarela"
        }
        if value == 2{
            datosTipoQueso.tipoQueso = "Cheddar"
        }
        if value == 3{
            datosTipoQueso.tipoQueso = "Parmesano"
        }
        if value == 4{
            datosTipoQueso.tipoQueso = "Sin Queso"
        }
        datoTipoDeQueso.setText(String(datosTipoQueso.tipoQueso))
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func siguiente() {
        pushControllerWithName("vistaIngredientes", context: datosTipoQueso)
    }
}

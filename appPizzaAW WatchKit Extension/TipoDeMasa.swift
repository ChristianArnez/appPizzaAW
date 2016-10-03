//
//  TipoDeMasa.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit
import Foundation


class TipoDeMasa: WKInterfaceController {
    var datosTipoMasa = DatosPizza (p: "", m: "", q: "", i: "")
    
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! DatosPizza
        
        datosTipoMasa.tamanoPi = c.tamanoPi
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func tiposDeMasa(value: Float) {
        if value == 0{
            datosTipoMasa.tipoMasa = "No Hay Masa"
        }
        if value == 1{
            datosTipoMasa.tipoMasa = "Delgada"
        }
        if value == 2{
            datosTipoMasa.tipoMasa = "Crujiente"
        }
        if value == 3{
            datosTipoMasa.tipoMasa = "Gruesa"
        }
        tipoMasa.setText(String(datosTipoMasa.tipoMasa))
        
        
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func siguiente() {
        pushControllerWithName("vistaTipoQueso", context: datosTipoMasa)
    }

}

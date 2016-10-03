//
//  TamanoPizza.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit
import Foundation


class TamanoPizza: WKInterfaceController {
    var datosTamanoPizza = DatosPizza (p: "", m: "", q: "", i: "")
    @IBOutlet var tamanoPizza: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    @IBAction func seleccionTamano(value: Float) {
        
        if value==0{
            datosTamanoPizza.tamanoPi="No Eligio Tamano"
        }
        if value==1{
            datosTamanoPizza.tamanoPi="chica"
        }
        if value==2{
            datosTamanoPizza.tamanoPi="mediana"
        }
        if value==3{
            datosTamanoPizza.tamanoPi="grande"
        }
        
        tamanoPizza.setText(String(datosTamanoPizza.tamanoPi))
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func siguienteVistaTipoMasa() {
        pushControllerWithName("vistaTipoMasa", context: datosTamanoPizza)
    }

}

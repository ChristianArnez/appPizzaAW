//
//  DatosPizza.swift
//  appPizzaAW
//
//  Created by Christian Arnez on 10/2/16.
//  Copyright © 2016 Christian Arnez. All rights reserved.
//

import WatchKit

class DatosPizza: NSObject {
    var tamanoPi:String = ""
    var tipoMasa:String = ""
    var tipoQueso:String = ""
    var ingredientes:String = ""
    
    init(p:String,m:String,q:String,i:String) {
        
        tamanoPi=p
        tipoMasa=m
        tipoQueso=q
        ingredientes=i
        
    }

}

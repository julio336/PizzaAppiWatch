//
//  pizzaPersonalizada.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit

class pizzaPersonalizada: NSObject {

    var size = []
    var sizeSelected:String = ""
    var tipoMasa = []
    var tipoMasaSelected:String = ""
    var tipoQueso = []
    var tipoQuesoSelected:String = ""
    var ingredienteExtra = []
    
    override init(){
        size = ["Chica", "Mediana", "Grande"]
        tipoMasa = ["Delgada", "Crujiente", "Gruesa"]
        tipoQueso = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
        ingredienteExtra = []
    }
    

}

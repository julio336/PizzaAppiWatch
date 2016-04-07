//
//  pasoCincoInterfaceController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 06/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class pasoCincoInterfaceController: WKInterfaceController {
    var p5 = pizzaPersonalizada()
    
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    @IBOutlet var masaLabel: WKInterfaceLabel!

    @IBOutlet var quesoLabel: WKInterfaceLabel!
    
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        p5 = context as! pizzaPersonalizada
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        sizeLabel.setText(p5.sizeSelected)
        masaLabel.setText(p5.tipoMasaSelected)
        quesoLabel.setText(p5.tipoQuesoSelected)
        let tempString = p5.ingredienteExtra as NSArray as! [String]
        let multiLineString = tempString.joinWithSeparator(", ")
        ingredientesLabel.setText(multiLineString)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pasoSeisAction() {
        
        
    }

}

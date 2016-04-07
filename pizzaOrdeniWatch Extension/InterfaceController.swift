//
//  InterfaceController.swift
//  pizzaOrdeniWatch Extension
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func pasoUnoAction() {
        let p = pizzaPersonalizada()
        pushControllerWithName("paso1", context: p)
        
    }
}

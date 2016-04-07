//
//  pasoTresInterfaceController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class pasoTresInterfaceController: WKInterfaceController {
    var p3 = pizzaPersonalizada()
    var quesoType = []
    
    @IBOutlet var tipoQuesoLabel: WKInterfaceLabel!
    
    @IBOutlet var quesoPicker: WKInterfacePicker!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        p3 = context as! pizzaPersonalizada
        print(p3.tipoMasaSelected)
        quesoType = p3.tipoQueso
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var pickerItems: [WKPickerItem] = []
        for i in 0...quesoType.count-1 {
            let item = WKPickerItem()
            item.title = quesoType[i] as? String
            pickerItems.append(item)
        }
        quesoPicker.setItems(pickerItems)
        tipoQuesoLabel.setText(quesoType[0] as? String)
        p3.tipoQuesoSelected = quesoType[0] as! String
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func quesoPickerAction(value: Int) {
        tipoQuesoLabel.setText(quesoType[value] as? String)
        p3.tipoQuesoSelected = quesoType[value] as! String
        
    }
    
    @IBAction func pasoCuatroAction() {
        pushControllerWithName("paso4", context: p3)
    }
    
}

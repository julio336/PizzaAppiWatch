//
//  pasoDosInterfaceController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class pasoDosInterfaceController: WKInterfaceController {
    var p2 = pizzaPersonalizada()
    var masaType = []
    
    @IBOutlet var tipoMasaLabel: WKInterfaceLabel!
    
    @IBOutlet var masaPicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        p2 = context as! pizzaPersonalizada
        print(p2.sizeSelected)
        masaType = p2.tipoMasa
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var pickerItems: [WKPickerItem] = []
        for i in 0...masaType.count-1 {
            let item = WKPickerItem()
            item.title = masaType[i] as? String
            pickerItems.append(item)
        }
        masaPicker.setItems(pickerItems)
        tipoMasaLabel.setText(masaType[0] as? String)
        p2.tipoMasaSelected = masaType[0] as! String
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerAction(value: Int) {
        tipoMasaLabel.setText(masaType[value] as? String)
        p2.tipoMasaSelected = masaType[value] as! String
        
    }
    
    @IBAction func pasoTresAction() {
        pushControllerWithName("paso3", context: p2)
        
    }
    
    
    

}

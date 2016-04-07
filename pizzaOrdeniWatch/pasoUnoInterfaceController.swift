//
//  pasoUnoInterfaceController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class pasoUnoInterfaceController: WKInterfaceController {
    var sizes = []
    var p = pizzaPersonalizada()
    
    @IBOutlet var sizePizzaPicker: WKInterfacePicker!
    
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        p = context as! pizzaPersonalizada
        sizes = p.size
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        //fill picker with Pizza Size
        var pickerItems: [WKPickerItem] = []
        for i in 0...sizes.count-1 {
            let item = WKPickerItem()
            item.title = sizes[i] as? String
            pickerItems.append(item)
        }
        sizePizzaPicker.setItems(pickerItems)
        sizeLabel.setText(sizes[0] as? String)
        p.sizeSelected = sizes[0] as! String

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerAction(value: Int) {
        sizeLabel.setText(sizes[value] as? String)
        p.sizeSelected = sizes[value] as! String
    }
    
    
    @IBAction func pasoDosAction() {
        pushControllerWithName("paso2", context: p)
        
    }
    
    

}

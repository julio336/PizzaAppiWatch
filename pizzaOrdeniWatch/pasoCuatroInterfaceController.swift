//
//  pasoCuatroInterfaceController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 04/04/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import WatchKit
import Foundation


class pasoCuatroInterfaceController: WKInterfaceController {
    var p4 = pizzaPersonalizada()
    var valorSwitch = true
    var arr = [String]()

    
    @IBOutlet var paso5Button: WKInterfaceButton!
    
    //ingredients Outlets
    
    @IBOutlet var jamonSwitch: WKInterfaceSwitch!
    
    @IBOutlet var pepperoniSwitch: WKInterfaceSwitch!
    
    @IBOutlet var cebollaSwitch: WKInterfaceSwitch!
    
    @IBOutlet var pepperSwitch: WKInterfaceSwitch!
    
    @IBOutlet var pavoSwitch: WKInterfaceSwitch!
    
    @IBOutlet var salamiSwitch: WKInterfaceSwitch!
    ////////////////////////////
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        p4 = context as! pizzaPersonalizada
        print(p4.tipoQuesoSelected)
        checkExtraIngrediente()

        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        checkExtraIngrediente()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func checkExtraIngrediente() -> Bool {

        if p4.ingredienteExtra.count > 0 && p4.ingredienteExtra.count < 6 {
            paso5Button.setEnabled(true)
            return true
        }else{
            paso5Button.setEnabled(false)
            return false
        }
        
    }
    
    
    @IBAction func jamonAction(value: Bool) {
            valorSwitch = value
            if valorSwitch == false {
                jamonSwitch.setOn(false)
                let index = arr.indexOf("Jamon")
                arr.removeAtIndex(index!)
                p4.ingredienteExtra = arr
                print("Arreglo: \(arr)")
                print(p4.ingredienteExtra.count)
                checkExtraIngrediente()
            } else {
                jamonSwitch.setOn(true)
                arr.insert("Jamon", atIndex: 0)
                print(arr)
                p4.ingredienteExtra = arr
                print(p4.ingredienteExtra.count)
                checkExtraIngrediente()
            }
        
    }
    
    
    @IBAction func pepperoniAction(value: Bool) {
        valorSwitch = value
        if valorSwitch == false {
            pepperoniSwitch.setOn(false)
            let index = arr.indexOf("Pepperoni")
            arr.removeAtIndex(index!)
            p4.ingredienteExtra = arr
            print("Arreglo: \(arr)")
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        } else {
            pepperoniSwitch.setOn(true)
            arr.insert("Pepperoni", atIndex: 0)
            print(arr)
            p4.ingredienteExtra = arr
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        }

    }
    
    @IBAction func cebollaAction(value: Bool) {
        valorSwitch = value
        if valorSwitch == false {
            cebollaSwitch.setOn(false)
            let index = arr.indexOf("Cebolla")
            arr.removeAtIndex(index!)
            p4.ingredienteExtra = arr
            print("Arreglo: \(arr)")
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        } else {
            cebollaSwitch.setOn(true)
            arr.insert("Cebolla", atIndex: 0)
            print(arr)
            p4.ingredienteExtra = arr
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        }

    }
    
    
    @IBAction func pepperAction(value: Bool) {
        valorSwitch = value
        if valorSwitch == false {
            pepperSwitch.setOn(false)
            let index = arr.indexOf("Pimiento")
            arr.removeAtIndex(index!)
            p4.ingredienteExtra = arr
            print("Arreglo: \(arr)")
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        } else {
            pepperSwitch.setOn(true)
            arr.insert("Pimiento", atIndex: 0)
            print(arr)
            p4.ingredienteExtra = arr
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        }

        
    }
    
    @IBAction func pavoAction(value: Bool) {
        
        valorSwitch = value
        if valorSwitch == false {
            pavoSwitch.setOn(false)
            let index = arr.indexOf("Pavo")
            arr.removeAtIndex(index!)
            p4.ingredienteExtra = arr
            print("Arreglo: \(arr)")
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        } else {
            pavoSwitch.setOn(true)
            arr.insert("Pavo", atIndex: 0)
            print(arr)
            p4.ingredienteExtra = arr
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        }

    }
    
    @IBAction func salamiAction(value: Bool) {
        valorSwitch = value
        if valorSwitch == false {
            salamiSwitch.setOn(false)
            let index = arr.indexOf("Salami")
            arr.removeAtIndex(index!)
            p4.ingredienteExtra = arr
            print("Arreglo: \(arr)")
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        } else {
            salamiSwitch.setOn(true)
            arr.insert("Salami", atIndex: 0)
            print(arr)
            p4.ingredienteExtra = arr
            print(p4.ingredienteExtra.count)
            checkExtraIngrediente()
        }

    }
    
    
    
    @IBAction func pasoCincoAction() {
        pushControllerWithName("paso5", context: p4)
    }
    
    

}

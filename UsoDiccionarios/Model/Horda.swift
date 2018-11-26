//
//  Horda.swift
//  UsoDiccionarios
//
//  Created by dmorenoar on 29/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import Foundation


class Horda{
    var id:Int
    var conjunto:[String:[Zombie]]
    
    init(id:Int, conjunto:[String:[Zombie]]){
        self.id = id
        self.conjunto = conjunto
    }
 
}

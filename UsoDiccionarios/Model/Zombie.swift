//
//  Zombie.swift
//  UsoDiccionarios
//
//  Created by dmorenoar on 29/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import Foundation


class Zombie {
    
    /* Tipos posibles: Boomer, Hunter, Witch, Smooker */
    var nombre:String
    var danyo:Int
    var tipo:String
    
    
    init(nombre:String, danyo:Int, tipo:String){
        self.nombre = nombre
        self.danyo = danyo
        self.tipo = tipo
    }
}

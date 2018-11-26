//
//  ViewController.swift
//  UsoDiccionarios
//
//  Created by dmorenoar on 29/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var zombieVacio:Zombie? //Objeto sin inicializar Java -> Zombie()
    
    /*   [KEY:VALUE] */
    
    var horda2:Horda?
    
    var listaHordas:[Horda] = [Horda]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var zombieHunter1:Zombie = Zombie(nombre: "Zombie1", danyo: 33, tipo: "Hunter")
        var zombieHunter2:Zombie = Zombie(nombre: "Zombie2", danyo: 44, tipo: "Hunter")
        var zombieHunter3:Zombie = Zombie(nombre: "Zombie3", danyo: 55, tipo: "Hunter")
        
        var zombieBoomer1:Zombie = Zombie(nombre: "Zombie4", danyo: 33, tipo: "Boomer")
        var zombieBoomer2:Zombie = Zombie(nombre: "Zombie5", danyo: 33, tipo: "Boomer")
        var zombieBoomer3:Zombie = Zombie(nombre: "Zombie6", danyo: 33, tipo: "Boomer")
        
        var horda1:Horda = Horda(id: 0, conjunto:
            [
            
            "Smooker" :
                [
                Zombie(nombre: "Zombi7", danyo: 55, tipo: "Smooker"),
                Zombie(nombre: "Zombi9", danyo: 55, tipo: "Smooker")
                ],
            "Hunter" : [zombieHunter1]
            
            ])
        
        horda2 = Horda(id: 1, conjunto:
            [
                "Boomer" : [zombieBoomer1,zombieBoomer2,zombieBoomer3]
            ])
        
        listaHordas.append(horda1)
        listaHordas.append(horda2!)
        
        
        for h in listaHordas{
            
            print("Id de la horda:", h.id)
            print("Total del zombies en la horda:",h.conjunto.count)

            if(h.conjunto["Smooker"] != nil){
                for index in 0...h.conjunto["Smooker"]!.count - 1 {
                    print("Dime tu nombre de Smooker", h.conjunto["Smooker"]![index].nombre)
                }
            }
            
            if(h.conjunto["Boomer"] != nil){
                for index in 0...h.conjunto["Boomer"]!.count - 1 {
                    print("Dime tu nombre de Boomer", h.conjunto["Boomer"]![index].nombre)
                }
            }
        }
        
        
    }
}


//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Virginia on 22/8/16.
//  Copyright © 2016 Virginia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var paisLabel: UILabel!
    @IBOutlet var hamburguesaLabel: UILabel!
    @IBOutlet var precioLabel: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let colores = ColeccionDeColores()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rellenaDatosYCambiaColorDeFondo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        self.rellenaDatosYCambiaColorDeFondo()
    }
    
    func rellenaDatosYCambiaColorDeFondo(){
        
        //para evitar que salga el mismo pais, hamburguesa, precio o color de fondo se crea un while que ejecutara la función en bucle hasta encontrar un nuevo país, hamburguesa, precio o color de fondo
        
        while true{
            let nuevoPais = paises.obtenPais()
            if nuevoPais != paisLabel.text{
                paisLabel.text = nuevoPais
                break
            }
        }
        
        while true{
            let nuevaHamburguesa = hamburguesas.obtenHamburguesa()
            if nuevaHamburguesa != hamburguesaLabel.text{
                hamburguesaLabel.text = nuevaHamburguesa
                break
            }
        }
       
        while true{
            let nuevoPrecio = precioAleatorio()
            if nuevoPrecio != precioLabel.text{
                precioLabel.text = nuevoPrecio
                break
            }
        }
        
        while true{
            let nuevocolor = colores.obtenColor()
            if nuevocolor != self.view.backgroundColor {
                self.view.backgroundColor = nuevocolor
                break
            }
        }
        
    }

    func precioAleatorio()->String{
        let numero = Int(arc4random()) % 19 + 1
        return ("\(numero)")
    }
}


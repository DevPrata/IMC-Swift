//
//  ViewController.swift
//  IMC
//
//  Created by Guilherme Prata Costa on 19/04/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    
    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var imgPeso: UIImageView!
    
    @IBOutlet weak var viResultado: UIView!
    
    var imc: Double = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCalcular(_ sender: Any) {
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!){
            imc = peso / (pow(altura,altura));
            mostraResultado();
    
        }
    }
    
    func mostraResultado(){
        var result: String = "";
        var image: String = "";
        
        switch imc {
            case 0..<16:
                result = "Magreza";
                image = "abaixo";
            case 16..<18.5:
                result = "Abaixo do peso";
                image = "abaixo";
            case 18.5..<25:
                result = "Peso ideal";
                image = "ideal";
            case 25..<30:
                result = "Sobrepeso";
                image = "sobre";
            
            default:
                result = "Obesidade";
                image = "obesidade";
        }
        lbResultado.text = result;
        imgPeso.image = UIImage(named: image);
        viResultado.isHidden = false
    }
    
}


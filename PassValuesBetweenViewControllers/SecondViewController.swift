//
//  SecondViewController.swift
//  PassValuesBetweenViewControllers
//
//  Created by Vanesa Korbenfeld on 12/01/2022.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var valor: String? = "Hola amigo!"
    var infoValor = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(infoValor)
        infoValor.text = valor
        infoValor.tintColor = .black
        infoValor.translatesAutoresizingMaskIntoConstraints = false
        infoValor.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        infoValor.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

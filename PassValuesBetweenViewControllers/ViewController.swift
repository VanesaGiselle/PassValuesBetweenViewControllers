//
//  ViewController.swift
//  PassValuesBetweenViewControllers
//
//  Created by Vanesa Korbenfeld on 12/01/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("To The Second View Controller", for: .normal)
        view.addSubview(button)
        button.tintColor = .white
        button.backgroundColor = .black
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.addTarget(self, action: #selector(onButtonTapped), for: .touchUpInside)
        
    }
    
    @objc func onButtonTapped(){
        let rootSVC = SecondViewController()
        rootSVC.valor = "Hola Vane!"
        rootSVC.modalPresentationStyle = .fullScreen
        present(rootSVC, animated: true)
    }


}


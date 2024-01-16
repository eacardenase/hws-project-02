//
//  ViewController.swift
//  hws-project-02
//
//  Created by Edwin Cardenas on 1/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var button1: UIButton = {
        let button = UIButton(type: .system)
        
        button.setImage(UIImage(named: "france")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        return button
    }()
    var button2: UIButton = {
        let button = UIButton(type: .system)
        
        button.setImage(UIImage(named: "uk")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        return button
    }()
    var button3: UIButton = {
        let button = UIButton(type: .system)
        
        button.setImage(UIImage(named: "germany")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
}

// MARK: - Helpers

extension ViewController {
    func configureUI() {
        view.backgroundColor = .white
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.heightAnchor.constraint(equalToConstant: 100),
            button1.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            button2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.heightAnchor.constraint(equalToConstant: 100),
            button2.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            button3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 360),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button3.heightAnchor.constraint(equalToConstant: 100),
            button3.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
}

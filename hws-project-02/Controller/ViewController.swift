//
//  ViewController.swift
//  hws-project-02
//
//  Created by Edwin Cardenas on 1/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
   
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    var button1: UIButton = {
        let button = FlagButton(flagName: "us")
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    var button2: UIButton = {
        let button = FlagButton(flagName: "us")
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    var button3: UIButton = {
        let button = FlagButton(flagName: "us")
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        setupData()
        askQuestion()
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
    
    func setupData() {
        countries += [
            "estonia",
            "france",
            "germany",
            "ireland",
            "italy",
            "monaco",
            "nigeria",
            "poland",
            "russia",
            "spain",
            "uk",
            "us"
        ]
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0])?.withRenderingMode(.alwaysOriginal), for: .normal)
        button2.setImage(UIImage(named: countries[1])?.withRenderingMode(.alwaysOriginal), for: .normal)
        button3.setImage(UIImage(named: countries[2])?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        title = "\(countries[correctAnswer].uppercased())"
    }
}

// MARK: - Actions

extension ViewController {
    @objc func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
    }
}

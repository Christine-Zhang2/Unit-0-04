// Created on: Jan-2018
// Created by: Christine Zhang
// Created for: ICS3U
// This program is the UIKit solution for 

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel = UILabel()
    let englishButten = UIButton()
    let frenceButten = UIButton()
    let spanishButten = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        englishButten.setTitle("English", for: .normal)
        englishButten.setTitleColor(.blue, for: .normal)
        englishButten.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(englishButten)
        englishButten.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:  20).isActive = true
        helloWorldLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        frenceButten.setTitle("French", for: .normal)
        frenceButten.titleLabel?.textAlignment = .center
        frenceButten.setTitleColor(.blue, for: .normal)
        frenceButten.addTarget(self, action: #selector(englishText), for: .touchUpInside)
        view.addSubview(frenceButten)
        frenceButten.translatesAutoresizingMaskIntoConstraints = false
        frenceButten.topAnchor.constraint(equalTo: view.topAnchor, constant:  20).isActive = true
        frenceButten.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        spanishButten.setTitle("Spanish", for: .normal)
        spanishButten.setTitleColor(.blue, for: .normal)
        spanishButten.addTarget(self, action: #selector(spanishText), for: .touchUpInside)
        view.addSubview(spanishButten)
        spanishButten.translatesAutoresizingMaskIntoConstraints = false
        spanishButten.topAnchor.constraint(equalTo: view.topAnchor, constant:  20).isActive = true
        spanishButten.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20).isActive = true
        
        // helloWorldLabel.text = .center
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.topAnchor.constraint(equalTo:frenceButten.bottomAnchor, constant: 20).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
    }
    
    @objc func englishText() {
        // show Hello, World! in English
        helloWorldLabel.text = "Hello,World!"
    }
    @objc func frenchText() {
        // show Hello, World!, in French
        helloWorldLabel.text = "Bonjour le monde!"
    }
    @objc func  spanishText() {
        // show Hello, World!, in Spanish
        helloWorldLabel.text = "abc"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()



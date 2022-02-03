//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    let myButton: UIButton = {
        let myButton = UIButton()
        myButton.setTitle("Button", for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = .black
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return myButton
    }()
    
    @objc func buttonPressed() {
        let customAlert = CustomTwo()
        customAlert.showAlert(onViewController: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        view.addSubview(myButton)
        
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        // Do any additional setup after loading the view.
    }
}



class FoolishViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        view.addSubview(myButton)
        
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    
    @objc func cat() {
        print("Drake")
        
    }
    
    let myButton: UIButton = {
        let myButton = UIButton()
        myButton.setTitle("Drizzy", for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = .black
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(cat), for: .touchUpInside)
        return myButton
    }()
    
}


class CustomTwo {
    
    private let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let foolishViewController = FoolishViewController()
    
    func showAlert(onViewController: UIViewController) {
        guard let targetView = onViewController.view else { return }
        backgroundView.frame = targetView.bounds
        targetView.addSubview(backgroundView)
        
        UIView.animate(withDuration: 0.25) {
            self.backgroundView.alpha = 0.6
        }
                
//      This is apparently called view controller containment -> https://stackoverflow.com/a/27278985/14918173
        foolishViewController.view.frame = CGRect(x: 40, y: -300, width: targetView.frame.size.width - 30, height: 300)
//        targetView.addSubview(foolishViewController)
        onViewController.addChild(foolishViewController)
        targetView.addSubview(foolishViewController.view)
        
        UIView.animate(withDuration: 0.25) {
            self.foolishViewController.view.center = targetView.center
        }
    }
}
//
//class CustomAlert: foolishDelegate {
//    
//    func dismissPressed() {
//        
//        guard let targetView = myTargetView else {return}
//        
//        UIView.animate(withDuration: 0.25,animations: {
//            self.foolishView.frame = CGRect(x: 40, y: targetView.frame.size.height, width: targetView.frame.size.width-30, height: 300)
//        }) { done in
//            UIView.animate(withDuration: 0.25) {
//                self.backgroundView.alpha = 0
//            } completion: { done in
//                self.foolishView.removeFromSuperview()
//                self.backgroundView.removeFromSuperview()
//            }
//
//        }
//            
//    }
//    
//    
//    private let backgroundView: UIView = {
//        let backgroundView = UIView()
//        backgroundView.backgroundColor = .black
//        backgroundView.alpha = 0
//        return backgroundView
//    }()
//    
//    private let foolishViewController = FoolishViewController()
//    private let foolishView: FoolishView = FoolishView()
//    
//    var myTargetView: UIView?
//    
//    func showAlert(onViewController: UIViewController) {
//        foolishView.delegate = self
//        guard let targetView = onViewController.view else { return }
//        backgroundView.frame = targetView.bounds
//        targetView.addSubview(backgroundView)
//        UIView.animate(withDuration: 0.25) {
//            self.backgroundView.alpha = 0.6
//        }
//        
//        myTargetView = targetView
//        
//        foolishView.frame = CGRect(x: 40, y: -300, width: targetView.frame.size.width - 30, height: 300)
//        targetView.addSubview(foolishView)
//        
//        UIView.animate(withDuration: 0.25) {
//            self.foolishView.center = targetView.center
//        }
//    }
//}

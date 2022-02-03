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
        
        let customAlert = CustomAlert()
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




class FoolishView: UIView {
    
    
    var delegate: foolishDelegate?
    
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
        delegate?.dismissPressed()
        print("if you see her, say hello")
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
        
        addSubview(myButton)
        
        NSLayoutConstraint.activate([
            myButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            myButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

protocol foolishDelegate {
    func dismissPressed()
}

class CustomAlert: foolishDelegate {
    
    func dismissPressed() {
        guard let targetView = myTargetView else {return}
        
        UIView.animate(withDuration: 0.25,animations: {
            self.foolishView.frame = CGRect(x: 40, y: targetView.frame.size.height, width: targetView.frame.size.width-30, height: 300)
        }) { done in
            UIView.animate(withDuration: 0.25) {
                self.backgroundView.alpha = 0
            } completion: { done in
                self.foolishView.removeFromSuperview()
                self.backgroundView.removeFromSuperview()
            }

        }
            
    }
    
    
    private let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    
    private let alertView: UIView = {
        let alertView = UIView()
        alertView.backgroundColor = .white
        alertView.layer.masksToBounds = true
        alertView.layer.cornerRadius = 12
        return alertView
    }()
    
    private let foolishView: FoolishView = FoolishView()
    
    var myTargetView: UIView?
    
    func showAlert(onViewController: UIViewController) {
        foolishView.delegate = self
        guard let targetView = onViewController.view else { return }
        backgroundView.frame = targetView.bounds
        targetView.addSubview(backgroundView)
        UIView.animate(withDuration: 0.25) {
            self.backgroundView.alpha = 0.6
        }
        
        myTargetView = targetView
        
        foolishView.frame = CGRect(x: 40, y: -300, width: targetView.frame.size.width - 30, height: 300)
        targetView.addSubview(foolishView)
        
        UIView.animate(withDuration: 0.25) {
            self.foolishView.center = targetView.center
        }
    }
}

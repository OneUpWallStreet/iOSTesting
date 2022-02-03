//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 1/20/22.
//

import UIKit


/// TextField From https://stackoverflow.com/a/51872758/14918173
class StyledTextField: UITextField {
    let insetConstant = UIEdgeInsets(top: 4, left: 10, bottom: 4, right: 10)

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insetConstant)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insetConstant)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insetConstant)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor(white: 2/3, alpha: 0.5).cgColor
        self.layer.borderWidth = 1
        self.clearButtonMode = .whileEditing
        self.keyboardType = UIKeyboardType.decimalPad
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class VC6: UIViewController {
    
    
    
    var mainStackView: UIStackView!
    var folderNameStackView: UIStackView!
    var isPrivateStackView: UIStackView!
    
    private func configureIsPrivateStackView() {
        
        let isPrivateSwitch: UISwitch = UISwitch()
        let isPrivateLabel: UILabel = UILabel()
        
        isPrivateLabel.text = "Private Folder"
        
        isPrivateStackView = UIStackView(arrangedSubviews: [isPrivateLabel,isPrivateSwitch])
        
        isPrivateStackView.axis = .horizontal
        isPrivateStackView.alignment = .center
        isPrivateStackView.distribution = .fillProportionally
        
//        isPrivateSwitch.backgroundColor = .brown
//        isPrivateLabel.backgroundColor = .blue
//        isPrivateStackView.backgroundColor = .green
//        isPrivateLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        view.addSubview(isPrivateStackView)
        
        NSLayoutConstraint.activate([
            isPrivateStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            isPrivateStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        
    }
    
    private func configureNameStackView() {
        
        let folderNameLabel: UILabel = UILabel()
        folderNameLabel.text = "Folder Name"
        folderNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let folderNameTextField = StyledTextField()
        
        folderNameTextField.placeholder = "Folder Number 3819"
        
        folderNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        folderNameStackView = UIStackView(arrangedSubviews: [folderNameLabel,folderNameTextField])
        
        
        folderNameStackView.axis = .vertical
        folderNameStackView.alignment = .fill
        
        view.addSubview(folderNameStackView)
        
        NSLayoutConstraint.activate([
            folderNameStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            folderNameStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10)
        ])


    }
    
    private func configureMainStackView() {
        
        mainStackView = UIStackView(arrangedSubviews: [folderNameStackView,isPrivateStackView])
        
        mainStackView.axis = .vertical
        mainStackView.alignment = .fill
        mainStackView.distribution = .fillProportionally
                
//        mainStackView.backgroundColor = .green
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureNameStackView()
        configureIsPrivateStackView()
        configureMainStackView()
        
        title = "Oracle"
        
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

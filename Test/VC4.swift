//
//  ViewController.swift
//  Test
//
//  Created by Arteezy on 12/22/21.

import UIKit

struct basicResponse: Codable {
    
    var message: String
    
}

class VC4: UIViewController {
    
    
    private func talkToServer(image: UIImage, completion: @escaping (String) -> Void) {
        
        let url = URL(string: "https://awsURL")
        var request = URLRequest(url: url!)
        
        let imageData = image.pngData()!
        
//        let imageBase64 = imageData.base64EncodedString()
        
        
        let body = ["image": "Hi"]
        
//        print(body)
        
        let bodyData = try! JSONSerialization.data(withJSONObject: body, options: [])
        
        
        
        request.httpBody = bodyData
        request.httpMethod = "POST"
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        session.uploadTask(with: request, from: imageData) { data, response, error in
            
            if let error = error {
                 print ("error: \(error)")
                 return
             }
             guard let response = response as? HTTPURLResponse,
                 (200...299).contains(response.statusCode) else {
//                     print ("server error \(response)")
                 return
             }
             if let mimeType = response.mimeType,
                 mimeType == "application/json",
                 let data = data,
                 let dataString = String(data: data, encoding: .utf8) {
                 print ("got data: \(dataString)")
             }
        }.resume()
        
    }
    
    let imageButton: UIButton = {
        let imageButton = UIButton()
        imageButton.setTitle("UploadImage", for: .normal)
        imageButton.backgroundColor = .black
        imageButton.setTitleColor(.white, for: .normal)
        imageButton.addTarget(self, action: #selector(tapUpload), for: .touchUpInside)
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        return imageButton
    }()
    
    @objc func tapUpload() {
        let customImage = UIImage(named: "girls")!
        talkToServer(image: customImage) { message in
            print("Message: \(message)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Databnase")
        view.backgroundColor = .white
        configureImageButton()

        
        // Do any additional setup after loading the view.
    }
    
    func configureImageButton() {
        view.addSubview(imageButton)
        NSLayoutConstraint.activate([
            imageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageButton.widthAnchor.constraint(equalToConstant: 250),
            imageButton.heightAnchor.constraint(equalToConstant: 100)
        ])
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

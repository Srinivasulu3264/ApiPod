//
//  WebServiceViewController.swift
//  WebServiceDemo
//
//  Created by Vmoksha on 08/03/18.
//  Copyright © 2018 Vmoksha. All rights reserved.
//

import UIKit

class WebServiceViewController: UIViewController {

    
    @IBOutlet weak var getResponseLbl: UILabel!
    
    
    @IBOutlet weak var postResponseLbl: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func getAction(_ sender: Any) {
        
      //  let urlString = "https://jsonplaceholder.typicode.com/users"
        
           let urlString = "https://jsonplaceholder.typicode.com/users"
        
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                print(data)
                do {
                    let jsonRes = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonRes)
                    
                    DispatchQueue.main.async {
                    
                        self.getResponseLbl.text = "\(jsonRes)"
                    }
                } catch {
                    print(error)
                }
                
            }
            }.resume()
        
    }
    
    @IBAction func postAction(_ sender: Any) {
        
     //   let parameters = ["username": "@kilo_loco", "tweet": "HelloWorld"]
        
   //    let urlString = "https://jsonplaceholder.typicode.com/posts"
        
        let parameters = ["username": "@kilo_loco", "tweet": "HelloWorld"]
        
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        
        
        guard let url = URL(string: urlString) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
            }
            
            if let data = data {
                do {
                    let jsonRes = try JSONSerialization.jsonObject(with: data, options: [])
                    print(jsonRes)
                    DispatchQueue.main.async {
                        self.postResponseLbl.text = "\(jsonRes)"
                    }
                    
                    
                } catch {
                    print(error)
                }
            }
            
            }.resume()
}
    


}

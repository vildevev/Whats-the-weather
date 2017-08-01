//
//  ViewController.swift
//  Whats The Weather
//
//  Created by Vilde Vevatne on 01/08/2017.
//  Copyright © 2017 Vilde Vevatne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!

    @IBOutlet var cityTextField: UITextField!
    
    @IBAction func getWeather(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://www.weather-forecast.com/locations/Boston/forecasts/latest")!
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            data, response, error in
            
            if error != nil {
                print(error)
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    print(dataString)
                }
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


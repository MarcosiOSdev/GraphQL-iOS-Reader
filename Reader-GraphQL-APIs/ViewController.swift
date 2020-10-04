//
//  ViewController.swift
//  Reader-GraphQL-APIs
//
//  Created by Marcos Souza on 10/3/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        retrieveDatas()
    }


    
    func retrieveDatas() {
        Network.shared.client.fetch(query: AllPostsQuery()) { result in            
            switch result {
            case let .success(data):
                print(data.data?.getUsers?.forEach{ print($0)})
            case .failure:
                print("Error")
            }
        }
    }
}


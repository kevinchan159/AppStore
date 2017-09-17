//
//  ModelObjects.swift
//  AppStore
//
//  Created by Kevin Chan on 7/3/17.
//  Copyright © 2017 Kevin Chan. All rights reserved.
//

import UIKit

class Category {
    var name: String?
    var apps: [App]
    var type: String?
    
    init(name: String, apps: [App], type: String) {
        self.name = name
        self.apps = apps
        self.type = type
    }
    
    
    
    // completionHandler to get [Category] (array) after data is fetched (since data is fetched at the end)
    // static function is called in MainVC
    static func fetchCategories(completionHandler: @escaping ([Category], [String]) -> ()) {
        
        
        let urlString = "https://api.letsbuildthatapp.com/appstore/featured"
        guard let url = URL(string: urlString) else {
            print("url failed")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        // pull data from URL
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if (error != nil) {
                print("error with URLSession")
            }
            
            guard let data = data else {
                print("data failed")
                return
            }
            
            do{
                let json = try(JSONSerialization.jsonObject(with: data, options: .mutableContainers))
                
                var categoriesArray = [Category]()
                var bannerImageNamesArray = [String]()
                
                if let jsonCat = json as? [String:Any] {
                    if let catArray = jsonCat["categories"] as? [[String:Any]] {
                        for dict in catArray {
                            let name = dict["name"] as! String
                            
                            let appsDictArray = dict["apps"] as! [[String:Any]]
                            
                            var appsArray = [App]()
                            for appDict in appsDictArray {
                                let app = App()
                                if let id = appDict["Id"] {
                                    app.id = id as! Int
                                }
                                if let name = appDict["Name"] {
                                    app.name = name as! String
                                }
                                if let category = appDict["Category"] {
                                    app.category = category as! String
                                }
                                if let price = appDict["Price"] {
                                    app.price = price as! Float
                                }
                                if let imageName = appDict["ImageName"] {
                                    app.imageName = imageName as! String
                                }
                                appsArray.append(app)
                            }
                            
                            let type = dict["type"] as! String
                            let newCategory = Category(name: name, apps: appsArray, type: type)
                            categoriesArray.append(newCategory)
                        }
                    }
                    
                    if let bannerArray = jsonCat["bannerCategory"] as? [String:Any] {
                        if let appsArray = bannerArray["apps"] as? [[String:Any]] {
                            for dict in appsArray {
                                let imageName = dict["ImageName"] as! String
                                bannerImageNamesArray.append(imageName)
                            }
                        }
                    }
                }
                
                
                // need completionHandler to be in main thread so that we can reload MainVC collection view data in the 
                // completion block
                DispatchQueue.main.async {
                    completionHandler(categoriesArray, bannerImageNamesArray)
                }
            
            
            } catch let error {
                print("error with JSON")
            }
        }.resume()
    }
    
}

class App {
    var id: Int?
    var name: String?
    var category: String?
    var price: Float?
    var imageName: String?
}

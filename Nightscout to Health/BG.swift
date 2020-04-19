//
//  BG.swift
//  Nightscout to Health
//
//  Created by John Kitching on 14/04/2020.
//  Copyright © 2020 John Kitching. All rights reserved.
//

import Foundation

public struct BG:Decodable{
     var _id: String
     var device: String
     var date: Int
     var dateString: String
     var sgv: Int
     var direction: String
     var type: String
     var NSCLIENT_ID: String
     var created_at: String
 }
 
  public var BGs:[BG]?
 

 

 
 public func getBGs()  {
     
     let session = URLSession.shared
    
     let url = URL(string: "https://johnkitching.herokuapp.com/api/v1/entries.json?count=100")!
     let task = session.dataTask(with: url) { data, response, error in
         
         if error != nil || data == nil {
             print("Client error!")
             return
         }
         
         guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
             print("Server error!")
             return
         }
         
         guard let mime = response.mimeType, mime == "application/json" else {
             print("Wrong MIME type!")
             return
         }
         
         do {
             // let json = try JSONSerialization.jsonObject(with: data!, options: [])
              ready(jsonData: data!)
             
         }
     }
     
     task.resume()
 }
 
 func ready(jsonData:Data){
     //print(jsonData)
     BGs = try! JSONDecoder().decode([BG].self, from: jsonData )
     print(BGs?.first?.dateString as Any)
    print(BGs?.count)
 }

//
//  DataProvider.swift
//  LadyApp
//
//  Created by Mahsa Dilmaghani on 19/05/2018.
//  Copyright © 2018 LadyApp. All rights reserved.
//

import Foundation

struct MyData: Codable {
    var name: String
    var email: String
    var notes: String
}

class DataProvider{
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("MyData")
    
//    func getName() -> String {
//        //let myData = MyData()
//        return "Sally"
//    }
//
//    func getEmail() -> String {
//        return "sally@me.com"
//    }
//
//    func getNotes() -> String {
//        return "Hi, this is Sally"
//    }
    
    func getMyData() -> MyData {
        
        do {
            let data = try Data(contentsOf: DataProvider.ArchiveURL)
            return try JSONDecoder().decode(MyData.self, from: data)
        } catch {
            return MyData(name: "Sally", email: "sally@me.com", notes: "Hi, this is Sally")
        }
        //return NSKeyedUnarchiver.unarchiveObject(withFile: DataProvider.ArchiveURL.path) as? MyData
    }
    
    func setMyData(_ data: MyData){
        let encoder = JSONEncoder()
        
        try? encoder.encode(data).write(to: DataProvider.ArchiveURL)
        
        //_ = NSKeyedArchiver.archiveRootObject(data, toFile: DataProvider.ArchiveURL.path)
        
        print("My name is " + data.name)
        print("My email is \(data.email)")
        print("My notes is \(data.notes)")
    }
    
}

//
//  File.swift
//  
//
//  Created by Dimas Putro on 30/11/21.
//

import RealmSwift

public extension Results {

  func toArray<T>(ofType: T.Type) -> [T] {
    var array = [T]()
    for index in 0 ..< count {
      if let result = self[index] as? T {
        array.append(result)
      }
    }
    return array
  }
}

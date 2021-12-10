//
//  File.swift
//  
//
//  Created by Dimas Putro on 10/12/21.
//

import Foundation

public protocol UserMapper {
  associatedtype Domain
  associatedtype Entity

  func transformUserDomainToEntity(userDomain: Domain) -> Entity
  func transformUserEntityToDomain(userEntity: Entity) -> Domain
}

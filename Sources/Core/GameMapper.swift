//
//  File.swift
//  
//
//  Created by Dimas Putro on 30/11/21.
//

import Foundation

public protocol GameMapper {
  associatedtype Request
  associatedtype Response
  associatedtype Entity
  associatedtype Domain

  func transformResponseToEntity(request: Request?, response: Response) -> Entity
  func transformModelToEntity(request: Request?, response: Response) -> Entity
  func transformEntityToDomain(entity: Entity) -> Domain
  func transformResponseToDomain(request: Request?, response: Response) -> Domain

//  func transformResponseToEntity(response: Response) -> Entity
//  func transformResponseToDomain(response: Response) -> Domain
//  func transformEntityToDomain(entity: Entity) -> Domain
//  func transformDomainToEntity(domain: Domain) -> Entity

//  func transformResponseToEntity(request: Request?, response: Response) -> Entity
//    func transformModelToEntity(request: Request?, response: Response) -> Entity
//    func transformEntityToDomain(entity: Entity) -> Domain
//    func transformResponseToDomain(request: Request?, response: Response) -> Domain
}

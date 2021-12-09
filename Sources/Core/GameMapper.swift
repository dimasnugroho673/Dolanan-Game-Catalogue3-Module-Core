//
//  File.swift
//  
//
//  Created by Dimas Putro on 30/11/21.
//

import Foundation

public protocol GameMapper {
  associatedtype Request
  associatedtype Requests
  associatedtype Response
  associatedtype DetailResponse
  associatedtype Responses

  associatedtype Entity
  associatedtype Entities
  associatedtype Domain
  associatedtype DetailDomain
  associatedtype Domains

//  func transformResponsesToEntities(request: Requests?, response: Responses) -> Entities
//  func transformDomainToEntity(request: Domain) -> Entity
//  func transformEntitiesToDomains(entity: Entities) -> Domains
//  func transformResponsesToDomains(request: Requests?, response: Responses) -> Domains
//  func transformResponseToDomain(request: Request?, response: Response) -> Domain

  func transformGamesResponseToDomains(responses: Responses) -> Domains
  func transformGameDetailResponseToDomain(gameDetailResponse: DetailResponse) -> DetailDomain
  func transformGameDomainToEntity(gameDomain: Domain) -> Entity
  func transformGameEntitiesToDomains(gameEntities: Entities) -> Domains

//  mapGameDetailResponseToDomains GameDetailResponse

//  static func mapPopularGameResponsesToDomains(
//    input popularReponses: [GameResponse]
//  ) -> [GameModel] {
//    return popularReponses.map { result in
//      return GameModel(id: result.id ?? 0, name: result.name ?? "", released: result.released ?? "", backgroundImage: result.backgroundImage ?? "", rating: result.rating ?? 0.0, genres: self.mapGenres(data: result.genres ?? []), screenshots: nil)
//    }
//  }
//
//  static func mapGameDetailResponseToDomains(
//    input gameDetailResponse: GameDetailResponse
//  ) -> GameDetailModel {
//    return GameDetailModel(id: gameDetailResponse.id ?? 0, name: gameDetailResponse.name ?? "", backgroundImage: gameDetailResponse.backgroundImage ?? "", rating: gameDetailResponse.rating ?? 0.0, descriptionRaw: gameDetailResponse.descriptionRaw ?? "", released: gameDetailResponse.released ?? "", ageRating: AgeRating(name: gameDetailResponse.ageRating?.name ?? ""), parentPlatforms: self.mapPlatforms(data: gameDetailResponse.parentPlatforms ?? []), playtime: gameDetailResponse.playtime ?? 0, website: gameDetailResponse.website ?? "", metacriticURL: gameDetailResponse.metacriticURL ?? "", genres: self.mapGenres(data: gameDetailResponse.genres ?? []))
//  }
//
//  static func mapGameModelToEntities(
//    input gameModel: GameModel
//  ) -> GameEntity {
//    let newGame = GameEntity()
//    newGame.id = gameModel.id ?? 0
//    newGame.name = gameModel.name ?? ""
//    newGame.released = gameModel.released ?? ""
//    newGame.backgroundImage = gameModel.backgroundImage ?? ""
//    newGame.rating = gameModel.rating ?? 0.0
//
//    return newGame
//  }
//
//  static func mapGameEntitiesToDomains(
//    input gameEntities: [GameEntity]
//  ) -> [GameModel] {
//    return gameEntities.map { result in
//      return GameModel(id: result.id, name: result.name, released: result.released, backgroundImage: result.backgroundImage, rating: result.rating, genres: nil, screenshots: nil)
//    }
//  }
}

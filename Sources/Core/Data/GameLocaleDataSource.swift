//
//  File.swift
//  
//
//  Created by Dimas Putro on 29/11/21.
//

import RxSwift

public protocol GameLocaleDataSource {
  associatedtype Request
  associatedtype Response
  associatedtype Responses

  func getFavoriteGames() -> Observable<[Responses]>
  func addGameToFavorite(entity: Request) -> Observable<Bool>
  func removeGameFromFavorite(id: Int) -> Observable<Bool>

//  func addUser(data: Response) -> Observable<Bool>
//  func getUser() -> Observable<Response>

  //    func list(request: Request?) -> AnyPublisher<[Response], Error>
  //    func add(entities: [Response]) -> AnyPublisher<Bool, Error>
  //    func get(id: String) -> AnyPublisher<Response, Error>
  //    func update(id: Int, entity: Response) -> AnyPublisher<Bool, Error>
}

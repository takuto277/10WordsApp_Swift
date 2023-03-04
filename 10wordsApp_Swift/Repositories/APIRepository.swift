//
//  APIRepository.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/05.
//

import Foundation
import Moya

struct InitialWords: Codable {
    let data: [data]
}

struct data: Codable {
    let ID: Int
    let english: String
    let japanese: String
}

class APIRepository {
}

extension APIRepository: APIRepositoryProtocol {
    func initialWord(completion: @escaping (InitialWords?) -> Void) {
            var words: InitialWords?
            let provider = MoyaProvider<InitialQuizWordAPI>()
            
        provider.request(.getInitialQuizWord) { result in
            switch result {
            case let .success(response):
                words = try? JSONDecoder().decode(InitialWords.self, from: response.data)
                completion(words)
                
            case let .failure(error):
                print(error)
            }
        }
    }
}

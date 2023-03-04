//
//  InitialQuizWordAPI.swift
//  10wordsApp_Swift
//
//  Created by 小野拓人 on 2023/03/04.
//

import Foundation
import Moya

enum InitialQuizWordAPI {
    case getInitialQuizWord
}

extension InitialQuizWordAPI: TargetType {
    var baseURL: URL {
        URL(string: "https://gist.githubusercontent.com/takuto277")!
    }
    
    var path: String {
        switch self {
        case .getInitialQuizWord:
            return "/64a7ef7225cfb42e1bfa08d958fde985/raw/0e6ae79158f8b588f7bd60ced0747db3f90d8ef0/10words.json"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getInitialQuizWord:
            return .get
            
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getInitialQuizWord:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return .none
    }

}

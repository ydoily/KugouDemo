//
//  NetworkService.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//

import Foundation
import Alamofire
import SwiftyJSON
import os

class NetworkService: NetworkServiceProtocol {
    // MARK: 单例
    static let shared = NetworkService()
    private init() {}
    
    // MARK:  获取音乐排行榜
    func fetchRankList() async throws -> RankResponse {
        let baseURL = "https://m.kugou.com/rank/list"
        
        let parameters: [String: Any] = [
            "json" : true
        ]
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(baseURL,
                       method: .get,
                       parameters: parameters,
                       encoding: URLEncoding.default,
                       headers: nil)
            .validate()
            .responseDecodable(of: RankResponse.self) { response in
                switch response.result {
                case .success(let rankResponse):
                    continuation.resume(returning: rankResponse)
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    
}

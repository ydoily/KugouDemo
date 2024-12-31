//
//  NetworkServiceProtocol.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//


protocol NetworkServiceProtocol {
    func fetchRankList() async throws -> RankResponse
}
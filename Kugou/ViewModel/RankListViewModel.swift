//
//  RankListViewModel.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//
  
import Foundation
import os

class RankListViewModel: RankListViewModelProtocol, ObservableObject {
    private let networkService: NetworkServiceProtocol
    private(set) var rankList: [RankList] = [] {
        didSet {
            onUpdate?()
        }
    }
    private(set) var total: Int = 0
    
    var onUpdate: (() -> Void)?
    var onError: ((Error) -> Void)?
    private let log = Logger(subsystem: "Kugou", category: "RankListViewModel")
    
    init(networkService: NetworkServiceProtocol = NetworkService.shared) {
        self.networkService = networkService
    }
    
    func fetchRankList() async {
        do {
            let response = try await networkService.fetchRankList()
            self.rankList = response.rank.list
            self.total = response.rank.total
            log.debug("rankList: \(self.rankList) total: \(self.total)")
        } catch {
            onError?(error)
        }
    }
    
    func getRankList(at index: Int) -> RankList? {
        guard index < rankList.count else { return nil }
        return rankList[index]
    }
}

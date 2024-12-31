//
//  RankListViewModelProtocol.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//


protocol RankListViewModelProtocol {
    var rankList: [RankList] { get }
    var total: Int { get }
    var onUpdate: (() -> Void)? { get set }
    var onError: ((Error) -> Void)? { get set }
    
    func fetchRankList() async
    func getRankList(at index: Int) -> RankList?
}
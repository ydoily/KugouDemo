//
//  RankData.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//

import Foundation

struct RankData: Codable, Sendable {
    let total: Int
    let list: [RankList]
}

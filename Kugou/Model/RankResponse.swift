//
//  RankResponse.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//

import Foundation

struct RankResponse: Codable, Sendable {
    let jsCssdate: Int
    let kuDomain: String
    let src: String
    let fr: String?
    let ver: String
    let rank: RankData
    
    enum CodingKeys: String, CodingKey {
        case jsCssdate = "JS_CSS_DATE"
        case kuDomain = "kg_domain"
        case src
        case fr
        case ver
        case rank
    }
}



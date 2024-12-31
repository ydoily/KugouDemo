//
//  RankList.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//

import Foundation

public struct RankList: Codable, Sendable {
    let rankid: Int
    let id: Int
    let ranktype: Int
    let intro: String
    let updateFrequency: String
    let customType: Int
    let imgurl: String
    let banner7url: String
    let jumpUrl: String
    let bannerurl: String
    let jumpTitle: String
    let rankname: String
    let isvol: Int
    
    enum CodingKeys: String, CodingKey {
        case rankid, id, ranktype, intro
        case updateFrequency = "update_frequency"
        case customType = "custom_type"
        case imgurl, banner7url
        case jumpUrl = "jump_url"
        case bannerurl
        case jumpTitle = "jump_title"
        case rankname, isvol
    }
}

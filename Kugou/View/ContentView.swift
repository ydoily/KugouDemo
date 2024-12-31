//
//  ContentView.swift
//  Kugou
//
//  Created by ydoily  on 12/31/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = RankListViewModel()
    
    var body: some View {
        VStack {
            Button {
                Task {
                    await viewModel.fetchRankList()
                }
            } label: { Text("Hello, World!") }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

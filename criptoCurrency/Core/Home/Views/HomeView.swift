//
//  ContentView.swift
//  criptoCurrency
//
//  Created by Duver on 15/6/23.
//

import SwiftUI

struct HomeView: View {
  @StateObject var viewModel = HomeViewModel()
    var body: some View {
      NavigationView {
        ScrollView(.vertical,showsIndicators: false) {
//         top movers views
          TopMoversView(viewModel: viewModel)
          Divider()
          AllCoinView(viewModel: viewModel)
         
          
//          all coins view
        }
        .navigationTitle("Live Prices")
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  TopMoverView.swift
//  criptoCurrency
//
//  Created by Duver on 18/6/23.
//

import SwiftUI

struct TopMoverView: View {
  @StateObject var viewModel: HomeViewModel
  var body: some View {
    
    VStack(alignment: .leading){
      Text("Top Movers").font(.headline).padding()
      
      ScrollView(.horizontal){
        HStack{
          ForEach(viewModel.topMovingCoins){coin in
            TopMoverItemView(coin: coin)
          }
        }
        
      }
    }
  }
}
//struct TopMoverView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoverView()
//    }
//}

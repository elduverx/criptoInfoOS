//
//  AllCoinView.swift
//  criptoCurrency
//
//  Created by Duver on 16/6/23.
//

import SwiftUI

struct AllCoinView: View {
  @StateObject var viewModel: HomeViewModel
    var body: some View {
      VStack(alignment: .leading){
        Text("All Coins").font(.headline).padding()
        
        HStack{
          Text("Coin").fontWeight(.semibold)
          Spacer()
          Text("Price").fontWeight(.semibold)
        }.foregroundColor(.gray).font(.caption).padding(.horizontal)
        
        ScrollView{
          VStack{
            ForEach(viewModel.coins){coin in
              CoinRowView(coin: coin)
            }
          }
        }
      }
      
    }
}

//struct AllCoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinView()
//    }
//}

//
//  MessageCell.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import SwiftUI

struct MessageCell: View {
    
    @State var width =  UIScreen.main.bounds.width
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content:{
          Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading,spacing: 0,content:{
                    HStack{
                        Text("Cem")
                              .fontWeight(.bold)
                              .foregroundColor(.primary)
                        
                        Text("@cem_salta")
                            .foregroundColor(.gray)
                        
                        Spacer(minLength: 0)
                        
                        
                        Text("06/20/22")
                            .foregroundColor(.gray)
                            .padding(.trailing)
                    }
                Text("You: how is it going?")
                        .foregroundColor(.gray)
                    
                    Spacer()
                })
                    
            }
            .padding(.top , 2)
        })
        .frame(width: width, height: 84, alignment: .center)
    }
}

#Preview {
    MessageCell()
}

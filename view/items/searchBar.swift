//
//  searchBar.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import SwiftUI

struct searchBar: View {
    
    @Binding var text : String
    @Binding var isEditing: Bool
    
    
    var body: some View {
        HStack{
            TextField( "Search Twitter", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifiyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                
                )
            
            Button(action: {
                isEditing = false
                text = ""
                UIApplication.shared.endEditing()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
            })
        }
        .onTapGesture {
            isEditing =  true
        }
    }
}


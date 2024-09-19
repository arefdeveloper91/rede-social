//
//  searchView.swift
//  rede-social
//
//  Created by Aref Chucri on 11/09/24.
//

import SwiftUI

struct searchView: View {
    
    @State var text = " "
    @State var isEditing = false
    
    
    var body: some View {
        VStack{
            
            searchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing{
                List(0..<9) { i in
                    
                    searchCell(tag: "hello" , tweets: String(i))
                }
            }
            else{
                List(0..<9){ _ in
                    searchUserCall()
                    
                }
            }
        }
    }
}

#Preview {
    searchView()
}

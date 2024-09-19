//
//  FollowView.swift
//  rede-social
//
//  Created by Aref Chucri on 18/09/24.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    
    
    
    var body: some View {
        HStack{
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}


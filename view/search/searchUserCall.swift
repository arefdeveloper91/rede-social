//
//  searchUserCall.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import SwiftUI

struct searchUserCall: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44 , height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("Cem")
                    .fontWeight(.heavy)
                Text("@cem_saltar")
            }
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    searchUserCall()
}

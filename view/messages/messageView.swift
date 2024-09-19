//
//  messageView.swift
//  rede-social
//
//  Created by Aref Chucri on 11/09/24.
//

import SwiftUI

struct messageView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9){ _ in
                 MessageCell()
                }
            }
        }
    }
}

#Preview {
    messageView()
}

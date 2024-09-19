//
//  searchCell.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import SwiftUI

struct searchCell: View {
    var tag = ""
    var tweets = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Text("hello").fontWeight(.heavy)
            Text(tweets + "Tweets").fontWeight(.light)
        })
    }
}

#Preview {
    searchCell()
}

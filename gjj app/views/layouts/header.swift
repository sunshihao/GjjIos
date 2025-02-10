//
//  header.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/10.
//

import SwiftUI

struct header: View {
    var body: some View {
        HStack(alignment: .center) {
            Image("logo").resizable()
                .scaledToFit().aspectRatio(contentMode: .fill).frame(width: 220,height: 25)
            Spacer()
            Group {
                Image("search").frame(width: 21, height: 21)
                Image("list").frame(width: 21, height: 21)
            }
        }
        .frame(height: 47)
        .padding(.horizontal, 17.0)
        .background(Color.white)
        
    }
}

#Preview {
    header()
}

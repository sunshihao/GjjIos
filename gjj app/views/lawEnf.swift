//
//  lawEnf.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/10.
//

import SwiftUI

struct lawEnf: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("lawEnf").resizable().frame(width: 359, height: 179)
            VStack(alignment: .leading) {
                Text("行政执法").font(.system(size: 19))
                HStack {
                    Text("如遇相关问题。可以选择以下方式与我们联系。").font(.system(size: 13))
                    Spacer()
                    Image("down")
                }
            }
            .padding(.all, 17.0)
            .background(LinearGradient(
                gradient: Gradient(colors: [
                                    Color(red: 229/255, green: 235/255, blue: 255/255).opacity(0.44),
                                    Color.white.opacity(0.69),
                                    Color(red: 230/255, green: 246/255, blue: 255/255)
                                ]),
                                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .shadow(color: Color.gray.opacity(0.5), radius: 16, x: 0, y: 12)
            .cornerRadius(8)
            
            
        }
        .padding(.horizontal, 17.0)
    }
}



#Preview {
    lawEnf()
}

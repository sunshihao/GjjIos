//
//  banner.swift
//  Created by sunshihao on 2025/2/7.
//

import SwiftUI

struct banner: View {
    
    let images = ["banner", "service"] // 替换为你的图片名称
    
    let colors: [Color] = [.red, .blue, .green, .pink, .purple]
    
    var body: some View {
        ACarousel(images, id: \.self) { name in
            Image(name)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
//                .cornerRadius(30)
        }
        .frame(height: 300)
    }
}

#Preview {
    banner()
}

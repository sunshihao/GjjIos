//
// swiper.swift
// demo
// Created by sunshihao on 2025/2/10.
//

import SwiftUI

struct swiper: View {
    let images = ["banner", "banner", "banner"] // 替换为你的图片名称
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill) // 填充整个区域
                    .clipped() // 裁剪溢出部分，防止图片超出视图边界
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
        .frame(width: .infinity,height: 210)
    }
}

#Preview {
    swiper()
}

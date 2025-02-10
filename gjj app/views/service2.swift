//
//  service2.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/8.
//

import SwiftUI

struct service2: View {
    
    let service_imgs = ["service", "service", "service"] // 替换为你的图片名称
    
    var body: some View {
        HStack(alignment: .center) {
            Text("专题服务").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 15)
                .overlay(
                    Rectangle()
                        .frame(width: 31, height: 3) // 线条高度
                        .foregroundColor(Color(red: 0/255, green: 82/255, blue: 217/255)), // 线条颜色
                    alignment: .bottom // 让线条对齐到底部
                )
            Spacer()
            Text("更多").font(.system(size: 13)).padding(.bottom, 15).foregroundColor(Color(red: 0/255, green: 82/255, blue: 217/255))
        }
        .padding(.horizontal, 17.0)
        .overlay(
            Rectangle()
                .frame(width: 359,height: 1) // 底部边框高度
                .foregroundColor(Color(red: 234/255, green: 235/255, blue: 237/255)), // 颜色
            alignment: .bottom
        )
        .padding(.bottom, 10)
        
        ACarousel(service_imgs,id: \.self,spacing: 8,
                  
                  sidesScaling: 0.7
        ) { name in
            Image(name)
                .resizable()
                .scaledToFill()
                .frame(width: 190, height: 224)
        }
        .padding(.bottom, 19.0)
        .frame(height: 243)
        
    }
}

#Preview {
    service2()
}

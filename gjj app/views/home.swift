//
//  home.swift
//  Created by sunshihao on 2025/1/21.
//

import SwiftUI

struct home: View {
    @State private var selectedTab = 0
            
    var body: some View {
        ScrollView {
            // ScrollView 的
            VStack(spacing: 0) {
                
                // 顶部
                header()
                
                // 轮播
                swiper()
                
                // 新闻
                VStack {
                    // 顶部标签
                    HStack(alignment: .center) {
                        Picker("Options", selection: $selectedTab) {
                            Text("中心新闻").tag(0)
                            Text("行业新闻").tag(1)
                            Text("资金使用情况").tag(2)
                            Text("执法公告").tag(3)
                            
                        }
                        .pickerStyle(PalettePickerStyle())
                        Spacer()
                        Text("更多").font(.system(size: 13)).foregroundColor(Color(red: 0/255, green: 82/255, blue: 217/255))
                    }
                    .padding(.horizontal, 17.0)
                    .background(Color.white)
                    
                    // 内容视图
                    TabView(selection: $selectedTab) {
                        newsList().padding(.horizontal, 17.0).tag(0)
                        Text("行业新闻内容").tag(1)
                        Text("资金使用情况内容").tag(2)
                        Text("执法公告内容").tag(3)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .background(Color.white)
                    
                    
                }
                .padding(.top, 10.0)
                .frame(minHeight: 315, maxHeight: 325)
                    .background(Color.white)
                
                // 专题服务
                speService().background(Color.white).offset(y: 10)
                
                // 便民服务
                conService().background(Color.white).offset(y: 20)
                
                // 互动社区
                intCom().padding(.top, 10.0).background(Color.white).offset(y: 20)
                
                // 行政执法
                lawEnf().padding(.top, 10.0).background(Color.white)
                
                // 链接
                links().background(Color.white)
                
                // 通用底部
                footer()
                
            }
        }
        .background(Color(red: 246/255, green: 249/255, blue: 255/255)) // 设置背景
    }
}

#Preview {
    home()
}

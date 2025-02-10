//
//  home.swift
//  gjj app
//
//  Created by sunshihao on 2025/1/21.
//

import SwiftUI

struct home: View {
    
    @State private var select = 1
    
    @State private var selectedTab = 0
    let colors: [Color] = [.red, .blue, .green, .pink, .purple]
    
    let images = ["banner", "banner", "banner"] // 替换为你的图片名称
    let service_imgs = ["service", "service", "service"] // 替换为你的图片名称
    
    private var displayState = [ "接收关闭", "仅限联系人", "所有人"]
    @State private var selectedNumber = 0
    
    var body: some View {
        ScrollView {
            // TOP
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
            
            
            // 轮播
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
                    Text("更多内容").tag(4)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .background(Color.white)
                
                
            }.frame(minHeight: 315, maxHeight: 325)
                .background(Color.white)
            
            // 专题服务
            speService().offset(y: 10) 
            
            // 便民服务
            conService().offset(y: 10) 
            
            // 互动社区
            intCom().padding(.top, 9.0)
            
            // 行政执法
            lawEnf()
            
            // 链接
            links()
            
            // 通用底部
            footer()
        }
        .background(Color(red: 246/255, green: 249/255, blue: 255/255)) // 设置背景
    }
}

#Preview {
    home()
}

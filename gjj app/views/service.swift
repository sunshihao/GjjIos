//
//  service.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/7.
//

import SwiftUI

struct service: View {
    
    // 定义结构体
    struct ServiceBtns: Identifiable {
        let id = UUID()  // 确保每个对象都有唯一标识符
        var name: String
        var img: String
    }
    
    let servers: [ServiceBtns] = [
        ServiceBtns(name: "额度计算", img: "1"),
        ServiceBtns(name: "安全贴士", img: "1"),
        ServiceBtns(name: "下载中心", img: "3"),
        ServiceBtns(name: "基数比例", img: "4"),
        ServiceBtns(name: "利息比较", img: "5"),
        ServiceBtns(name: "文件验证", img: "6"),
        ServiceBtns(name: "办理网点", img: "7"),
        ServiceBtns(name: "贷款预约", img: "8"),
        ServiceBtns(name: "热点问题", img: "9"),
        ServiceBtns(name: "单位代码查询", img: "10"),
        ServiceBtns(name: "贷款承办银行", img: "11"),
        ServiceBtns(name: "贷款预约进度查询", img: "12")
    ] // 替换为你的图片名称
    
    var body: some View {
        HStack(alignment: .center) {
            Text("便民服务").font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
        
        // 便民服务
        LazyVGrid(columns: [GridItem(.flexible(minimum: 115, maximum: 115)), GridItem(.flexible(minimum: 115, maximum: 115)), GridItem(.flexible(minimum: 115, maximum: 115))], spacing: 7){
            ForEach(servers){ server in
                VStack {
                    Image(server.img) // 如果使用 SF Symbols
                        .resizable()
                        .frame(width: 19, height: 19)
                    Text(server.name)
                        .foregroundColor(Color.black)
                        .padding(.top, 2.0)
                        .font(.system(size: 13))

                }
                .frame(width: 115,height: 71)
                .background(Color(red: 248/255, green: 250/255, blue: 255/255)) // 设置背景
                .cornerRadius(10) // 圆角
//                    .overlay( // 叠加边框
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color(red: 215/255, green: 220/255, blue: 233/255), lineWidth: 1)
//                    )
                .border(Color(red: 215/255, green: 220/255, blue: 233/255), width: 1) // 添加黑色边框
            }
        }
        .background(Color.white)
        .frame(width: .infinity)
        .padding(.horizontal, 17.0)
    }
}

#Preview {
    service()
}

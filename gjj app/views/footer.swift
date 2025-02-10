//
//  footer.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/8.
//
import SwiftUI
struct footer: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("网点查询     |  公积金服务热线：12329")
                    .foregroundColor(Color(red: 34/255, green: 34/255, blue: 34/255))
                    .font(.system(size: 13))
            }
            .padding(.bottom, 43.0)
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image("sitename").resizable().frame(width: 15,height: 18)
                    Text("津ICP备05002184号-1")
                        .foregroundColor(Color(red: 34/255, green: 34/255, blue: 34/255))
                        .font(.system(size: 13))
                  
                }.padding(.bottom, 9.0)
                
                
                Text("Copyright © 2016 天津市住房公积金中心 版权所有")
                    .foregroundColor(Color(red: 34/255, green: 34/255, blue: 34/255))
                    .font(.system(size: 13))
                    .padding(.bottom, 14.0)
                
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(/*@START_MENU_TOKEN@*/.all, 17.0/*@END_MENU_TOKEN@*/)
        .background(Color(red: 250/255, green: 250/255, blue: 250/255))
    }
}

#Preview {
    footer()
}

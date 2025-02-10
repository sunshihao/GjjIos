//
//  newsList.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/10.
//

import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var date: String
}

var Messages = [
    Message(name: "市公积金管理中心主动作为延伸服务", image: "new", date: "2024-11-04"),
    Message(name: "2024年上半年天津市住房公积金管理…", image: "new", date: "2024-11-04"),
    Message(name: "我市租房提取住房公积金新政", image: "note", date: "2024-11-04"),
    Message(name: "2024年上半年天津市住房公积金管理…", image: "note", date: "2024-11-04"),
    Message(name: "市公积金管理中心主动作为延伸服务", image: "note", date: "2024-11-04"),
    Message(name: "我市租房提取住房公积金新政实施", image: "note", date: "2024-11-04"),

]

struct newsList: View {
    var body: some View {
        List {
            ForEach(Messages) { Message in
                HStack {
                    Image(Message.image)
                        .resizable()
                        .frame(width: 15, height: 15)
//                        .cornerRadius(5)
                    Text(Message.name).font(.system(size: 13))
                    Spacer()
                    Text(Message.date).font(.system(size: 13))
                }
                .padding(.horizontal, 10.0)
                .frame(height: 34)
                .background(Color(red: 242/255, green: 246/255, blue: 249/255))
                
            }
        }
    }
}

#Preview {
    newsList()
}

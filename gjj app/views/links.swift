//
//  links.swift
//  gjj app
//
//  Created by sunshihao on 2025/2/8.
//

import SwiftUI

struct links: View {
    
    private var displayState = [ "请选择", "链接1", "链接2", "链接3"]
    @State private var selectedNumber = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedNumber, label: Text("政府部门链接")) {
                        ForEach(0 ..< displayState.count, id: \.self) {
                            Text(self.displayState[$0])
                        }
                    }
                }
                Section {
                    Picker(selection: $selectedNumber, label: Text("省公积金链接")) {
                        ForEach(0 ..< displayState.count, id: \.self) {
                            Text(self.displayState[$0])
                        }
                    }
                }
                Section {
                    Picker(selection: $selectedNumber, label: Text("其他友情链接")) {
                        ForEach(0 ..< displayState.count, id: \.self) {
                            Text(self.displayState[$0])
                        }
                    }
                }
            }            
        }
        .background(Color.white)
        
    }
}

#Preview {
    links()
}

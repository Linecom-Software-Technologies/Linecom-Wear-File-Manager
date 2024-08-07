//
//  RenameFileSheet.swift
//  Linecom Wear FM Watch App
//
//  Created by 澪空 on 2024/7/8.
//

import SwiftUI

struct RenameFileSheet: View {
    @Binding var isPresented: Bool
    @Binding var newFileName: String
    var onRename: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            Text("重命名文件")
                .font(.headline)
            TextField("新文件名称", text: $newFileName)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
            HStack {
                Button("取消") {
                    isPresented = false
                }
                Spacer()
                Button("重命名") {
                    isPresented = false
                    onRename()
                }
            }
            .padding()
        }
        .padding()
    }
}



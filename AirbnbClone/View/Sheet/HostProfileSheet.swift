//
//  HostProfileView.swift
//  AirbnbClone
//
//  Created by user on 25.01.2024.
//

import SwiftUI

struct HostProfileView: View {
    var body: some View {
        
        VStack {
            
            GeometryReader { geometry in
                
            
            HStack {
                
            }.frame(width: geometry.size.width * 0.7)
                    .background(.yellow)
            
            }
        }.frame(maxWidth: .infinity)
        
        
    }
}

#Preview {
    HostProfileView()
}

//
//  CallsView.swift
//  Chatwire
//
//  Created by Jaiprakash Yadav on 20/04/21.
//

import SwiftUI

struct CallsView: View {
    var body: some View {
        ZStack {
            Color(.white)
            ScrollView(showsIndicators: false) {
                ForEach(0 ..< 15) { _ in
                    CallRow()
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}

//
//  lesson2.swift
//  MyStart
//
//  Created by Sherzod Fayziev on 2022/04/28.
//

import SwiftUI

struct lesson2: View {
    @State var alert = false
    @State var sheet = false
    var body: some View {
        
        
        TabView {
      
            
//            / first alert
            Button (action: {
                alert = true
            }, label: {
                Text ("Alert Dialog")
            })
            
            .alert(isPresented: $alert, content: {
                let title = "iOS"
                let message = "Here we go"
                return Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text("NO")) {
                    
                }, secondaryButton: .default(Text("OK")))
                
            })
            .tabItem({
                Image(systemName: "a.circle")
                Text("Alert")
                
            })
//         Second page
            
            Button (action: {
                self.sheet = true
            }, label: {
                Text ("Action Sheet")
            })
            .actionSheet(isPresented: $sheet, content: {
                ActionSheet(title: Text ("iOS"), message: Text("Here we go"),
                                   buttons: [
                                    .default(Text("OK"), action: {}),
                                    .destructive(Text("NO"), action: {})
                                   ])
            })
            .tabItem({
                Image(systemName: "b.circle")
                Text("Alert")
                
            })
            
        }
        }
        ///
        
    
}

struct lesson2_Previews: PreviewProvider {
    static var previews: some View {
        lesson2()
    }
}

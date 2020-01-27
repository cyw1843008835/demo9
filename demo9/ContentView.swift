//
//  ContentView.swift
//  demo9
//
//  Created by yw c on 2020/01/26.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PostListViewModel()
   
    @State private var selectedStrength = [""]
    //var data: [String] = ["str1", "str2", "str3", "str4"]
    
    func array(){
       var data: [String] = []
      ForEach(model.posts) { post in
        var  vv: NSString = post.name
        data.append(vv)
    }
    }
    var body: some View {
        
//              List(model.posts) { post in
//                Text(String(post.name))
//                  }
        

//        Picker(selection: $selectedStrength, label: Text("picker")) {
//            ForEach(model.posts) { post in
//               Text(post.name)
//
//
//            }
//
//        }
       
         singlePicke(data: data, selectedStrength: $selectedStrength)
    }
}

struct singlePicke: View{
    let data: [String]
    @Binding var selectedStrength: [String]
    var body: some View{
        GeometryReader{Geometry in
              
            Picker("picker",selection:self.$selectedStrength[0]){
                ForEach(00..<self.data.count){raw in               Text(verbatim:self.data[raw]).tag(self.data[raw])
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

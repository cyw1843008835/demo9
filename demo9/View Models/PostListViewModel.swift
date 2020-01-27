//
//  PostListViewModel.swift
//  demo9
//
//  Created by yw c on 2020/01/26.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class PostListViewModel: ObservableObject {
    init() {
        fetchPosts()
    }
     
    @Published var posts = [Post]()
     
    private func fetchPosts() {
        Webservice().getAllPosts {
            self.posts = $0
        }
    }
}

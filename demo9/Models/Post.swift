//
//  Post.swift
//  demo9
//
//  Created by yw c on 2020/01/26.
//  Copyright © 2020 yw c. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Codable,Hashable,Identifiable{
    let id: Int
    let name: String
}

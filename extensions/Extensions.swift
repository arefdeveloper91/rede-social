//
//  File.swift
//  rede-social
//
//  Created by Aref Chucri on 16/09/24.
//

import UIKit

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}



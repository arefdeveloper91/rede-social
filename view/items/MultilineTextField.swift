//
//  MultilineTextField.swift
//  rede-social
//
//  Created by Aref Chucri on 12/09/24.
//

import SwiftUI


struct MultilineTextField: UIViewRepresentable {
    func makeCoordinator() -> MultilineTextField.Coordinator {
        return MultilineTextField.Coordinator(parent1: self)
    }
    
    
    @Binding var text: String
    
    
    
    func makeUIView (context: Context) -> some UITextView {
        let text =  UITextView()
        text.isEditable = true
        text.text = "type someting"
        text.isUserInteractionEnabled = true
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
        
        
        
    }
    func updateUIView(_ uiView: UIViewType, context: Context){
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultilineTextField
        
        init(parent1: MultilineTextField) {
            parent = parent1
        }
        func textViewDidEndEditing(_ textView: UITextView) {
            textView.text =  ""
            textView.textColor = .black
        }
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
    }
    
    
}

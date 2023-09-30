//
//  ImagePicker.swift
//  Instafilter
//
//  Created by Анна Перехрест  on 2023/09/30.
//

import Foundation
import PhotosUI
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = PHPickerViewController
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images

        let picker = PHPickerViewController(configuration: config)
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) { }
}

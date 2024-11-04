//
//  SigView.swift
//  Sig
//
//  Created by Randy McKown on 11/4/24.
//

import SwiftUI
import PencilKit

struct SignatureView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // no need to update here for a static sig canvas
    }
}

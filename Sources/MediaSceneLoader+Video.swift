//
//  MediaSceneLoader+Video.swift
//  MetalScope
//
//  Created by Jun Tanaka on 2017/01/20.
//  Copyright © 2017 eje Inc. All rights reserved.
//

#if (arch(arm) || arch(arm64)) && os(iOS)

import SceneKit
import AVFoundation

extension MediaSceneLoader {
    public func load(_ player: AVPlayer, format: MediaFormat) {
        let scene: VideoScene

        switch format {
        case .mono:
            scene = MonoSphericalVideoScene(device: device)
        case .stereoOverUnder:
            scene = StereoSphericalVideoScene(device: device)
        }

        scene.player = player

        self.scene = (scene as? SCNScene)
    }
}

#endif

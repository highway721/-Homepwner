//
//  ImageStore.swift
//  Homepwner
//
//  Created by Yusuke Tomatsu on 2020/03/07.
//  Copyright © 2020 Yusuke Tomatsu. All rights reserved.
//
import UIKit
class ImageStore {
    let cache = NSCache<NSString,UIImage>()

    func setImage(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }
    func image(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
    func deleteImage(forKey key: String) {
        cache.removeObject(forKey: key as NSString)
    }
}

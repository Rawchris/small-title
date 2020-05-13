//
//  ScrollViewController.swift
//  test
//
//  Created by Christoffer Mouritsen on 13/05/2020.
//  Copyright © 2020 ElevForslag. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    lazy var contentViewSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + 2100)
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .white
        view.frame = CGRect(x: self.view.bounds.minX, y: CGFloat(20.0), width: self.view.bounds.width, height: self.view.bounds.height)
        view.contentSize = contentViewSize
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.frame.size = contentViewSize
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
    }

}

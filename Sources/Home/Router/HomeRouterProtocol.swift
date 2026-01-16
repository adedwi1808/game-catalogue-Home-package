//
//  HomeRouterProtocol.swift
//  Home
//
//  Created by 2232 on 16/01/26.
//

import UIKit
import Core

public protocol HomeRouterProtocol {
    func makeDetailPage(for game: Game, from view: UIViewController)
}

//
//  HomeViewModel.swift
//  TimeTrackerApp
//
//  Created by Sevda Gul Baran on 24.09.2022.
//

import Foundation

protocol HomeViewModelInterface {
    var numberOfItemsInSection: Int { get }
    var taskList: [Task] { get set }
    
    func viewDidLoad()
    func viewWillAppear()
    func detailsButtonTapped()
    func moreButtonTapped()
    func seeAllButtonTapped()
}

final class HomeViewModel {
    private weak var delegate: HomeViewModelDelegate?
    private let storeManager: DataManipulationInterface
    
    init (delegate: HomeViewModelDelegate, storeManager: DataManipulationInterface = DataManipulation.shared) {
        self.delegate = delegate
        self.storeManager = storeManager
    }
}

extension HomeViewModel: HomeViewModelInterface {
    var numberOfItemsInSection: Int {
        taskList.count
    }
    var taskList: [Task] {
        get {
            storeManager.fetchTasks() ?? []
        }
        set {}
    }
    func viewDidLoad() {
        delegate?.setupUI()
        delegate?.tabbarConfig()
        delegate?.registerCollectionView()
    }
    func viewWillAppear() {
        delegate?.reloadData()
    }
    
    func detailsButtonTapped() {
        print("tapped")
    }
    
    func moreButtonTapped() {
        print("tapped")
    }
    
    func seeAllButtonTapped() {
        print("tapped")
    }
}

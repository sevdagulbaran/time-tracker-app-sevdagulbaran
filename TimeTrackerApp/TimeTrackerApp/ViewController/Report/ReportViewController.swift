//
//  ReportViewController.swift
//  TimeTrackerApp
//
//  Created by Sevda Gul Baran on 13.09.2022.
//

import UIKit

final class ReportViewController: UIViewController {
    
    @IBOutlet private weak var completedView: UIView!
    @IBOutlet private weak var completedTimeLabel: UILabel!
    @IBOutlet private weak var completedLabel: UILabel!
    @IBOutlet private weak var timeDurationView: UIView!
    @IBOutlet private weak var timeDurationLabel: UILabel!
    @IBOutlet private weak var timeDurationHourLabel: UILabel!
    @IBOutlet private weak var dayWeekSegmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

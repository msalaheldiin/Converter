//
//  RatesVC.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 07/24/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import UIKit

class RatesVC: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var amountTF: UITextField!{
        didSet {
            amountTF.keyboardType = .numberPad
            amountTF.delegate = self
        }
    }
    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var rateResultLbl: UILabel!
    
    // MARK: - Variabels
    
    lazy var viewModel = RatesViewModel()
    
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 0.1725490196, green: 0.3490196078, blue: 0.568627451, alpha: 1)
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1725490196, green: 0.3490196078, blue: 0.568627451, alpha: 1)

        setupViewModel()
        viewModel.getRates()
    }
    
    
    // MARK: - SetupViewModel
    
    func setupViewModel() {
        viewModel.showLoadingIndicator = { [weak self] in
            self?.activityIndicator.startAnimating()
        }
        
        viewModel.reloadcollectionView = { [weak self] in
            self?.collectionView.reloadData()
        }
        
        viewModel.hideLoadingIndicator = { [weak self] in
            self?.activityIndicator.startAnimating()
            self?.activityIndicator.isHidden = true
        }
    }
    
    
    //MARK: - Initialization
    
    class func initializeFromStoryboard() -> RatesVC {
        
        let storyboard = UIStoryboard(name: Storyboards.Rates, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: RatesVC.self)) as! RatesVC
    }
    
    private func reset(){
        currencyLabel.text = ""
        rateResultLbl.text = ""
    }
}


extension RatesVC: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if viewModel.selectedRate == nil {
            alert(title: Alerts.warning, message:Alerts.warningMessage)
        }
        currencyLabel.text = viewModel.selectedCurrency
        let currentString: NSString = textField.text! as NSString
        let amount: String = currentString.replacingCharacters(in: range, with: string)
        rateResultLbl.text = viewModel.claculteConvertedAmount(forAmount:amount)
        if amount.count == 0 {
            reset()
        }
        return true
    }
}

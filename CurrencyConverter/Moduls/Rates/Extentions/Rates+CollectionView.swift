//
//  Rates+CollectionView.swift
//  CurrencyConverter
//
//  Created by Mahmoud Salaheldin on 1/3/21.
//  Copyright © 2021 Mahmoud Salaheldin. All rights reserved.
//

import UIKit

// MARK: - setupCollectionView

extension RatesVC {
    
    func setupCollectionView() {
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}


// MARK: - CollectionViewDataSource

extension RatesVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let rateCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: RatesCell.self), for: indexPath) as! RatesCell
        
        let itemCurrency = viewModel.itemCurrency(atIndex: indexPath.row)
        let itemRate = viewModel.itemRate(atIndex: indexPath.row)
        rateCell.configureRateCell(itemCurrency: itemCurrency, itemRate: itemRate)
        
        return rateCell
    }
}


// MARK: - CollectionViewDelegate

extension RatesVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         viewModel.selectedRate = viewModel.itemRate(atIndex: indexPath.row)
         viewModel.selectedCurrency = viewModel.itemCurrency(atIndex: indexPath.row)
    }
}


//
//  CollectionViewItemDataSource.swift
//


import Foundation
import UIKit

protocol CollectionViewItemDataSource: AnyObject {
    var numberOfItems: Int { get }
    func itemCell(collView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
    func didSelect(collView: UICollectionView, indexPath: IndexPath)
    func didDeSelect(collView: UICollectionView, indexPath: IndexPath)
    func willDisplay(collView: UICollectionView,cell:UICollectionViewCell , indexPath: IndexPath)
    func didEndDisplaying(collView: UICollectionView, cell: UICollectionViewCell, indexPath: IndexPath)
    func itemCellSize(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    func insetForSectionAt(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, section: Int) -> UIEdgeInsets
}

extension CollectionViewItemDataSource{
    func willDisplay(collView: UICollectionView,cell:UICollectionViewCell , indexPath: IndexPath){
        
    }
    
    func didEndDisplaying(collView: UICollectionView, cell: UICollectionViewCell, indexPath: IndexPath) {
        
    }
    
    func itemCellSize(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 0, height: 0)
    }
    
    func insetForSectionAt(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func didDeSelect(collView: UICollectionView, indexPath: IndexPath){
        
    }
}

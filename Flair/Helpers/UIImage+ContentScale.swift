//
//  UIImage+ContentScale.swift
//  Flair
//
//  Created by Apprenant154 on 13/08/2026.
//

import UIKit

extension UIImage {
        /// Calcule automatiquement un facteur de zoom à partir de la zone
        /// réellement visible de l'image.
        ///
        /// L'algorithme :
        /// 1. Convertit l'image en bitmap RGBA.
        /// 2. Parcourt le canal alpha de chaque pixel.
        /// 3. Détermine le rectangle occupé par les pixels visibles.
        /// 4. Compare ce rectangle avec la taille complète de l'image.
        /// 5. Transforme les marges détectées en facteur de zoom.
        ///
        /// Une image qui occupe entièrement son canvas retourne `1`.
        /// Une image contenant des marges transparentes retourne une
        /// valeur supérieure à `1`.
    var visibleContentScale: CGFloat {
        guard let cgImage else {
            return 1
        }
        
            // Dimensions réelles de l'image, exprimées en pixels.
        let width = cgImage.width
        let height = cgImage.height
        
            // Format choisi : RGBA avec 8 bits par composante.
            //
            // Un pixel contient donc :
            // - 1 octet rouge
            // - 1 octet vert
            // - 1 octet bleu
            // - 1 octet alpha
        let bytesPerPixel = 4
        let bytesPerRow = width * bytesPerPixel
        
            // Allocation du tableau qui recevra tous les pixels.
            //
            // Taille totale :
            // hauteur × nombre d'octets par ligne.
        var pixels = [UInt8](
            repeating: 0,
            count: height * bytesPerRow
        )
        
            // Dessine le CGImage dans notre tableau de pixels.
        let imageWasDrawn = pixels.withUnsafeMutableBytes { buffer in
            guard let context = CGContext(
                data: buffer.baseAddress,
                width: width,
                height: height,
                bitsPerComponent: 8,
                bytesPerRow: bytesPerRow,
                space: CGColorSpaceCreateDeviceRGB(),
                bitmapInfo:
                    CGImageAlphaInfo.premultipliedLast.rawValue |
                CGBitmapInfo.byteOrder32Big.rawValue
            ) else {
                return false
            }
            
            context.draw(
                cgImage,
                in: CGRect(
                    x: 0,
                    y: 0,
                    width: width,
                    height: height
                )
            )
            
            return true
        }
        
        guard imageWasDrawn else {
            return 1
        }
        
            // Coordonnées du rectangle contenant les pixels visibles.
        var minimumX = width
        var minimumY = height
        var maximumX = -1
        var maximumY = -1
        
        let bytesPerComponent = 1
        let alphaComponentPosition = 3
        
            // Valeur comprise entre 0 et 255.
            //
            // 0   = totalement transparent
            // 255 = totalement opaque
            //
            // Le seuil de 8 permet d'ignorer les pixels presque invisibles
            // produits par l'anticrénelage autour du personnage.
        let minimumVisibleAlpha: UInt8 = 8
        
            // Analyse de tous les pixels de l'image.
        pixels.withUnsafeBytes { buffer in
            guard let bytes = buffer.baseAddress?
                .assumingMemoryBound(to: UInt8.self) else {
                return
            }
            
            for y in 0..<height {
                for x in 0..<width {
                        // Position du pixel dans le tableau.
                    let pixelIndex =
                    y * bytesPerRow +
                    x * bytesPerPixel
                    
                        // Le canal alpha est le quatrième composant RGBA.
                    let alphaIndex =
                    pixelIndex +
                    alphaComponentPosition * bytesPerComponent
                    
                    if bytes[alphaIndex] > minimumVisibleAlpha {
                        minimumX = min(minimumX, x)
                        minimumY = min(minimumY, y)
                        maximumX = max(maximumX, x)
                        maximumY = max(maximumY, y)
                    }
                }
            }
        }
        
            // Si aucun pixel visible n'a été trouvé, l'image est vide.
        guard maximumX >= minimumX,
              maximumY >= minimumY else {
            return 1
        }
        
            // Dimensions de la zone réellement visible.
            //
            // Le +1 vient du fait que les bornes sont inclusives :
            // de 0 à 9, il y a bien 10 pixels.
        let contentWidth =
        maximumX - minimumX + 1
        
        let contentHeight =
        maximumY - minimumY + 1
        
            // Compare le canvas complet avec le contenu visible.
        let horizontalScale =
        CGFloat(width) / CGFloat(contentWidth)
        
        let verticalScale =
        CGFloat(height) / CGFloat(contentHeight)
        
            // On conserve l'axe qui nécessite la correction la plus forte.
        let paddingScale = max(
            horizontalScale,
            verticalScale
        )
        
            // Ces deux valeurs sont des choix de design propres à Flair.
        let zoomStrength: CGFloat = 2.8
        let maximumZoom: CGFloat = 1.8
        
            // Amplifie uniquement la partie supérieure à 1.
            //
            // Si paddingScale vaut 1 :
            // 1 + (1 - 1) × 2,8 = 1
            //
            // L'image reste donc strictement inchangée.
        let amplifiedScale =
        1 + (paddingScale - 1) * zoomStrength
        
        return min(amplifiedScale, maximumZoom)
    }
}
    
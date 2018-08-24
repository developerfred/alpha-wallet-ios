// Copyright © 2018 Stormbird PTE. LTD.

import Foundation
import UIKit

struct SetSellTokensCardExpiryDateViewControllerViewModel {

    var token: TokenObject
    var ticketHolder: TokenHolder
    var ethCost: Ether = .zero

    var headerTitle: String {
		return R.string.localizable.aWalletTicketTokenSellEnterLinkExpiryDateTitle()
    }

    var backgroundColor: UIColor {
        return Colors.appBackground
    }

    var buttonTitleColor: UIColor {
        return Colors.appWhite
    }

    var buttonBackgroundColor: UIColor {
        return Colors.appHighlightGreen
    }

    var buttonFont: UIFont {
        return Fonts.regular(size: 20)!
    }

    var choiceLabelColor: UIColor {
        return Colors.appGrayLabelColor
    }

    var choiceLabelFont: UIFont {
        return Fonts.regular(size: 10)!
    }

    var linkExpiryDateLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellLinkExpiryDateTitle()
    }

    var linkExpiryTimeLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellLinkExpiryTimeTitle()
    }

    var ticketSaleDetailsLabelFont: UIFont {
        return Fonts.semibold(size: 21)!
    }

    var ticketSaleDetailsLabelColor: UIColor {
        return Colors.appBackground
    }

    var descriptionLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellMagicLinkDescriptionTitle()
    }

    var descriptionLabelFont: UIFont {
        return Fonts.light(size: 21)!
    }

    var descriptionLabelColor: UIColor {
        return Colors.appText
    }

    var ticketCountLabelText: String {
        if ticketCount == 1 {
            return R.string.localizable.aWalletTicketTokenSellSingleTicketSelectedTitle()
        } else {
            return R.string.localizable.aWalletTicketTokenSellMultipleTicketSelectedTitle(ticketHolder.count)
        }
    }

    var perTicketPriceLabelText: String {
        let amount = ethCost / ticketCount
        return R.string.localizable.aWalletTicketTokenSellPerTicketEthPriceTitle(String(amount))
    }

    var totalEthLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellTotalEthPriceTitle(String(ethCost))
    }

    var noteTitleLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellNoteTitleLabelTitle()
    }

    var noteTitleLabelFont: UIFont {
        return Fonts.semibold(size: 21)!
    }

    var noteTitleLabelColor: UIColor {
        return Colors.appRed
    }

    var noteLabelText: String {
        return R.string.localizable.aWalletTicketTokenSellNoteLabelTitle()
    }

    var noteLabelFont: UIFont {
        return Fonts.light(size: 21)!
    }

    var noteLabelColor: UIColor {
        return Colors.appRed
    }

    var noteBorderColor: UIColor {
        return Colors.appRed
    }

    private var ticketCount: Int {
        return ticketHolder.count
    }

    init(token: TokenObject, ticketHolder: TokenHolder, ethCost: Ether) {
        self.token = token
        self.ticketHolder = ticketHolder
        self.ethCost = ethCost
    }
}
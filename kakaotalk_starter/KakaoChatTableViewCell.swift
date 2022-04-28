//
//  KakaoChatTableViewCell.swift
//  OSJ
//


import UIKit

class KakaoChatTableViewCell: UITableViewCell {
    @IBOutlet weak var senderImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    @IBOutlet weak var lastSentDateLAael: UILabel!
    /*
     TODO: senderImageView, nameLabel, lastMessageLabel, lastSentDateLabel를 만들어서 outlet으로 추가해주세요.
     */
   


    func configure(message: Message) {
        /*
         TODO: Cell이 생성되는 시점에서 메세지를 불러 렌더링해주세요
         
         예를들어..
         senderImageView.image = message.senderImage
         */
        nameLabel.text = message.senderName
        nameLabel.sizeToFit()
        lastMessageLabel.text = message.lastMessage
        lastMessageLabel.sizeToFit()
        lastSentDateLAael.text = message.lastSentDate
        lastSentDateLAael.sizeToFit()
        senderImageView.image = message.senderImage

    }
}

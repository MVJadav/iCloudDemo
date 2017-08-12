//
//  ViewController.swift
//  iCloudDemo
//
//  Created by MVJadav NewMac on 8/9/17.
//  Copyright © 2017 MVJadav NewMac. All rights reserved.
//

import UIKit
let kUTTypeText = "public.text"
let kUTTypeContent = "public.content"
let kUTTypePDF = "com.adobe.pdf"
let kUTTypeImage = "public.image"
let kUTTypeMovie = "public.movie"
let kUTTypeQuickTimeMovie = "com.apple.quicktime-movie "
let kUTTypeVideo = "public.video"
let kUTTypePlainText = "public.plain-text "
let kUTTypeMP3 = "public.mp3"
let kUTTypeKeyNote = "com.apple.keynote.key"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//MARK: Action Method
extension ViewController: UIDocumentPickerDelegate {
    
    @IBAction func btnClickCloud(_ sender: UIButton) {
        
//        let documentPickerController = UIDocumentPickerViewController(documentTypes: [kUTTypeText, kUTTypeContent, kUTTypePDF, kUTTypeImage, kUTTypeMovie, kUTTypeQuickTimeMovie, kUTTypeVideo, kUTTypePlainText, kUTTypeMP3, kUTTypeKeyNote], in: .import)
//        let documentPickerController = UIDocumentPickerViewController(documentTypes: ["public.image", "public.audio", "public.movie", "public.text", "public.item", "public.content", "public.source-code"], in: .import)
//        let documentPickerController = UIDocumentPickerViewController(documentTypes: ["com.apple.iwork.pages.pages", "com.apple.iwork.numbers.numbers", "com.apple.iwork.keynote.key", "public.image", "public.content", "com.pkware.zip-archive", kUTTypePDF, kUTTypeMP3], in: .import)
        let documentPickerController = UIDocumentPickerViewController(documentTypes: ["com.apple.iwork.pages.pages", "com.apple.iwork.numbers.numbers", "com.apple.iwork.keynote.key", "public.image", "public.content", "com.pkware.zip-archive", kUTTypePDF, kUTTypeMP3], in: .import)

        documentPickerController.delegate = self
        
        documentPickerController.modalPresentationStyle = .formSheet
        present(documentPickerController, animated: true, completion: nil)
        
    }
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        print(url)
    }

}

import { Router } from "express";



let textbuttoms = [
    { "title": "Money" },
    { "title": "Bitcoin" },
    { "title": "Stock Market" },
    { "title": "House Market" },
    { "title": "Diamond Hands" },
]

let blogcontentdata = [
    { "title": "How to get rich", "image": "images/image1.png", },
    { "title": "Should you buy today", "image": "images/image2.png", },
    { "title": "Stock market", "image": "images/image3.png", },
    { "title": "How to make apps", "image": "images/image4.png", },
]


const router = Router()


router.get('/titlebutoms', (req, res) => {
    res.json(textbuttoms)
});


router.get('/blogcontent', (req, res) => {
    res.json(blogcontentdata)
});


export default router
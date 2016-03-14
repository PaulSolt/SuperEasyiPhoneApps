# 1.0 Lesson - Auto Layout for Beginners #

Paul Solt - [Paul@SuperEasyApps.com](mailto:Paul@SuperEasyApps.com)
[SuperEasyApps.com](http://SuperEasyApps.com)

-----

* [1.0 Lesson - Auto Layout for Beginners](LINK)

## 1.1 Lecture - Auto Layout for Beginners ##

Auto Layout is a way of describing the rules of your apps UI to your iPhone. Auto Layout enables your UI to adapt to the different sizes and orientations that your iPhone (or iPad) app might be in.

## 1.2 Tutorial - How to Design Button Graphics in Sketch ##

You can use any image editor tool to create artwork for your iPhone apps, or you can buy UI designs online, or hire a graphic designer. I prefer to use Sketch because it allows me to quickly export art assets in the required sizes for iPhone apps.

1. A normal system button on iPhone has a height around 30 points tall
	1. On iPhone 6S+ with a 3x scale that is 90 pixels tall
	2. On iPhone 6S with a 2x scale that is 60 pixels tall
2. iPad buttons might be 15-25% bigger than iPhone buttons

## 1.3 Tutorial - How to Import New Buttons Background Images Into Xcode ##

1. Add images to the Asset Catalog by drag-and-drop
2. Import Xcode project images into the Asset Catalog
3. Add Slicing to Resizable Images

## 1.4 Tutorial - How to Create Custom Buttons in Xcode ##

A default button in Xcode is going to be a text button. You can customize it so that there is a background image and non-standard size.

1. Create a new button
2. Change the type to Custom
3. Change any font or color attributes
4. Set both a Default and Highlighted background image

## 1.5 Tutorial - How to Align Content Using Stack Views ##

The Stack View is a new addition to iPhone UI that helps you layout content vertically or horizontally. It helps reduce the amount of layout constraints you need to specify for similar content. 

## 1.6 Tutorial - How to Create Background Images and Layers ##

You can arrange the views and UI controls in your iPhone app. The Document Outline will show you the order of the views that you adjust via drag-and-drop.

1. The topmost views (layer) is at the bottom of the subview list
2. Painters algorithm means the first view (top of subview list) is drawn first until the last view
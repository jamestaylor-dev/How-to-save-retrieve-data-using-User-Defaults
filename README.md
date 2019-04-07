# How-to-save-retrieve-data-using-User-Defaults

How to save & retrieve data using User Defaults || Swift 5

User Defaults is the easiest and quickest way to persist data on your iOS app. However, User Defaults is not meant to be used to store large amounts of data as it is simply just a plist file which is loaded from memory every time your app is launched. If you use User Defaults as the primary method of storing data the performance of your app will be affected, this will significantly affect user experience, which will result in 1 star ratings on the App Store!

The source code provided is an example of using User Defaults to persist a name and number. Once the text fields have been completed, the save button pressed and the app terminated, note how the data is still there when you re-run your app.

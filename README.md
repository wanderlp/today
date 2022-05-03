# Today App

### Notes

1. View controllers act as bridge between views and your data models. Each view controller is responsible for managing a view hierarchy, updating the content in views, and responding to events in the user interface.

2. The initial view controller value determines which view controller loads when the app loads the storyboard.

3. Apps may have multiple storyboards. The Main Interface setting in the app's project file determines which storyboard the app loads when it launches.

4. The `#if DEBUG` flag is a compilation directive that prevents the enclosed code from compiling when you build the app for release. You can use this flag for testing code in debug builds - or for providing sample test data.

5. Type aliases are helpful for referring to an existing type with a name that's more expressive.

6. Use implicitly unwrapped optionals only when you know that the optional will have a value. Otherwise, you risk triggering a runtime error that inmediately terminates the app. (ie: `var dataSource: DataSource!`)

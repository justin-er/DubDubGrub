# Pass Data - SessionData to Service to View Model
Resource: [https://stackoverflow.com/questions/59491675/swiftui-how-to-pass-environmentobject-into-view-model]()

## Goal

The goal is:

1. On onAppear of a view, being able to pass some data to a service.
2. Call a method on service and receive result.
3. Update view model with the result.

## Notes
I don't think that's a very good idea, because here view is getting result from the service and then updates view model to get the updates. That works but not very nice to my view.
On the other hand passing view model to service is not a good idea at all. Service should not be aware of view models.

## Next step
Continue reading the above link for other people suggestions.

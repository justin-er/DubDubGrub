#  MVP
## Goal
Here I want to use a pattern that has interactor, presenter and view layers.

## Likely Challenges
- Dependency injections
- Building the view

## Building the view
Since the environment objects are passed after the view constructor is called, we won't be able to use the them during init phase.
So calling an init like below will raise error:

    struct MVPChildView: View {
        @Environment(MVPViewModel.self) private var viewModel
        let interactor: MVPInteractor
        
        init(viewModel: MVPViewModel) {
            self._viewModel = Environment(viewModel)
            self.interactor = MVPInteractorBuilder.build(viewModel: self.viewModel)
        }
    ...


### Solution #1
This solution devides a view into two views. Ther first one will receive the environment object and pass it as an init parameter to the next one.

I would say, not a great idea due to large amount boiler plate code for each view.

    struct FirstScreen: View {
      @Environment(\.fooService) var fooService

      var body: some View {
        content
          .sheet(...) {
            SecondScreen(
              // 1) Here we DO have access to environment
              fooService: fooService
            )
          }
      }
    }

    struct SecondScreen: View {
      // 3) @Environment(\.fooService) var fooService
      @StateObject var viewModel: ViewModel

      init(fooService: FooService) {
        // 2) The ObservableObject initialisation is encapsulated here
        self._viewModel = .init(
          // 4) the autoclosure initializer needs to be used
          wrappedValue: .init(fooService: fooService)
        )
      }
    }

### Solution #2
Configuring 

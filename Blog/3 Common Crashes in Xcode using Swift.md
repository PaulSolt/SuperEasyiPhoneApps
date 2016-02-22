As you work with your first iPhone app you will inevitably run into different crashes. The three most common crashes are what every beginner encounters. If you know what to look for, you can avoid these in the future.

Two of the crashes are real crashes and one is because you clicked and mistakenly added a breakpoint, which is used for finding bugs.

Here are the three crashes and how to fix them: 

1. **Breakpoint Crash**
	
	* Problem: `Thread 1: breakpoint 1.1`
	* Why: You clicked in the gutter left of your code and added a blue flag.
	* Solution: Delete or disable the breakpoint (blue flag) from the code gutter.
	
2. **Storyboard IBOutlet Crash**

	* Problem: `Thread 1: signal SIGABRT`
	* Console:
			
			Terminating app due to uncaught exception 'NSUnknownKeyException', reason: '[<ViewController 0x7fbd74a090d0> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key spellingMistakee.'

	* Why: You deleted an Outlet/Action connection in code or renamed it (i.e. spelling mistake).
	* Solution: Right-click on the UI element and remove the old Outlet/Action connection mentioned as the `key` in the top of the Console output.
 
3. **Nil Optional Crash**

	* Problem: `Thread 1: EXC_BAD_INSTRUCTION`
	* Console: 
			
			fatal error: unexpectedly found nil while unwrapping an Optional value
			
	* Why: You removed a UIView IBOutlet connection and then used the IBOutlet variable in code. The variable has no value until you reconnect it to the UI element.
	* Solution: Right-click and drag from the UI element to the IBOutlet property that Xcode stopped at with the `EXC_BAD_INSTRUCTION`. 
#Future Tip Calculator lesson

Hide the keyboard
Use the return key on the keyboard
Respond to keyboard input and recalculate



#Size Classes in-depth debugging

Basic: You can remove changes to a size class by going through each view and constraint one by one

#In-depth reset: Code

### Reseting a Size Class ###
To reset a size class is non-trivial, you will need to open the Storyboard file in code, and remove any non-default `<variation>` blocks with constraints and with subviews that were added that you don't want. Don't do this without backing up your project with version control or a copy. 

	<variation key="heightClass=compact-widthClass=compact">

Switch back to "show as" Interface Builder file and then edit your `Any x Any` or other size classes to fix any problems.


http://stackoverflow.com/questions/25712266/reset-a-size-class-i-e-compact-w-compact-h-to-any-w-any-w-on-xcode-6


                        <variation key="default">
                            <mask key="constraints">
                                <exclude reference="Vi8-xu-NZc"/>
                                <exclude reference="cKj-qC-bI9"/>
                            </mask>
                        </variation>
                        <variation key="heightClass=compact-widthClass=compact">
                            <mask key="constraints">
                                <include reference="JnT-th-jny"/>
                                <include reference="Vi8-xu-NZc"/>
                                <exclude reference="aZK-pW-enn"/>
                                <exclude reference="cKj-qC-bI9"/>
                            </mask>
                        </variation>
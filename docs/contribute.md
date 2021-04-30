# How to Contribute

The contributions should be fun, so I give you freedom and only set very few rules for aesthetics and consistency.


## Code

If your edito does not support [EditorConfig](https://editorconfig.org/#pre-installed), please consider using the convention defined in the `.editorconfig` file:
- For `Makefile` only use tabs to indent
- For all other files (including the `.md` and `.sh`) use 4 spaces instead of tabs
- For all files, make sure there is an empty newline as the last line of the file.


## Documentation

- Please use `-` for bullet points and 4 spaces instead of tabs for indentation
- Please be descriptive
- If you name a software, make sure you add the link to that software's webpage or github repo


## Examples and Actions

To create an example image:

1. Open the `assets/img/template.ora` (it is in OpenRaster format) in a raster image editing application (e.g [Krita](https://krita.org/), [Pinta](https://www.pinta-project.com/))
2. Create a transparent layer with the name of the action you are creating an example for
3. Put the image editor in 100% zoom level
4. Use the `dmenu_shot` function you want to make example for on the top part of the image (make sure you are completely selecting the entire picture with it's white background)
5. Paste the screenshot to the new layer you created at step 2
6. Move the image you pasted down until it gets very close to the bottom border
7. Save the file
8. To keep the checkerboard pattern, use the trim function of `dmenu_shot` and select the whole canvas (it is better to select larger area as the `dmenu_shot` will trim the extra space)
9. Create a new file and paste the screenshot in it
10. Save the image you created in step 9 as PNG.

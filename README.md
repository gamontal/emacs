# emacs-config
This is my emacs configuration.

## To load emacs with my configuration:
```
$ runemacs -q -l [.EMACSPATH]
```

- You can also drop the file in your HOME directory and it should automatically load.

## MELPA Package Archive 

To use the MELPA repository, you'll need an Emacs with package.el. Emacs 24 has package.el bundled with it.

In order for the projectile and auto-complete packages to work you need to add the MELPA repository to your settings. Keep in mind that there are various ways to this. Visit http://melpa.org/#/getting-started for more information.

**Adding the MELPA repo to emacs package archive list**

Step 1:

```
M-x customize-group -> Customize group (default emacs): package
```
Step 2:

Select the Package Archives option and add the following link: http://melpa.org/packages/. Remember to save your changes for future sessions. 

![ScreenShot](https://raw.github.com/gmontalvo5416/emacs-config/master/img1.png)


Then just use M-x list-packages to browse and install packages from MELPA and elsewhere.

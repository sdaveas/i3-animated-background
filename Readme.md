## tl;dr

Set gifs as background in [i3wm](https://wiki.archlinux.org/index.php/I3).

Run:
```sh
$ ./generate_pngs.sh ~/my_gif.gif
```
and then:
```sh
$ ~/loop_pngs.sh ~/my_gif
```

![](animated-background.gif)

# Intro

Backgrounds are lovely whether they are gray-scale or rainbow-colored, minimal
or exuberant, low quality or 4K, static or $dynamic$.

-- $dynamic$ you say?!
-- Aye!S

# Animated-background

This is a teeny tiny collection of scripts that allows you to set a gif as a
background. To my knowledge it works fine in
[i3](https://wiki.archlinux.org/index.php/I3) using Xorg. You will have to
install some basic programs to make use of it, although you will probably have
them already installed in your system. There are:

1. [imagemagick](https://imagemagick.org/index.php) - for convert
2. [feh](https://feh.finalrewind.org/) - for setting background

Now, let's make it move!
![](scott.gif)

## Find a gif

Go ahead and find a gif. You'd appreciate a gif good quality one. I have
included some I found around at
[/gifs](https://github.com/sdaveas/animated-background/tree/master/gifs).
Moving on!

## Set it as background

### Clone it

Business as usual:
```
$ git clone https://github.com/sdaveas/animated-background
$ cd animated-background/scripts # (optional)
```

### Chop it

First, execute:
```sh
$ ~/path-to-repo/generate_pngs.sh ~/path-to-gif/awesome.gif
```

This will create a folder under the name `awesome` in the directory from which
you executed `./generate_pngs.sh`. In this case, the folder is at `~/awesome`.
You can do this from anywhere of course, or move it later.

### Loop it

Now that you have all images in a single directory, run:
```
$ ~/path-to-repo/loop_pngs.sh ~/awesome
```
Your background should now be _awesome_ (dot gif).

### Let it run silently

If you want to have the animated background to run at, well, the background -
no pun intended - you can run it as such: ```sh $ ~/path-to-repo/loop_pngs.sh
~/awesome & $ disown && exit ```

If you want to run it when i3 boots up, then you will have to create a script
file that contains the following

# Notes

## Refresh rate

You can optionally change the default refresh rate of by giving a second
argument at `loop_png.sh` like such:


```
$ ./loop_pngs.sh ~/Desktop/forest 0.05
```
This will force the gif to update every 0.05 seconds. The default value os 0.1 seconds.

## Resources

Bear in mind that using animated background can be computationally intensive,
especially when at frequent refresh! Personally, 0.1 sec refresh rate is OK for
my laptop, but you maybe want to adjust this.

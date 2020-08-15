## tl;dr
Set gifs as background in i3wm!

# Intro
Backgrounds are lovely whether they are gray-scale or rainbow-collored, minimal or exuberant, low quality or 4K, static or dynamic.
- Dynamic you say?!
- Aye!

# Animated-background
This is a teeny tiny collection of scripts that allows you to set a gif as a background.

## Find a gif
Go ahead and find a gif. You'd appreciate a gif good quality one. I have included some I found around at `/gifs`. Movind on!

## Set it as background

### Clone it
Clone the repo as usual:
```
$ git clone https://github.com/sdaveas/animated-background
$ cd animated-background/scripts
```

### Chop it
First, execute
```sh
$ ~/path-to-repo/generate_pngs.sh ~/path-to-gif/awesome.gif
```

This will create a folder under the name `awesome` in the directory from which
you executed `./generate_pngs.sh`. In this case, the folder is at `~/awesome`.
You can do this from anywhere of course, of move it later.

### Loop it
Now that you have all images in a single directory, run
```
$ ~/path-to-repo/loop_pngs.sh ~/awesome
```

Your background should have now be _awesome_.

# Notes

## Refresh rate
You can optionally change the default refresh rate of by giving a second argument at `loop_png.sh` like such:

```
$ ./loop_pngs.sh ~/Desktop/forest 0.05
```
This will force the gif to update every 0.05 seconds. The default value os 0.1 seconds.

## Resources
Bear in mind that using animated background can be computationally intensive, especially when at frequent refresh! Personally, 0.1 sec refresh rate is OK for my laptop, but you maybe want to adjust this.

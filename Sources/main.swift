let colors: [ANSIColor] = [
	.Black, .Red, .Green, .Yellow, .Blue, .Magenta, .Cyan, .White
]
let styles: [ANSIStyle] = [
	.Reset, .Bold, .Italic, .Underline, .Blink, .Inverse, .Strikethrough
]

for color in colors {
	print("\n\(color)".textColor(color).backgroundColor(color))
	print("Text".textColor(color))
	print("Background".backgroundColor(color))
	for style in styles {
		print("\(style)".textColor(color).style(style))
	}
}

print("\nThis " + "line ".textColor(.Yellow) + "is " + "mixed".backgroundColor(.Blue))

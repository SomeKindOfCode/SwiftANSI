public enum ANSIColor {
	case Black, Red, Green, Yellow, Blue, Magenta, Cyan, White

	var code: Int {
		switch self {
			case .Black:
				return 30
			case .Red:
				return 31
			case .Green:
				return 32
			case .Yellow:
				return 33
			case .Blue:
				return 34
			case .Magenta:
				return 35
			case .Cyan:
				return 36
			case .White:
				return 37
		}
	}
}

public enum ANSIStyle {
	case Reset, Bold, Italic, Underline, Blink, Inverse, Strikethrough

	var code: Int {
		switch self {
			case .Reset:
				return 0
			case .Bold:
				return 1
			case .Italic:
				return 3
			case .Underline:
				return 4
			case .Blink:
				return 5
			case .Inverse:
				return 7
			case .Strikethrough:
				return 9
		}
	}
}

public enum ANSI {
	case TextColor(color:ANSIColor)
	case BackgroundColor(color: ANSIColor)
	case Style(style: ANSIStyle)

	var escapeCode: String {
		var code = ANSIStyle.Reset.code

		switch self {
			case .TextColor(let color):
				code = color.code
			case .BackgroundColor(let color):
				code = color.code + 10
			case .Style(let style):
				code = style.code
		}

		return "\u{001B}[\(code)m"
	}
}

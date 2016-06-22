import Foundation

public extension String {
	func ansi(_ ansi: ANSI) -> String {
		let reset = ANSI.Style(style: .Reset).escapeCode
		return "\(ansi.escapeCode)\(self)\(reset)"
	}

	public func textColor(_ color: ANSIColor) -> String {
		return self.ansi(.TextColor(color: color))
	}

	public func backgroundColor(_ color: ANSIColor) -> String {
		return self.ansi(.BackgroundColor(color: color))
	}

	public func style(_ style: ANSIStyle) -> String {
		return self.ansi(.Style(style: style))
	}
}

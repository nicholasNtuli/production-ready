import SwiftUI

enum AppTheme {
    // MARK: - Colors
    enum Colors {
        static let background = Color(
            red: 0.035,
            green: 0.045,
            blue: 0.075
        )

        static let surface = Color(
            red: 0.075,
            green: 0.085,
            blue: 0.125
        )

        static let surfaceSecondary = Color(
            red: 0.10,
            green: 0.11,
            blue: 0.16
        )

        static let primary = Color(
            red: 0.55,
            green: 0.30,
            blue: 1.0
        )

        static let secondary = Color(
            red: 0.15,
            green: 0.55,
            blue: 1.0
        )

        static let success = Color.green
        static let warning = Color.orange
        static let danger = Color.red
        static let textPrimary = Color.white
        static let textSecondary = Color.white.opacity(0.65)
        static let textTertiary = Color.white.opacity(0.4)
    }

    // MARK: - Gradients
    enum Gradients {
        static let primary = LinearGradient(
            colors: [
                Colors.primary,
                Colors.secondary
            ],
            startPoint: .leading,
            endPoint: .trailing
        )

        static let background = LinearGradient(
            colors: [
                Colors.background,
                Color(
                    red: 0.06,
                    green: 0.035,
                    blue: 0.12
                )
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }

    // MARK: - Layout
    enum Spacing {
        static let xs: CGFloat = 4
        static let sm: CGFloat = 8
        static let md: CGFloat = 12
        static let lg: CGFloat = 16
        static let xl: CGFloat = 24
        static let xxl: CGFloat = 32
        static let xxxl: CGFloat = 40
    }

    // MARK: - Radius
    enum Radius {
        static let small: CGFloat = 10
        static let medium: CGFloat = 14
        static let large: CGFloat = 20
        static let extraLarge: CGFloat = 28
    }
}

import SwiftUI

struct GlassCard<Content: View>: View {
    private let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        content
            .padding(AppTheme.Spacing.lg)
            .background {
                RoundedRectangle(
                    cornerRadius: AppTheme.Radius.large,
                    style: .continuous
                )
                .fill(
                    AppTheme.Colors.surface
                        .opacity(0.85)
                )
                .overlay {
                    
                    RoundedRectangle(
                        cornerRadius: AppTheme.Radius.large,
                        style: .continuous
                    )
                    .stroke(
                        Color.white.opacity(0.08),
                        lineWidth: 1
                    )
                }
            }
    }
}

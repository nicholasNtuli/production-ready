import SwiftUI

struct PrimaryButton: View {
    let title: String
    let systemImage: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(
                spacing: AppTheme.Spacing.sm
            ) {
                
                Image(systemName: systemImage)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 15)
            .background {
                
                RoundedRectangle(
                    cornerRadius: AppTheme.Radius.medium,
                    style: .continuous
                )
                .fill(
                    AppTheme.Gradients.primary
                )
            }
        }
        .buttonStyle(.plain)
    }
}

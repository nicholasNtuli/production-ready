import SwiftUI

struct Home: View {

    var body: some View {

        ZStack {

            AppTheme.Gradients.background
                .ignoresSafeArea()

            VStack(
                alignment: .leading,
                spacing: AppTheme.Spacing.xl
            ) {

                Spacer()

                VStack(
                    alignment: .leading,
                    spacing: AppTheme.Spacing.sm
                ) {

                    Image(systemName: "curlybraces")
                        .font(.system(size: 44))
                        .foregroundStyle(
                            AppTheme.Gradients.primary
                        )

                    Text("Production Ready?")
                        .font(
                            .system(
                                size: 36,
                                weight: .bold,
                                design: .rounded
                            )
                        )
                        .foregroundStyle(.white)

                    Text(
                        "Would you ship this?"
                    )
                    .font(.title3)
                    .foregroundStyle(
                        AppTheme.Colors.textSecondary
                    )

                    Text(
                        "Paste your code and find out."
                    )
                    .foregroundStyle(
                        AppTheme.Colors.textTertiary
                    )
                }

                GlassCard {

                    VStack(
                        alignment: .leading,
                        spacing: AppTheme.Spacing.md
                    ) {

                        HStack {

                            Text("Swift")

                            Spacer()

                            Image(
                                systemName:
                                    "chevron.down"
                            )
                        }
                        .font(.caption)
                        .foregroundStyle(
                            AppTheme.Colors.textSecondary
                        )

                        Text(
                            """
                            struct UserService {
                                
                                func fetchUser() async {
                                    // Your code here...
                                }
                            }
                            """
                        )
                        .font(
                            .system(
                                .body,
                                design: .monospaced
                            )
                        )
                        .foregroundStyle(
                            AppTheme.Colors.textPrimary
                        )
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )
                    }
                }

                PrimaryButton(
                    title: "Analyze Code",
                    systemImage: "magnifyingglass"
                ) {
                    print("Analyze tapped")
                }

                Spacer()
            }
            .padding(
                .horizontal,
                AppTheme.Spacing.xl
            )
        }
    }
}

#Preview {
    Home()
}

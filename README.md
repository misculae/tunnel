# TUNNEL

Flutter Android app scaffold for authorized VPN connections.

## Current status

- Initial Android-friendly Flutter UI.
- Explicit disconnected / not-configured state.
- Codemagic workflow builds a debug APK.
- No VPN tunnel is active in this scaffold yet.

## Build with Codemagic

1. Sign in to Codemagic.
2. Choose **Add application** and connect the GitHub repository `misculae/tunnel`.
3. Select the Flutter project.
4. Ensure the `codemagic.yaml` workflow is detected.
5. Start the `TUNNEL Android APK` workflow.
6. Download the APK from the build artifacts after a successful build.

A real VPN connection requires a VPN server and a profile you are authorized to use. This app does not bypass captive portals, network authentication, or paid access controls.

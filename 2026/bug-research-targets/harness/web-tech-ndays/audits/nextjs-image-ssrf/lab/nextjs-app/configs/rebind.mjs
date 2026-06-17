/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  images: {
    remotePatterns: [
      { hostname: 'rebind.attacker.local' }
    ]
  }
}
export default nextConfig

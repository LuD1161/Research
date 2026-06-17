/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  images: {
    remotePatterns: [
      { hostname: '*.attacker.local' }
    ]
  }
}
export default nextConfig

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  images: {
    remotePatterns: [
      { hostname: '10.99.0.10' }
    ]
  }
}
export default nextConfig

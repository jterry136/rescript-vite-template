import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import createReScriptPlugin from "@jihchi/vite-plugin-rescript"
import tailwindcss from 'tailwindcss'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react(), createReScriptPlugin()],
  css: {
    postcss: {
      plugins: [
        tailwindcss
      ]
    }
  },
  define: {
    'process.env': {}
  }
})

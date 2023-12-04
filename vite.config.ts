import { fileURLToPath, URL } from 'node:url'
import assemblyScriptPlugin from "vite-plugin-assemblyscript-asc"

import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vite'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    assemblyScriptPlugin()
  ],
  base: "/minesweeper-ai",
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  build: {
    rollupOptions: {
    },
    outDir: 'docs',
    assetsDir: '.'
  },
})
